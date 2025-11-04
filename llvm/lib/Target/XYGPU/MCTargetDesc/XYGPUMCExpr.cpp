//===-- XYGPUInstPrinter.h - Convert XYGPU MCInst to asm syntax -----------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This class prints a XYGPU MCInst to a .s file.
//
//===----------------------------------------------------------------------===//

#include "Utils/XYGPUBaseInfo.h"
#include "XYGPUMCExpr.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/BinaryFormat/ELF.h"
#include "llvm/MC/MCAssembler.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSymbolELF.h"
#include "llvm/MC/MCValue.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/ErrorHandling.h"

#define DEBUG_TYPE "xygpu-mcexpr"

namespace llvm {

const XYGPUMCExpr *XYGPUMCExpr::create(const MCExpr *Expr, VariantKind Kind,
                                MCContext &Ctx) {
  return new (Ctx) XYGPUMCExpr(Expr, Kind);
}

void XYGPUMCExpr::printImpl(raw_ostream &OS, const MCAsmInfo *MAI) const {
  VariantKind Kind = getKind();
  bool HasVariant = ((Kind != VK_None) && (Kind != VK_JUMP));

  if (HasVariant)
    OS << getVariantKindName(getKind());
  Expr->print(OS, MAI);
}

bool XYGPUMCExpr::evaluateAsRelocatableImpl(MCValue &Res,
                                            const MCAssembler *Asm,
                                            const MCFixup *Fixup) const {
  // Explicitly drop the layout and assembler to prevent any symbolic folding in
  // the expression handling.  This is required to preserve symbolic difference
  // expressions to emit the paired relocations.
  if (!getSubExpr()->evaluateAsRelocatable(Res, nullptr, nullptr))
    return false;

  Res =
      MCValue::get(Res.getSymA(), Res.getSymB(), Res.getConstant(), getKind());
  // Custom fixup types are not valid with symbol difference expressions.
  return Res.getSymB() ? getKind() == VK_None : true;
}

void XYGPUMCExpr::visitUsedExpr(MCStreamer &Streamer) const {
  Streamer.visitUsedExpr(*getSubExpr());
}

XYGPUMCExpr::VariantKind XYGPUMCExpr::getVariantKindForName(StringRef name) {
  return StringSwitch<XYGPUMCExpr::VariantKind>(name)
      .Case("gotpclo", VK_GOTPCREL_LO)
      .Case("gotpchi", VK_GOTPCREL_HI)
      .Case("abs16", VK_ABS16)
      .Case("abs32", VK_ABS32)
      .Case("abs64", VK_ABS64)
      .Case("abslo", VK_ABS32_LO)
      .Case("abshi", VK_ABS32_HI)
      .Case("pcrel16", VK_REL16_LO)
      .Case("pcrel24", VK_REL24_LO)
      .Case("pcrel32", VK_REL32_LO)
      .Case("pcrelhi", VK_REL50_HI)
      .Case("shared16", VK_SHARED_16)
      .Case("shared24", VK_SHARED_24)
      .Case("shared32", VK_SHARED_32)
      .Case("const16", VK_CONST_16)
      .Case("const24", VK_CONST_24)
      .Case("pcrel", VK_PCREL)
      .Case("got", VK_GOT)
      .Default(VK_None);
}

StringRef XYGPUMCExpr::getVariantKindName(VariantKind Kind) {
  switch((uint32_t)Kind) {
  case VK_GOTPCREL_LO: return ":gotpclo:";
  case VK_GOTPCREL_HI: return ":gotpchi:";
  case VK_ABS16:       return ":abs16:";
  case VK_ABS32:       return ":abs32:";
  case VK_ABS64:       return ":abs64:";
  case VK_ABS32_LO:    return ":abslo:";
  case VK_ABS32_HI:    return ":abshi:";
  case VK_REL16_LO:    return ":pcrel16:";
  case VK_REL24_LO:    return ":pcrel24:";
  case VK_REL32_LO:    return ":pcrel32:";
  case VK_REL50_HI:    return ":pcrelhi:";
  case VK_SHARED_16:   return ":shared16:";
  case VK_SHARED_24:   return ":shared24:";
  case VK_SHARED_32:   return ":shared32:";
  case VK_CONST_16:   return ":const16:";
  case VK_CONST_24:   return ":const24:";
  case VK_PCREL:       return ":pcrel:";
  case VK_GOT:         return ":got:";
  }
  llvm_unreachable("Invalid ELF symbol kind");
}

bool XYGPUMCExpr::evaluateAsConstant(int64_t &Res) const {
  MCValue Value;

  // TODO: a got variant or pcrel variant,
  // can be a constant ?
  if (Kind & VK_GOT || Kind & VK_PCREL)
    return false;

  if (Kind == VK_PCREL || Kind == VK_REL64 ||
      Kind == VK_REL32 || Kind == VK_REL16 ||
      Kind == VK_GOTPCREL_LO || Kind == VK_GOTCALL)
    return false;

  if (!getSubExpr()->evaluateAsRelocatable(Value, nullptr, nullptr))
    return false;

  if (!Value.isAbsolute())
    return false;

  Res = evaluateAsInt64(Value.getConstant());
  return true;
}

int64_t XYGPUMCExpr::evaluateAsInt64(int64_t Value) const {
  switch (Kind) {
  default:
    llvm_unreachable("Invalid kind");
  // TODO:: Add more kinds
  }
}

} // end namespace llvm

