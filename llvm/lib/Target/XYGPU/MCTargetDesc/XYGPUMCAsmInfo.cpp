//===-- XYGPUMCAsmInfo.cpp - XYGPU Asm properties -------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the declarations of the XYGPUMCAsmInfo properties.
//
//===----------------------------------------------------------------------===//

#include "XYGPUMCAsmInfo.h"

using namespace llvm;

XYGPUMCAsmInfo::XYGPUMCAsmInfo(const Triple &TT) {
  CodePointerSize = 8;
  CommentString = "//";
  MaxInstLength = 16;
}