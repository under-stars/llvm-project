//===-- XYGPUSubtarget.cpp - XYGPU Subtarget Information ------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the XYGPU specific subclass of TargetSubtargetInfo.
//
//===----------------------------------------------------------------------===//

#include "XYGPUSubtarget.h"
#include "XYGPUISelLowering.h"

using namespace llvm;

#define DEBUG_TYPE "xygpu-subtarget"

#define GET_SUBTARGETINFO_TARGET_DESC
#define GET_SUBTARGETINFO_CTOR
#include "XYGPUGenSubtargetInfo.inc"

void XYGPUSubtarget::anchor() {}

XYGPUSubtarget &
XYGPUSubtarget::initializeSubtargetDependencies(StringRef GPU, StringRef FS,
                                                const TargetMachine &TM) {
  ParseSubtargetFeatures(GPU, /*TuneCPU*/ GPU, FS);

  return *this;
}

XYGPUSubtarget::XYGPUSubtarget(const Triple &TT, StringRef GPU,
                               StringRef FS, const TargetMachine &TM)
    : XYGPUGenSubtargetInfo(TT, GPU, /*TuneCPU*/ GPU, FS),
      RegInfo(), TLInfo(TM, *this) {}
