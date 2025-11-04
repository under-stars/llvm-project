//===-- XYGPUFrameLowering.cpp - XYGPU Frame Information ------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the XYGPU implementation of TargetFrameLowering class.
//
//===----------------------------------------------------------------------===//

#include "XYGPUFrameLowering.h"

using namespace llvm;

void XYGPUFrameLowering::emitPrologue(MachineFunction &MF,
                                      MachineBasicBlock &MBB) const {
  (void)STI;
}

void XYGPUFrameLowering::emitEpilogue(MachineFunction &MF,
                                      MachineBasicBlock &MBB) const {}

bool XYGPUFrameLowering::hasFPImpl(const MachineFunction &MF) const {
  return false;
}