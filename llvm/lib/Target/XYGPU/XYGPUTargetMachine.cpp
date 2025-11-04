//===-- XYGPUTargetMachine.cpp - Define TargetMachine for XYGPU -----------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Implements the info about XYGPU target spec.
//
//===----------------------------------------------------------------------===//

#include "llvm/MC/TargetRegistry.h"
#include "TargetInfo/XYGPUTargetInfo.h"
#include "XYGPUTargetMachine.h"
using namespace llvm;

XYGPUTargetMachine::XYGPUTargetMachine(const Target &T, const Triple &TT,
                                       StringRef CPU, StringRef FS,
                                       const TargetOptions &Options,
                                       std::optional<Reloc::Model> RM,
                                       std::optional<CodeModel::Model> CM,
                                       CodeGenOptLevel OL, bool JIT)
    : CodeGenTargetMachineImpl(T, "e-i64:64-i128:128-v16:16-v32:32-n16:32:64", TT, CPU, FS, Options,
                        Reloc::Static,
                        CodeModel::Small, OL), Subtarget(TT, CPU, FS, *this) {

}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeXYGPUTarget() {
    RegisterTargetMachine<XYGPUTargetMachine> X(getTheXYGPUTarget());
}
