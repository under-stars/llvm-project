//===-- XYGPUInstrInfo.h - XYGPU Instruction Information --------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the XYGPU implementation of the TargetInstrInfo class.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_XYGPUINSTRINFO_H
#define LLVM_LIB_TARGET_XYGPU_XYGPUINSTRINFO_H

#include "Utils/XYGPUBaseInfo.h"
#include "llvm/CodeGen/TargetInstrInfo.h"

#define GET_INSTRINFO_HEADER
#include "XYGPUGenInstrInfo.inc"

namespace llvm {

class XYGPUSubtarget;

class XYGPUInstrInfo : public XYGPUGenInstrInfo {

public:
  explicit XYGPUInstrInfo(XYGPUSubtarget &STI);
};

} // end namespace llvm

#endif