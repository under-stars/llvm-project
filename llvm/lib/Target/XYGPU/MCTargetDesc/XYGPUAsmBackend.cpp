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

namespace llvm {
class XYGPUAsmBackend : public MCAsmBackend {
private:
  bool Is64Bit = true;
  bool HasRelocationAddend = false;
  uint8_t OSABI = ELF::ELFOSABI_NONE;

public:
  XYGPUAsmBackend() : MCAsmBackend(llvm::endianness::little) {}
  ~XYGPUAsmBackend() override = default;

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

void XYGPUAsmBackend::applyFixup(const MCAssembler &Asm, const MCFixup &Fixup,
                                 const MCValue &Target,
                                 MutableArrayRef<char> Data, uint64_t Value,
                                 bool IsResolved,
                                 const MCSubtargetInfo *STI) const {}

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

} // end namespace llvm