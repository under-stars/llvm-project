//===-- XYGPUBaseInfo.cpp - XYGPU Base Information  -----------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "XYGPUBaseInfo.h"
#include "MCTargetDesc/XYGPUMCTargetDesc.h"

#define GET_INSTRINFO_NAMED_OPS
#include "XYGPUGenInstrInfo.inc"
