//===-- XYGPUTargetMachine.h - Define TargetMachine for XYGPU -------------===//
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

#ifndef LLVM_LIB_TARGET_XYGPU_XYGPUTARGETMACHINE_H
#define LLVM_LIB_TARGET_XYGPU_XYGPUTARGETMACHINE_H

#include "XYGPUSubtarget.h"
#include "llvm/CodeGen/SelectionDAGTargetInfo.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/CodeGen/CodeGenTargetMachineImpl.h"
#include <optional>

namespace llvm {
class XYGPUTargetMachine : public CodeGenTargetMachineImpl {
  XYGPUSubtarget Subtarget;

public:
  XYGPUTargetMachine(const Target &T, const Triple &TT, StringRef CPU,
                     StringRef FS, const TargetOptions &Options,
                     std::optional<Reloc::Model> RM,
                     std::optional<CodeModel::Model> CM, CodeGenOptLevel OL,
                     bool JIT);
  const XYGPUSubtarget *getSubtargetImpl(const Function &F) const override {
    return &Subtarget;
  }
};
} // namespace llvm

#endif // LLVM_LIB_TARGET_XYGPU_XYGPUTARGETMACHINE_H
