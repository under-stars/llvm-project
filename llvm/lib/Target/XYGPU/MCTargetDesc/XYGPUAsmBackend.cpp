//===-- XYGPUAsmBackend.cpp - XYGPU Assembler Backend ---------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/XYGPUFixupKinds.h"
#include "MCTargetDesc/XYGPUMCTargetDesc.h"
#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCELFObjectWriter.h"
#include "llvm/MC/MCAssembler.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCFixupKindInfo.h"
#include "llvm/MC/MCObjectWriter.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/EndianStream.h"
#include "llvm/TargetParser/TargetParser.h"

namespace llvm {
class XYGPUAsmBackend : public MCAsmBackend {
private:
  bool Is64Bit = true;
  bool HasRelocationAddend = false;
  uint8_t OSABI = ELF::ELFOSABI_NONE;

public:
  XYGPUAsmBackend() : MCAsmBackend(llvm::endianness::little) {}
  ~XYGPUAsmBackend() override = default;

  const MCFixupKindInfo & getFixupKindInfo(MCFixupKind Kind) const override;
  void applyFixup(const MCAssembler &Asm, const MCFixup &Fixup,
                  const MCValue &Target, MutableArrayRef<char> Data,
                  uint64_t Value, bool IsResolved,
                  const MCSubtargetInfo *STI) const override;
  unsigned getNumFixupKinds() const override {
    return XYGPU::NumTargetFixupKinds;
  }
  bool fixupNeedsRelaxation(const MCFixup &Fixup,
                            uint64_t Value) const override {
    llvm_unreachable("Handled by fixupNeedsRelaxationAdvanced");
  }
  bool writeNopData(raw_ostream &OS, uint64_t Count,
                    const MCSubtargetInfo *STI) const override;
  std::unique_ptr<MCObjectTargetWriter>
  createObjectTargetWriter() const override;
};


const MCFixupKindInfo &
XYGPUAsmBackend::getFixupKindInfo(MCFixupKind Kind) const {
  static const unsigned PCRelFlagVal = MCFixupKindInfo::FKF_IsPCRel;
  const static MCFixupKindInfo Infos[] = {
      // This table *must* be in the order that the fixup_* kinds are defined in
      // XYGPUFixupKinds.h.
      //
      // name             offset bits  flags
      {"fixup_xygpu_abs16", 32, 16, 0},
      {"fixup_xygpu_abs24", 40, 24, 0},
      {"fixup_xygpu_abs32", 32, 32, 0},
      {"fixup_xygpu_abs32_hi", 32, 32, 0},
      {"fixup_xygpu_abs32_lo", 32, 32, 0},
      {"fixup_xygpu_abs64", 0, 64, 0},
      {"fixup_xygpu_pcrel16", 32, 16, PCRelFlagVal},
      {"fixup_xygpu_pcrel24", 40, 24, PCRelFlagVal},
      {"fixup_xygpu_pcrel32", 32, 32, PCRelFlagVal},
      {"fixup_xygpu_pcrel50", 0, 50, PCRelFlagVal},
      {"fixup_xygpu_pcrel64", 0, 64, PCRelFlagVal},
      {"fixup_xygpu_shared16", 32, 16, 0},
      {"fixup_xygpu_shared24", 40, 24, 0},
      {"fixup_xygpu_shared32", 32, 32, 0},
      {"fixup_xygpu_const16", 32, 16, 0},
      {"fixup_xygpu_const24", 32, 16, 0},
      {"fixup_xygpu_gotpcrel", 0, 32, 0},
      {"fixup_xygpu_gotcall", 0, 32, 0},
      {"fixup_xygpu_call", 0, 50, PCRelFlagVal},
      {"fixup_xygpu_branch", 0, 50, PCRelFlagVal},
  };
  static_assert((std::size(Infos)) == XYGPU::NumTargetFixupKinds,
                "Not all fixup kinds added to Infos array");

  // Fixup kinds from .reloc directive are like R_XYGPU_NONE. They
  // do not require any extra processing.
  if (Kind >= FirstLiteralRelocationKind)
    return MCAsmBackend::getFixupKindInfo(FK_NONE);

  if (Kind < FirstTargetFixupKind)
    return MCAsmBackend::getFixupKindInfo(Kind);

  assert(unsigned(Kind - FirstTargetFixupKind) < getNumFixupKinds() &&
         "Invalid kind!");
  return Infos[Kind - FirstTargetFixupKind];
}

static uint64_t adjustFixupValue(const MCFixup &Fixup, uint64_t Value,
                                 MCContext &Ctx);

void XYGPUAsmBackend::applyFixup(const MCAssembler &Asm, const MCFixup &Fixup,
                                 const MCValue &Target, MutableArrayRef<char> Data,
                                 uint64_t Value, bool IsResolved,
                                 const MCSubtargetInfo *STI) const {
  MCFixupKind Kind = Fixup.getKind();
  if (Kind >= FirstLiteralRelocationKind)
    return;
  MCContext &Ctx = Asm.getContext();
  MCFixupKindInfo Info = getFixupKindInfo(Kind);
  if (!Value)
    return; // Doesn't change encoding.
  // Apply any target-specific value adjustments.
  Value = adjustFixupValue(Fixup, Value, Ctx);

  // Shift the value into position.
  Value <<= Info.TargetOffset;

  unsigned Offset = Fixup.getOffset();
  unsigned NumBytes = alignTo(Info.TargetSize + Info.TargetOffset, 8) / 8;

  assert(Offset + NumBytes <= Data.size() && "Invalid fixup offset!");

  // For each byte of the fragment that the fixup touches, mask in the
  // bits from the fixup value.
  uint64_t TargetMask = 1;
  TargetMask = (TargetMask << Info.TargetSize) - 1;
  for (unsigned i = 0; i != NumBytes; ++i) {
    Data[Offset + i] |= uint8_t((Value >> (i * 8)) & ((TargetMask >> i * 8) & 0xff));
  }
}

bool XYGPUAsmBackend::writeNopData(raw_ostream &OS, uint64_t Count,
                                   const MCSubtargetInfo *STI) const {
  return true;
}

std::unique_ptr<MCObjectTargetWriter>
XYGPUAsmBackend::createObjectTargetWriter() const {
  return createXYGPUELFObjectWriter(Is64Bit, OSABI, HasRelocationAddend);
}

MCAsmBackend *createXYGPUAsmBackend(const Target &T, const MCSubtargetInfo &STI,
                                    const MCRegisterInfo &MRI,
                                    const MCTargetOptions &) {
  return new XYGPUAsmBackend();
}

static uint64_t adjustFixupValue(const MCFixup &Fixup, uint64_t Value,
                                 MCContext &Ctx) {
  switch (Fixup.getTargetKind()) {
  default:
    llvm_unreachable("Unknown fixup kind!");
  case FK_Data_1:
  case FK_Data_2:
  case FK_Data_4:
  case FK_Data_8:
  case XYGPU::fixup_xygpu_abs16:
  case XYGPU::fixup_xygpu_abs24:
  case XYGPU::fixup_xygpu_abs32:
  case XYGPU::fixup_xygpu_abs32_lo:
  case XYGPU::fixup_xygpu_abs64:
  case XYGPU::fixup_xygpu_shared16:
  case XYGPU::fixup_xygpu_shared24:
  case XYGPU::fixup_xygpu_shared32:
  case XYGPU::fixup_xygpu_const16:
  case XYGPU::fixup_xygpu_const24:
    return Value;
  case XYGPU::fixup_xygpu_abs32_hi:
    return Value >> 32;
  case XYGPU::fixup_xygpu_pcrel50:
  case XYGPU::fixup_xygpu_branch:
  case XYGPU::fixup_xygpu_call:
    // Because fixup has 4 bytes offset,
    // it should add 4 bytes in address caculation.
    return  (Value + 0x4 - 0x10) >> 4;
  case XYGPU::fixup_xygpu_pcrel16:
  case XYGPU::fixup_xygpu_pcrel24:
  case XYGPU::fixup_xygpu_pcrel32:
  case XYGPU::fixup_xygpu_pcrel64:
    return Value;
  }
}

} // end namespace llvm