//===-- XYGPUMCCodeEmitter.cpp - Convert XYGPU code to machine code -------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the XYGPUMCCodeEmitter class.
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/XYGPUFixupKinds.h"
#include "MCTargetDesc/XYGPUMCExpr.h"
#include "MCTargetDesc/XYGPUMCTargetDesc.h"
#include "llvm/ADT/APInt.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCFixup.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/Support/EndianStream.h"

using namespace llvm;

#define DEBUG_TYPE "mccodeemitter"

namespace {
class XYGPUMCCodeEmitter : public MCCodeEmitter {
private:
  const MCRegisterInfo &MRI;
  const MCInstrInfo &MCII;

public:
  XYGPUMCCodeEmitter(const MCInstrInfo &MCII, const MCRegisterInfo &MRI)
      : MRI(MRI), MCII(MCII) {}

  /// Encode the given MI to bytes and append to CB.
  void encodeInstruction(const MCInst &MI, SmallVectorImpl<char> &CB,
                         SmallVectorImpl<MCFixup> &Fixups,
                         const MCSubtargetInfo &STI) const override;
  void getMachineOpValue(const MCInst &MI, const MCOperand &MO, APInt &Op,
                         SmallVectorImpl<MCFixup> &Fixups,
                         const MCSubtargetInfo &STI) const;

  unsigned getImmidiateOpValue(const MCInst &MI, unsigned OpNo, APInt &Op,
                               SmallVectorImpl<MCFixup> &Fixups,
                               const MCSubtargetInfo &STI) const;

  unsigned getJumpTargetOpValue(const MCInst &MI, unsigned OpNo, APInt &Op,
                               SmallVectorImpl<MCFixup> &Fixups,
                               const MCSubtargetInfo &STI) const;
  /// TableGen'erated function for getting the binary encoding for an
  /// instruction.
  void getBinaryCodeForInstr(const MCInst &MI, SmallVectorImpl<MCFixup> &Fixups,
                             APInt &Inst, APInt &Scratch,
                             const MCSubtargetInfo &STI) const;
};

void XYGPUMCCodeEmitter::encodeInstruction(const MCInst &MI,
                                           SmallVectorImpl<char> &CB,
                                           SmallVectorImpl<MCFixup> &Fixups,
                                           const MCSubtargetInfo &STI) const {
  unsigned Opcode = MI.getOpcode();
  const MCInstrDesc &Desc = MCII.get(Opcode);
  unsigned bytes = Desc.getSize();
  assert(bytes == 16);
  APInt Encoding(16, 0);
  APInt Scratch(16, 0);
  getBinaryCodeForInstr(MI, Fixups, Encoding, Scratch, STI);
  for (unsigned i = 0; i < bytes; i++) {
    CB.push_back((uint8_t)Encoding.extractBitsAsZExtValue(8, 8 * i));
  }
}

void XYGPUMCCodeEmitter::getMachineOpValue(const MCInst &MI,
                                           const MCOperand &MO, APInt &Op,
                                           SmallVectorImpl<MCFixup> &Fixups,
                                           const MCSubtargetInfo &STI) const {
  if (MO.isReg()) {
    Op = MRI.getEncodingValue(MO.getReg());
    return;
  }
  if (MO.isImm()) {
    Op = MO.getImm();
    return;
  }
  llvm_unreachable("Invalid operand type to encode.");
}

// TODO: This is a uniq achievement, may be we need to use sperate encoder for
// each instruction?
unsigned
XYGPUMCCodeEmitter::getImmidiateOpValue(const MCInst &MI, 
                                        unsigned OpNo, APInt &Op,
                                        SmallVectorImpl<MCFixup> &Fixups,
                                        const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);

  // If the destination is an immediate, there is nothing to do.
  if (MO.isImm()) {
    Op = MO.getImm();
    return 0;
  }


  assert(MO.isExpr() && "getImmOpValue expects only expressions or immediates");
  const MCExpr *Expr = MO.getExpr();
  MCExpr::ExprKind Kind = Expr->getKind();
  XYGPU::Fixups FixupKind = llvm::XYGPU::fixup_xygpu_abs16;

