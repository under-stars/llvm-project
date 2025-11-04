//===-- XYGPURegisterInfo.h - XYGPU Register Information --------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the XYGPU implementation of the TargetRegisterInfo class.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_XYGPUREGISTERINFO_H
#define LLVM_LIB_TARGET_XYGPU_XYGPUREGISTERINFO_H

#define GET_REGINFO_HEADER
#include "XYGPUGenRegisterInfo.inc"

namespace llvm {
class XYGPURegisterInfo : public XYGPUGenRegisterInfo {
public:
  XYGPURegisterInfo();

  BitVector getReservedRegs(const MachineFunction &MF) const override;

  const MCPhysReg *getCalleeSavedRegs(const MachineFunction *MF) const override;

  Register getFrameRegister(const MachineFunction &MF) const override;

  bool eliminateFrameIndex(MachineBasicBlock::iterator II, int SPAdj,
                           unsigned FIOperandNum,
                           RegScavenger *RS = nullptr) const override;
};

} // end namespace llvm

#endif