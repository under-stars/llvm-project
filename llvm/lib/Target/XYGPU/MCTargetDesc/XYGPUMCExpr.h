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

#ifndef LLVM_LIB_TARGET_XYGPU_MCTARGETDESC_XYGPUMCEXPR_H
#define LLVM_LIB_TARGET_XYGPU_MCTARGETDESC_XYGPUMCEXPR_H

#include "Utils/XYGPUBaseInfo.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/ErrorHandling.h"

namespace llvm {

class XYGPUMCExpr : public MCTargetExpr {
public:
  enum VariantKind {
    VK_None = 0x0000,
    VK_ABS = 0x0001,   // Absolute Immiate addressing
    VK_PCREL = 0x0002, // PC-Relative addressing
    VK_JUMP = 0x0004,  // Function CALL addressing
    VK_GOT = 0x0008,   // Got entry addressing

    VK_16 = 0x0010,
    VK_24 = 0x0020,
    VK_32 = 0x0040,
    VK_64 = 0x0080,
    VK_HI = 0x0100,
    VK_LO = 0x0200,

    //TODO: does we need a shared VariantKind?
    VK_SHARED = 0x1000,
    VK_CONST  = 0x2000,

    VK_GOTPCREL_HI = VK_GOT | VK_PCREL | VK_HI,
    VK_GOTPCREL_LO = VK_GOT | VK_PCREL | VK_LO,
    VK_GOTCALL = VK_GOT | VK_JUMP,
    VK_ABS16 = VK_ABS | VK_16,
    VK_ABS24 = VK_ABS | VK_24,
    VK_ABS32 = VK_ABS | VK_32,
    VK_ABS64 = VK_ABS | VK_64,
    VK_REL16 = VK_PCREL | VK_16, //TODO: does we need only PC-relative lo operands?
    VK_REL24 = VK_PCREL | VK_24,
    VK_REL32 = VK_PCREL | VK_32,
    VK_REL64 = VK_PCREL | VK_64,

    VK_ABS32_LO = VK_ABS | VK_32 | VK_LO,
    VK_ABS32_HI = VK_ABS | VK_32 | VK_HI,

    VK_REL16_LO = VK_PCREL | VK_16 | VK_LO,
    VK_REL24_LO = VK_PCREL | VK_24 | VK_LO,
    VK_REL32_LO = VK_PCREL | VK_32 | VK_LO,
    VK_REL32_HI = VK_PCREL | VK_32 | VK_HI,
    VK_REL50_HI = VK_PCREL | VK_64 | VK_HI,

    VK_SHARED_16 = VK_SHARED | VK_16,
    VK_SHARED_24 = VK_SHARED | VK_24,
    VK_SHARED_32 = VK_SHARED | VK_32,
    VK_CONST_16 = VK_CONST | VK_16,
    VK_CONST_24 = VK_CONST | VK_24,
  };
private:
  const MCExpr *Expr;
  const VariantKind Kind;

  int64_t evaluateAsInt64(int64_t Value) const;

protected:
  explicit XYGPUMCExpr(const MCExpr *Expr, VariantKind Kind)
    : Expr(Expr), Kind(Kind) {}

public:
  static const XYGPUMCExpr *create(const MCExpr *Expr, VariantKind Kind,
                                   MCContext &Ctx);

  VariantKind getKind() const { return Kind; }

  const MCExpr *getSubExpr() const { return Expr; }

  void printImpl(raw_ostream &OS, const MCAsmInfo *MAI) const override;
  bool evaluateAsRelocatableImpl(MCValue &Res, const MCAssembler *Asm,
                                 const MCFixup *Fixup) const override;
  void visitUsedExpr(MCStreamer &Streamer) const override;
  MCFragment *findAssociatedFragment() const override {
    return getSubExpr()->findAssociatedFragment();
  }

  bool evaluateAsConstant(int64_t &Res) const;

  static bool classof(const MCExpr *E) {
    return E->getKind() == MCExpr::Target;
  }
  void fixELFSymbolsInTLSFixups(MCAssembler &) const override {};

  static VariantKind getVariantKindForName(StringRef name);
  static StringRef getVariantKindName(VariantKind Kind);
};
} // end namespace llvm

#endif
