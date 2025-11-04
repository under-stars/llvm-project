//===-- XYGPUMCAsmInfo.h - XYGPU Asm properties ---------------------------===//
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

#ifndef LLVM_LIB_TARGET_XYGPU_MCTARGETDESC_XYGPUMCASMINFO_H
#define LLVM_LIB_TARGET_XYGPU_MCTARGETDESC_XYGPUMCASMINFO_H

#include "llvm/MC/MCAsmInfoELF.h"

namespace llvm {

class Triple;

class XYGPUMCAsmInfo : public MCAsmInfoELF {
public:
  explicit XYGPUMCAsmInfo(const Triple &TargetTriple);
};
} // end namespace llvm

#endif