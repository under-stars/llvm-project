//===-- XYGPUMCTargetDesc.h - XYGPU Target Descriptions -------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// This file provides XYGPU specific target descriptions.
///
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_MCTARGETDESC_XYGPUMCTARGETDESC_H
#define LLVM_LIB_TARGET_XYGPU_MCTARGETDESC_XYGPUMCTARGETDESC_H

#include <memory>

namespace llvm {
class MCAsmBackend;
class MCCodeEmitter;
class MCContext;
class MCInstrInfo;
class MCObjectTargetWriter;
class MCRegisterInfo;
class MCSubtargetInfo;
class MCTargetOptions;
class Target;

MCCodeEmitter *createXYGPUMCCodeEmitter(const MCInstrInfo &MCII,
                                        MCContext &Ctx);

MCAsmBackend *createXYGPUAsmBackend(const Target &T, const MCSubtargetInfo &STI,
                                    const MCRegisterInfo &MRI,
                                    const MCTargetOptions &Options);

std::unique_ptr<MCObjectTargetWriter>
createXYGPUELFObjectWriter(bool Is64Bit, uint8_t OSABI,
                           bool HasRelocationAddend);
} // end namespace llvm

#define GET_REGINFO_ENUM
#include "XYGPUGenRegisterInfo.inc"

#define GET_INSTRINFO_ENUM
#include "XYGPUGenInstrInfo.inc"

#define GET_SUBTARGETINFO_ENUM
#include "XYGPUGenSubtargetInfo.inc"

#endif // LLVM_LIB_TARGET_XYGPU_MCTARGETDESC_XYGPUMCTARGETDESC_H
