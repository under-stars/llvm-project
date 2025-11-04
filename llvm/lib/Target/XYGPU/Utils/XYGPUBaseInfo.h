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

namespace XYGPUII {
  /// Target Operand Flag enum.
  enum TargetOperandFlags {
    MO_NONE  = 0x0,
    MO_ABS   = 0x1,
    MO_PCREL = 0x2,
    MO_CALL  = 0x4,
    MO_GOT   = 0x8,

    MO_16 = 0x0010,
    MO_32 = 0x0020,
    MO_64 = 0x0040,
    MO_HI = 0x0100,
    MO_LO = 0x0200,

    MO_GOTPCREL = MO_PCREL | MO_GOT,
    MO_GOTCALL = MO_GOT | MO_CALL,
    MO_ABS16 = MO_ABS | MO_16,
    MO_ABS32 = MO_ABS | MO_32,
    MO_ABS64 = MO_ABS | MO_64,
    MO_REL16 = MO_PCREL | MO_16,
    MO_REL32 = MO_PCREL | MO_32,
    MO_REL64 = MO_PCREL | MO_64
  };
} // end namespace XYGPUII


namespace XYGPU {
LLVM_READONLY
int16_t getNamedOperandIdx(uint16_t Opcode, uint16_t NamedIdx);
} // namespace XYGPU

} // end namespace llvm

#endif
