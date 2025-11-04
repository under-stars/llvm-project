//===-- XYGPUMCCodeEmitter.cpp - Convert XYGPU code to machine code -------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the XYGPUMCCodeEmitter class.
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/XYGPUMCTargetDesc.h"
#include "llvm/ADT/APInt.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCFixup.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/Support/EndianStream.h"

using namespace llvm;

#define DEBUG_TYPE "mccodeemitter"

namespace {
class XYGPUMCCodeEmitter : public MCCodeEmitter {
private:
  const MCRegisterInfo &MRI;
  const MCInstrInfo &MCII;

public:
  XYGPUMCCodeEmitter(const MCInstrInfo &MCII, const MCRegisterInfo &MRI)
      : MRI(MRI), MCII(MCII) {}

  /// Encode the given MI to bytes and append to CB.
  void encodeInstruction(const MCInst &MI, SmallVectorImpl<char> &CB,
                         SmallVectorImpl<MCFixup> &Fixups,
                         const MCSubtargetInfo &STI) const override;
  void getMachineOpValue(const MCInst &MI, const MCOperand &MO, APInt &Op,
                         SmallVectorImpl<MCFixup> &Fixups,
                         const MCSubtargetInfo &STI) const;

  /// TableGen'erated function for getting the binary encoding for an
  /// instruction.
  void getBinaryCodeForInstr(const MCInst &MI, SmallVectorImpl<MCFixup> &Fixups,
                             APInt &Inst, APInt &Scratch,
                             const MCSubtargetInfo &STI) const;
};

void XYGPUMCCodeEmitter::encodeInstruction(const MCInst &MI,
                                           SmallVectorImpl<char> &CB,
                                           SmallVectorImpl<MCFixup> &Fixups,
                                           const MCSubtargetInfo &STI) const {
  unsigned Opcode = MI.getOpcode();
  const MCInstrDesc &Desc = MCII.get(Opcode);
  unsigned bytes = Desc.getSize();
  assert(bytes == 16);
  APInt Encoding(16, 0);
  APInt Scratch(16, 0);
  getBinaryCodeForInstr(MI, Fixups, Encoding, Scratch, STI);
  for (unsigned i = 0; i < bytes; i++) {
    CB.push_back((uint8_t)Encoding.extractBitsAsZExtValue(8, 8 * i));
  }
}

void XYGPUMCCodeEmitter::getMachineOpValue(const MCInst &MI,
                                           const MCOperand &MO, APInt &Op,
                                           SmallVectorImpl<MCFixup> &Fixups,
                                           const MCSubtargetInfo &STI) const {
  if (MO.isReg()) {
    Op = MRI.getEncodingValue(MO.getReg());
    return;
  }
  if (MO.isImm()) {
    Op = MO.getImm();
    return;
  }
  llvm_unreachable("Invalid operand type to encode.");
}

} // end anonymous namespace

MCCodeEmitter *llvm::createXYGPUMCCodeEmitter(const MCInstrInfo &MCII,
                                              MCContext &Ctx) {
  return new XYGPUMCCodeEmitter(MCII, *Ctx.getRegisterInfo());
}

#include "XYGPUGenMCCodeEmitter.inc"