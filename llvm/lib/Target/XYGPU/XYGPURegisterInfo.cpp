//===-- XYGPURegisterInfo.cpp - XYGPU Register Information ------*- C++ -*-===//
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

#include "XYGPURegisterInfo.h"
#include "MCTargetDesc/XYGPUMCTargetDesc.h"
#include "XYGPUSubtarget.h"

#define GET_REGINFO_TARGET_DESC
#include "XYGPUGenRegisterInfo.inc"

using namespace llvm;

XYGPURegisterInfo::XYGPURegisterInfo()
    : XYGPUGenRegisterInfo(XYGPU::NoRegister) {}

BitVector XYGPURegisterInfo::getReservedRegs(const MachineFunction &MF) const {
  BitVector Reserved(getNumRegs());
  Reserved.set(XYGPU::R255);
  return Reserved;
}

const MCPhysReg *
XYGPURegisterInfo::getCalleeSavedRegs(const MachineFunction *MF) const {
  static const MCPhysReg NoCalleeSavedReg = XYGPU::NoRegister;
  return &NoCalleeSavedReg;
}

Register XYGPURegisterInfo::getFrameRegister(const MachineFunction &MF) const {
  return XYGPU::NoRegister;
}

bool XYGPURegisterInfo::eliminateFrameIndex(MachineBasicBlock::iterator II,
                                            int SPAdj, unsigned FIOperandNum,
                                            RegScavenger *RS) const {
  return false;
}