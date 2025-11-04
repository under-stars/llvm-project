//===-- XYGPUELFObjectWriter.cpp - XYGPU ELF Writer -----------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/MC/MCELFObjectWriter.h"

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
  return ELF::R_XYGPU_NONE;
}

std::unique_ptr<MCObjectTargetWriter>
createXYGPUELFObjectWriter(bool Is64Bit, uint8_t OSABI,
                           bool HasRelocationAddend) {
  return std::make_unique<XYGPUELFObjectWriter>(Is64Bit, OSABI,
                                                HasRelocationAddend);
}

} // end namespace llvm