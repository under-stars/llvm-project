//===-- XYGPUInstrInfo.cpp - XYGPU Instruction Information ------*- C++ -*-===//
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

#include "XYGPUInstrInfo.h"
#include "MCTargetDesc/XYGPUMCTargetDesc.h"

using namespace llvm;

#define GET_INSTRINFO_CTOR_DTOR
#include "XYGPUGenInstrInfo.inc"

XYGPUInstrInfo::XYGPUInstrInfo(XYGPUSubtarget &STI) : XYGPUGenInstrInfo() {}