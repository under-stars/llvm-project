//===-- XYGPUDefines.h - XYGPU Definitions --------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_XYGPUDEFINES_H
#define LLVM_LIB_TARGET_XYGPU_XYGPUDEFINES_H

#include "llvm/MC/MCInstrDesc.h"

namespace llvm {

namespace XYGPU {

enum OperandType : unsigned {
  OPERAND_CTRL = MCOI::OPERAND_FIRST_TARGET,
  OPERAND_INSTR_MODI,
  OPERAND_PRED_MODI,
  OPERAND_OPR_MODI,
};

#define DEFINE_ENUMS
#include "AutoGen/XYGPUEnums.inc"
#undef DEFINE_ENUMS

} // namespace XYGPU

} // end namespace llvm

#endif