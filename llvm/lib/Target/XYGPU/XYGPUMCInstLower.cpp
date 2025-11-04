//===-- XYGPUFrameLowering.h - Lower MachineInstr to MCInst ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains code to lower XYGPU MachineInstrs to their corresponding
// MCInst records.
//
//===----------------------------------------------------------------------===//

#include "XYGPUMCInstLower.h"
#include "Utils/XYGPUBaseInfo.h"
#include "MCTargetDesc/XYGPUMCExpr.h"
#include "XYGPUAsmPrinter.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineOperand.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

XYGPUMCInstLower::XYGPUMCInstLower(XYGPUAsmPrinter &asmprinter)
  : AsmPrinter(asmprinter) {}

void XYGPUMCInstLower::Initialize(MCContext *C) {
  Ctx = C;
}

MCOperand XYGPUMCInstLower::LowerSymbolOperand(const MachineOperand &MO,
                                              MachineOperandType MOTy,
                                              int64_t Offset) const {
  MCSymbolRefExpr::VariantKind Kind = MCSymbolRefExpr::VK_None;
  XYGPUMCExpr::VariantKind TargetKind = XYGPUMCExpr::VK_None;
  const MCSymbol *Symbol;

  switch(MO.getTargetFlags()) {
  default:
    llvm_unreachable("Invalid target flag!");
  case XYGPUII::MO_NONE:
  case XYGPUII::MO_ABS:
  case XYGPUII::MO_PCREL:
    break;
  case XYGPUII::MO_GOTPCREL:
    TargetKind = XYGPUMCExpr::VK_GOTPCREL_LO;
    break;
  case XYGPUII::MO_GOTCALL:
    TargetKind = XYGPUMCExpr::VK_GOTCALL;
    break;
  case XYGPUII::MO_ABS16:
    TargetKind = XYGPUMCExpr::VK_ABS16;
    break;
  case XYGPUII::MO_ABS32:
    TargetKind = XYGPUMCExpr::VK_ABS32;
    break;
  case XYGPUII::MO_ABS64:
    TargetKind = XYGPUMCExpr::VK_ABS64;
    break;
  case XYGPUII::MO_REL16:
    TargetKind = XYGPUMCExpr::VK_REL16;
    break;
  case XYGPUII::MO_REL32:
    TargetKind = XYGPUMCExpr::VK_REL32;
    break;
  case XYGPUII::MO_REL64:
    TargetKind = XYGPUMCExpr::VK_REL64;
    break;
  case XYGPUII::MO_GOT:
    TargetKind = XYGPUMCExpr::VK_GOT;
    break;
  case XYGPUII::MO_CALL:
    TargetKind = XYGPUMCExpr::VK_JUMP;
    break;
  }

  switch (MOTy) {
  case MachineOperand::MO_MachineBasicBlock:
    Symbol = MO.getMBB()->getSymbol();
    break;

  case MachineOperand::MO_GlobalAddress:
    Symbol = AsmPrinter.getSymbol(MO.getGlobal());
    Offset += MO.getOffset();
    break;

  case MachineOperand::MO_BlockAddress:
    Symbol = AsmPrinter.GetBlockAddressSymbol(MO.getBlockAddress());
    Offset += MO.getOffset();
    break;

  case MachineOperand::MO_ExternalSymbol:
    Symbol = AsmPrinter.GetExternalSymbolSymbol(MO.getSymbolName());
    Offset += MO.getOffset();
    break;

  case MachineOperand::MO_MCSymbol:
    Symbol = MO.getMCSymbol();
    Offset += MO.getOffset();
    break;

  case MachineOperand::MO_JumpTableIndex:
    Symbol = AsmPrinter.GetJTISymbol(MO.getIndex());
    break;

  case MachineOperand::MO_ConstantPoolIndex:
    Symbol = AsmPrinter.GetCPISymbol(MO.getIndex());
    Offset += MO.getOffset();
    break;

  default:
    llvm_unreachable("<unknown operand type>");
  }

  const MCExpr *Expr = MCSymbolRefExpr::create(Symbol, Kind, *Ctx);

  if (Offset) {
    // Note: Offset can also be negative
    Expr = MCBinaryExpr::createAdd(Expr, MCConstantExpr::create(Offset, *Ctx),
                                   *Ctx);
  }

  if (TargetKind != XYGPUMCExpr::VK_None)
    Expr = XYGPUMCExpr::create(Expr, TargetKind, *Ctx);

  return MCOperand::createExpr(Expr);
}

MCOperand XYGPUMCInstLower::LowerOperand(const MachineOperand &MO,
                                        int64_t offset) const {
  MachineOperandType MOTy = MO.getType();

  switch (MOTy) {
  default: llvm_unreachable("unknown operand type");
  case MachineOperand::MO_Register:
    // Ignore all implicit register operands.
    if (MO.isImplicit()) break;
    return MCOperand::createReg(MO.getReg());
  case MachineOperand::MO_Immediate:
    return MCOperand::createImm(MO.getImm() + offset);
  case MachineOperand::MO_MachineBasicBlock:
  case MachineOperand::MO_GlobalAddress:
  case MachineOperand::MO_ExternalSymbol:
  case MachineOperand::MO_MCSymbol:
  case MachineOperand::MO_JumpTableIndex:
  case MachineOperand::MO_ConstantPoolIndex:
  case MachineOperand::MO_BlockAddress:
    return LowerSymbolOperand(MO, MOTy, offset);
  case MachineOperand::MO_RegisterMask:
    break;
 }

  return MCOperand();
}

void XYGPUMCInstLower::Lower(const MachineInstr *MI, MCInst &OutMI) const {
  OutMI.setOpcode(MI->getOpcode());

  for (const MachineOperand &MO : MI->operands()) {
    MCOperand MCOp = LowerOperand(MO);

    if (MCOp.isValid())
      OutMI.addOperand(MCOp);
  }
}
