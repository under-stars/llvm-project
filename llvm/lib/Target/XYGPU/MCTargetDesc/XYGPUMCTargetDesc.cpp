//===-- XYGPUMCTargetDesc.cpp - XYGPU Target Descriptions -----------------===//
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

#include "XYGPUMCTargetDesc.h"
#include "TargetInfo/XYGPUTargetInfo.h"
#include "XYGPUDefines.h"
#include "XYGPUInstPrinter.h"
#include "XYGPUMCAsmInfo.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/TargetRegistry.h"

using namespace llvm;

#define GET_SUBTARGETINFO_MC_DESC
#include "XYGPUGenSubtargetInfo.inc"

#define GET_REGINFO_MC_DESC
#include "XYGPUGenRegisterInfo.inc"

#define GET_INSTRINFO_MC_DESC
#include "XYGPUGenInstrInfo.inc"

static MCSubtargetInfo *
createXYGPUMCSubtargetInfo(const Triple &TT, StringRef GPU, StringRef FS) {
  return createXYGPUMCSubtargetInfoImpl(TT, GPU, /*TuneCPU*/ GPU, FS);
}

static MCRegisterInfo *createXYGPUMCRegisterInfo(const Triple &TT) {
  MCRegisterInfo *X = new MCRegisterInfo();
  InitXYGPUMCRegisterInfo(X, XYGPU::NoRegister);
  return X;
}

static MCInstrInfo *createXYGPUMCInstrInfo() {
  MCInstrInfo *X = new MCInstrInfo();
  InitXYGPUMCInstrInfo(X);
  return X;
}

static MCAsmInfo *createXYGPUMCAsmInfo(const MCRegisterInfo &MRI,
                                       const Triple &TT,
                                       const MCTargetOptions &Options) {
  MCAsmInfo *MAI = new XYGPUMCAsmInfo(TT);
  return MAI;
}

static MCInstPrinter *createXYGPUMCInstPrinter(const Triple &T,
                                               unsigned SyntaxVariant,
                                               const MCAsmInfo &MAI,
                                               const MCInstrInfo &MII,
                                               const MCRegisterInfo &MRI) {
  return new XYGPUInstPrinter(MAI, MII, MRI);
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeXYGPUTargetMC() {
  for (Target *T : {&getTheXYGPUTarget()}) {
    TargetRegistry::RegisterMCSubtargetInfo(*T, createXYGPUMCSubtargetInfo);
    TargetRegistry::RegisterMCRegInfo(*T, createXYGPUMCRegisterInfo);
    TargetRegistry::RegisterMCInstrInfo(*T, createXYGPUMCInstrInfo);
    TargetRegistry::RegisterMCAsmInfo(*T, createXYGPUMCAsmInfo);
    TargetRegistry::RegisterMCInstPrinter(*T, createXYGPUMCInstPrinter);
    TargetRegistry::RegisterMCAsmBackend(*T, createXYGPUAsmBackend);
    TargetRegistry::RegisterMCCodeEmitter(*T, createXYGPUMCCodeEmitter);
  }
}