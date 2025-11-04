//===-- XYGPUISelLowering.h - XYGPU DAG Lowering Interface ----*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file defines the interfaces that XYGPU uses to lower LLVM code into a
// selection DAG.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_XYGPUISELLOWERING_H
#define LLVM_LIB_TARGET_XYGPU_XYGPUISELLOWERING_H

#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/CodeGen/TargetLowering.h"

namespace llvm {
  class XYGPUTargetLowering : public TargetLowering {
  public:
    explicit XYGPUTargetLowering(const TargetMachine &TM,
                                  const XYGPUSubtarget &STI);

  };
} // namespace llvm

#endif
