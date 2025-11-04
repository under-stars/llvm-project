//===-- XYGPUBaseInfo.h - XYGPU Base Information  -------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_UTILS_XYGPUBASEINFO_H
#define LLVM_LIB_TARGET_XYGPU_UTILS_XYGPUBASEINFO_H

#include "llvm/Support/Compiler.h"
#include <stdint.h>

#define GET_INSTRINFO_OPERAND_ENUM
#include "XYGPUGenInstrInfo.inc"

namespace llvm {

namespace XYGPU {
LLVM_READONLY
int16_t getNamedOperandIdx(uint16_t Opcode, uint16_t NamedIdx);
} // namespace XYGPU

} // end namespace llvm

#endif
