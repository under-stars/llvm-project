//===- XYGPUAsmPrinter.h - XYGPU LLVM Assembly Printer -----------*- C++ -*--===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// XYGPU Assembly printer class.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_XYGPUASMPRINTER_H
#define LLVM_LIB_TARGET_XYGPU_XYGPUASMPRINTER_H

#include "XYGPUMCInstLower.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/Support/Compiler.h"
#include <algorithm>
#include <map>
#include <memory>

namespace llvm {

class MCOperand;
class MCSubtargetInfo;
class MCSymbol;
class MachineBasicBlock;
class MachineConstantPool;
class MachineFunction;
class MachineInstr;
class MachineOperand;
class XYGPUFunctionInfo;
class XYGPUTargetStreamer;
class Module;
class raw_ostream;
class TargetMachine;

class LLVM_LIBRARY_VISIBILITY XYGPUAsmPrinter : public AsmPrinter {
public:
  XYGPUMCInstLower MCInstLowering;

  explicit XYGPUAsmPrinter(TargetMachine &TM,
                          std::unique_ptr<MCStreamer> Streamer)
      : AsmPrinter(TM, std::move(Streamer)), MCInstLowering(*this) {}

  bool lowerOperand(const MachineOperand &MO, MCOperand &MCOp);
  StringRef getPassName() const override { return "XYGPU Assembly Printer"; }

  bool runOnMachineFunction(MachineFunction &MF) override;
  void emitInstruction(const MachineInstr *) override;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_XYGPU_XYGPUASMPRINTER_H
