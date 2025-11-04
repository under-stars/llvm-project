//===-- XYGPUELFObjectWriter.cpp - XYGPU ELF Writer -----------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/MC/MCELFObjectWriter.h"
#include "MCTargetDesc/XYGPUFixupKinds.h"

namespace llvm {
class XYGPUELFObjectWriter : public MCELFObjectTargetWriter {
public:
  XYGPUELFObjectWriter(bool Is64Bit, uint8_t OSABI, bool HasRelocationAddend);

  ~XYGPUELFObjectWriter() override = default;

protected:
  unsigned getRelocType(MCContext &Ctx, const MCValue &Target,
                        const MCFixup &Fixup, bool IsPCRel) const override;
};

XYGPUELFObjectWriter::XYGPUELFObjectWriter(bool Is64Bit, uint8_t OSABI,
                                           bool HasRelocationAddend)
    : MCELFObjectTargetWriter(Is64Bit, OSABI, ELF::EM_XYGPU,
                              HasRelocationAddend) {}

unsigned XYGPUELFObjectWriter::getRelocType(MCContext &Ctx,
                                            const MCValue &Target,
                                            const MCFixup &Fixup,
                                            bool IsPCRel) const {
  unsigned Kind = Fixup.getKind();
  if (Kind >= FirstLiteralRelocationKind)
    return Kind - FirstLiteralRelocationKind;
  switch(Kind) {
  default:
    return ELF::R_XYGPU_NONE;
  case FK_Data_1:
  case FK_Data_2:
  case FK_Data_4:
  case FK_Data_8:
    return ELF::R_XYGPU_ABS64;
  case XYGPU::fixup_xygpu_abs16:
    return ELF::R_XYGPU_ABS16;
  case XYGPU::fixup_xygpu_abs24: //TODO new reloc type?
  case XYGPU::fixup_xygpu_abs32:
    return ELF::R_XYGPU_ABS32;
  case XYGPU::fixup_xygpu_abs32_hi:
    return ELF::R_XYGPU_ABS32_HI;
  case XYGPU::fixup_xygpu_abs32_lo:
    return ELF::R_XYGPU_ABS32_LO;
  case XYGPU::fixup_xygpu_abs64:
    return ELF::R_XYGPU_ABS64;
  case XYGPU::fixup_xygpu_pcrel16:
    return ELF::R_XYGPU_PCREL_LO_16;
  case XYGPU::fixup_xygpu_pcrel24:  //TODO new reloc type?
    return ELF::R_XYGPU_PCREL_LO_24;
  case XYGPU::fixup_xygpu_pcrel32:
    return ELF::R_XYGPU_PCREL_LO_32;
  case XYGPU::fixup_xygpu_pcrel64:
    return ELF::R_XYGPU_RELATIVE;
  case XYGPU::fixup_xygpu_gotpcrel:
    return ELF::R_XYGPU_PCREL_GOT_LO_24;
  case XYGPU::fixup_xygpu_gotcall:
    return ELF::R_XYGPU_PCREL_GOT_LO_24;
  case XYGPU::fixup_xygpu_shared16:
    return ELF::R_XYGPU_SHARED_16;
  case XYGPU::fixup_xygpu_shared24:
    return ELF::R_XYGPU_SHARED_24;
  case XYGPU::fixup_xygpu_shared32:
    return ELF::R_XYGPU_SHARED_32;
  case XYGPU::fixup_xygpu_const16:
    return ELF::R_XYGPU_CONST_16;
  case XYGPU::fixup_xygpu_const24:
    return ELF::R_XYGPU_CONST_24;
  case XYGPU::fixup_xygpu_call:
    return ELF::R_XYGPU_JUMP;
  case XYGPU::fixup_xygpu_branch:
    return ELF::R_XYGPU_JUMP;
  }
}

std::unique_ptr<MCObjectTargetWriter>
createXYGPUELFObjectWriter(bool Is64Bit, uint8_t OSABI,
                           bool HasRelocationAddend) {
  return std::make_unique<XYGPUELFObjectWriter>(Is64Bit, OSABI,
                                                HasRelocationAddend);
}

} // end namespace llvm
