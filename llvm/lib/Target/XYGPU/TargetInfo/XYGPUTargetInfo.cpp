//===-- XYGPUTargetInfo.cpp - XYGPU Target Implementation -----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "TargetInfo/XYGPUTargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
using namespace llvm;

Target &llvm::getTheXYGPUTarget() {
  static Target TheXYGPUTarget;
  return TheXYGPUTarget;
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeXYGPUTargetInfo() {
  RegisterTarget<Triple::xygpu> X(getTheXYGPUTarget(), "xygpu", "XingYun GPUs",
                                  "XYGPU");
}
