//===-- XYGPUMCInstLower.h - Lower MachineInstr to MCInst -----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_XYGPUMCINSTLOWER_H
#define LLVM_LIB_TARGET_XYGPU_XYGPUMCINSTLOWER_H

#include "MCTargetDesc/XYGPUMCExpr.h"
#include "llvm/CodeGen/MachineOperand.h"
#include "llvm/Support/Compiler.h"

namespace llvm {

class MachineBasicBlock;
class MachineInstr;
class MCContext;
class MCInst;
class MCOperand;
class XYGPUAsmPrinter;

/// XYGPUMCInstLower - This class is used to lower an MachineInstr into an
///                   MCInst.
class LLVM_LIBRARY_VISIBILITY XYGPUMCInstLower {
  using MachineOperandType = MachineOperand::MachineOperandType;

  MCContext *Ctx;
  XYGPUAsmPrinter &AsmPrinter;

public:
  XYGPUMCInstLower(XYGPUAsmPrinter &asmprinter);

  void Initialize(MCContext *C);
  void Lower(const MachineInstr *MI, MCInst &OutMI) const;
  MCOperand LowerOperand(const MachineOperand &MO, int64_t offset = 0) const;

private:
  MCOperand LowerSymbolOperand(const MachineOperand &MO,
                               MachineOperandType MOTy, int64_t Offset) const;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_XYGPU_XYGPUMCINSTLOWER_H