  if (Kind == MCExpr::Target) {
    const XYGPUMCExpr *targetExpr = cast<XYGPUMCExpr>(Expr);

    switch (targetExpr->getKind()) {
    case XYGPUMCExpr::VK_None:
    case XYGPUMCExpr::VK_16:
    case XYGPUMCExpr::VK_24:
    case XYGPUMCExpr::VK_32:
    case XYGPUMCExpr::VK_64:
    case XYGPUMCExpr::VK_HI:
    case XYGPUMCExpr::VK_LO:
    case XYGPUMCExpr::VK_ABS:
    case XYGPUMCExpr::VK_SHARED:
    case XYGPUMCExpr::VK_CONST:
    case XYGPUMCExpr::VK_PCREL:
    case XYGPUMCExpr::VK_REL32_HI:
    case XYGPUMCExpr::VK_REL32_LO:
    case XYGPUMCExpr::VK_REL16_LO:
    case XYGPUMCExpr::VK_REL24_LO:
    case XYGPUMCExpr::VK_REL50_HI:
    case XYGPUMCExpr::VK_GOT:
    case XYGPUMCExpr::VK_GOTPCREL_HI:
    case XYGPUMCExpr::VK_GOTPCREL_LO:
    case XYGPUMCExpr::VK_GOTCALL:
      llvm_unreachable("Unhandled fixup kind!");
    case XYGPUMCExpr::VK_ABS32_HI:
      FixupKind = XYGPU::fixup_xygpu_abs32_hi;
      break;
    case XYGPUMCExpr::VK_ABS32_LO:
      FixupKind = XYGPU::fixup_xygpu_abs32_lo;
      break;
    case XYGPUMCExpr::VK_ABS16:
      FixupKind = XYGPU::fixup_xygpu_abs16;
      break;
    case XYGPUMCExpr::VK_ABS24:
      FixupKind = XYGPU::fixup_xygpu_abs24;
      break;
    case XYGPUMCExpr::VK_ABS32:
      FixupKind = XYGPU::fixup_xygpu_abs32;
      break;
    case XYGPUMCExpr::VK_ABS64:
      FixupKind = XYGPU::fixup_xygpu_abs64;
      break;
    case XYGPUMCExpr::VK_REL16:
      FixupKind = XYGPU::fixup_xygpu_pcrel16;
      break;
    case XYGPUMCExpr::VK_REL24:
      FixupKind = XYGPU::fixup_xygpu_pcrel24;
      break;
    case XYGPUMCExpr::VK_REL32:
      FixupKind = XYGPU::fixup_xygpu_pcrel32;
      break;
    case XYGPUMCExpr::VK_REL64:
      FixupKind = XYGPU::fixup_xygpu_pcrel64;
      break;
    case XYGPUMCExpr::VK_JUMP:
      FixupKind = XYGPU::fixup_xygpu_call;
      break;
    case XYGPUMCExpr::VK_SHARED_16:
      FixupKind = XYGPU::fixup_xygpu_shared16;
      break;
    case XYGPUMCExpr::VK_SHARED_24:
      FixupKind = XYGPU::fixup_xygpu_shared24;
      break;
    case XYGPUMCExpr::VK_SHARED_32:
      FixupKind = XYGPU::fixup_xygpu_shared32;
      break;
    case XYGPUMCExpr::VK_CONST_16:
      FixupKind = XYGPU::fixup_xygpu_const16;
      break;
    case XYGPUMCExpr::VK_CONST_24:
      FixupKind = XYGPU::fixup_xygpu_const24;
      break;
    }
  } else if ((Kind == MCExpr::SymbolRef &&
                 cast<MCSymbolRefExpr>(Expr)->getKind() ==
                     MCSymbolRefExpr::VK_None) ||
             Kind == MCExpr::Binary) {
    // FIXME: Sub kind binary exprs have chance of underflow.
    FixupKind = XYGPU::fixup_xygpu_call;
  }

  Fixups.push_back(
      MCFixup::create(4, Expr, MCFixupKind(FixupKind), MI.getLoc()));

  return 0;
}

unsigned
XYGPUMCCodeEmitter::getJumpTargetOpValue(const MCInst &MI, 
                                        unsigned OpNo, APInt &Op,
                                        SmallVectorImpl<MCFixup> &Fixups,
                                        const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);

  // If the destination is an immediate, there is nothing to do.
  if (MO.isImm()) {
    Op = MO.getImm();
    return 0;
  }

  assert(MO.isExpr() && "getImmOpValue expects only expressions or immediates");
  const MCExpr *Expr = MO.getExpr();

  XYGPU::Fixups FixupKind = MI.getOpcode() == XYGPU::BRA_X
                         ? XYGPU::fixup_xygpu_branch
                         : XYGPU::fixup_xygpu_call;

  Fixups.push_back(
      MCFixup::create(4, Expr, MCFixupKind(FixupKind), MI.getLoc()));

  return 0;
}

} // end anonymous namespace

MCCodeEmitter *llvm::createXYGPUMCCodeEmitter(const MCInstrInfo &MCII,
                                              MCContext &Ctx) {
  return new XYGPUMCCodeEmitter(MCII, *Ctx.getRegisterInfo());
}

#include "XYGPUGenMCCodeEmitter.inc"