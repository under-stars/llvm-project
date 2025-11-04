//===-- XYGPUDisassembler.cpp - Disassembler for XYGPU --------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the XYGPUDisassembler class.
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/XYGPUMCTargetDesc.h"
#include "TargetInfo/XYGPUTargetInfo.h"
#include "llvm/ADT/APInt.h"
#include "llvm/MC/MCDecoderOps.h"
#include "llvm/MC/MCDisassembler/MCDisassembler.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/EndianStream.h"

using namespace llvm;

#define DEBUG_TYPE "xygpu-disassembler"

using DecodeStatus = llvm::MCDisassembler::DecodeStatus;

namespace {

class DecoderUInt128 {
private:
  uint64_t Lo = 0;
  uint64_t Hi = 0;

public:
  DecoderUInt128() = default;
  DecoderUInt128(uint64_t Lo, uint64_t Hi = 0) : Lo(Lo), Hi(Hi) {}
  operator bool() const { return Lo || Hi; }
  void insertBits(uint64_t SubBits, unsigned BitPosition, unsigned NumBits) {
    assert(NumBits && NumBits <= 64);
    assert(SubBits >> 1 >> (NumBits - 1) == 0);
    assert(BitPosition < 128);
    if (BitPosition < 64) {
      Lo |= SubBits << BitPosition;
      Hi |= SubBits >> 1 >> (63 - BitPosition);
    } else {
      Hi |= SubBits << (BitPosition - 64);
    }
  }
  uint64_t extractBitsAsZExtValue(unsigned NumBits,
                                  unsigned BitPosition) const {
    assert(NumBits && NumBits <= 64);
    assert(BitPosition < 128);
    uint64_t Val;
    if (BitPosition < 64)
      Val = Lo >> BitPosition | Hi << 1 << (63 - BitPosition);
    else
      Val = Hi >> (BitPosition - 64);
    return Val & ((uint64_t(2) << (NumBits - 1)) - 1);
  }
  DecoderUInt128 operator&(const DecoderUInt128 &RHS) const {
    return DecoderUInt128(Lo & RHS.Lo, Hi & RHS.Hi);
  }
  DecoderUInt128 operator&(const uint64_t &RHS) const {
    return *this & DecoderUInt128(RHS);
  }
  DecoderUInt128 operator~() const { return DecoderUInt128(~Lo, ~Hi); }
  bool operator==(const DecoderUInt128 &RHS) {
    return Lo == RHS.Lo && Hi == RHS.Hi;
  }
  bool operator!=(const DecoderUInt128 &RHS) {
    return Lo != RHS.Lo || Hi != RHS.Hi;
  }
  bool operator!=(const int &RHS) { return *this != DecoderUInt128(RHS); }
};

class XYGPUDisassembler : public MCDisassembler {
public:
  XYGPUDisassembler(const MCSubtargetInfo &STI, MCContext &Ctx)
      : MCDisassembler(STI, Ctx) {}

  DecodeStatus getInstruction(MCInst &MI, uint64_t &Size,
                              ArrayRef<uint8_t> Bytes, uint64_t Address,
                              raw_ostream &CS) const override;
};

} // end anonymous namespace

static DecodeStatus DecodeRegRCRegisterClass(MCInst &Inst, uint32_t RegNo,
                                             uint64_t Address,
                                             const MCDisassembler *Decoder) {
  if (RegNo >= 256)
    return MCDisassembler::Fail;

  MCRegister Reg = XYGPU::R0 + RegNo;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodeRegDRCRegisterClass(MCInst &Inst, uint32_t RegNo,
                                              uint64_t Address,
                                              const MCDisassembler *Decoder) {
  if (RegNo >= 256 || (RegNo & 0b1))
    return MCDisassembler::Fail;

  MCRegister Reg = XYGPU::R0_D + RegNo / 2;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodeRegQRCRegisterClass(MCInst &Inst, uint32_t RegNo,
                                              uint64_t Address,
                                              const MCDisassembler *Decoder) {
  if (RegNo >= 256 || (RegNo & 0b11))
    return MCDisassembler::Fail;

  MCRegister Reg = XYGPU::R0_Q + RegNo / 4;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodeURegRCRegisterClass(MCInst &Inst, uint32_t RegNo,
                                              uint64_t Address,
                                              const MCDisassembler *Decoder) {
  if (RegNo >= 64)
    return MCDisassembler::Fail;

  MCRegister Reg = XYGPU::UR0 + RegNo;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodeURegDRCRegisterClass(MCInst &Inst, uint32_t RegNo,
                                               uint64_t Address,
                                               const MCDisassembler *Decoder) {
  if (RegNo >= 64 || (RegNo & 0b1))
    return MCDisassembler::Fail;

  MCRegister Reg = XYGPU::UR0_D + RegNo / 2;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodePredRCRegisterClass(MCInst &Inst, uint32_t RegNo,
                                              uint64_t Address,
                                              const MCDisassembler *Decoder) {
  if (RegNo >= 8)
    return MCDisassembler::Fail;

  MCRegister Reg = XYGPU::P0 + RegNo;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodeUPredRCRegisterClass(MCInst &Inst, uint32_t RegNo,
                                               uint64_t Address,
                                               const MCDisassembler *Decoder) {
  if (RegNo >= 8)
    return MCDisassembler::Fail;

  MCRegister Reg = XYGPU::UP0 + RegNo;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodeBRegRCRegisterClass(MCInst &Inst, uint32_t RegNo,
                                              uint64_t Address,
                                              const MCDisassembler *Decoder) {
  if (RegNo >= 16)
    return MCDisassembler::Fail;

  MCRegister Reg = XYGPU::B0 + RegNo;
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

#include "XYGPUGenDisassemblerTables.inc"

static inline DecoderUInt128 eat16Bytes(ArrayRef<uint8_t> &Bytes) {
  assert(Bytes.size() >= 16);
  uint64_t Lo =
      support::endian::read<uint64_t, llvm::endianness::little>(Bytes.data());
  Bytes = Bytes.slice(8);
  uint64_t Hi =
      support::endian::read<uint64_t, llvm::endianness::little>(Bytes.data());
  Bytes = Bytes.slice(8);
  return DecoderUInt128(Lo, Hi);
}

DecodeStatus XYGPUDisassembler::getInstruction(MCInst &MI, uint64_t &Size,
                                               ArrayRef<uint8_t> Bytes,
                                               uint64_t Address,
                                               raw_ostream &CS) const {
  DecodeStatus Result;

  Size = 16;
  DecoderUInt128 Insn = eat16Bytes(Bytes);

  auto tryToDecodeInstr = [&](const uint8_t *Table) -> DecodeStatus {
    Result = decodeInstruction(Table, MI, Insn, Address, this, STI);
    return Result;
  };

  if (tryToDecodeInstr(DecoderTable128))
    return Result;

  Size = 0;
  return MCDisassembler::Fail;
}

//===----------------------------------------------------------------------===//
// Initialization
//===----------------------------------------------------------------------===//

static MCDisassembler *createXYGPUDisassembler(const Target &T,
                                               const MCSubtargetInfo &STI,
                                               MCContext &Ctx) {
  return new XYGPUDisassembler(STI, Ctx);
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeXYGPUDisassembler() {
  // Register the disassembler for each target.
  TargetRegistry::RegisterMCDisassembler(getTheXYGPUTarget(),
                                         createXYGPUDisassembler);
}
