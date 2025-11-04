//===-- XYGPUAsmParser.cpp - Parse XYGPU assembly to MCInst instructions --===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/XYGPUInstPrinter.h"
#include "MCTargetDesc/XYGPUMCExpr.h"
#include "TargetInfo/XYGPUTargetInfo.h"
#include "Utils/XYGPUBaseInfo.h"
#include "Utils/XYGPUControlCode.h"
#include "XYGPUDefines.h"
#include "llvm/ADT/APFloat.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCParser/MCAsmLexer.h"
#include "llvm/MC/MCParser/MCTargetAsmParser.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/TargetRegistry.h"
#include <map>
#include <numeric>
#include <tuple>
#include <variant>

using namespace llvm;
using namespace llvm::XYGPU;

namespace {

#define DEFINE_OPRMODI_ENUM_GET_ENUM_FUNCS
#define DEFINE_SREG_ENUM_GET_ENUM_FUNCS
#include "AutoGen/XYGPUEnums.inc"
#undef DEFINE_SREG_ENUM_GET_ENUM_FUNCS
#undef DEFINE_OPRMODI_ENUM_GET_ENUM_FUNCS

class XYGPUOperand final : public MCParsedAsmOperand {
public:
  struct Modifiers {
  private:
    XYGPU::SignModi Abs;      // |opr|
    bool AbsFlag = false;
    XYGPU::SignModi Neg;      // -opr
    bool NegFlag = false;
    XYGPU::SignModi BitNot;   // ~opr
    bool BitNotFlag = false;
    XYGPU::PModi LNot;        // !opr
    bool LNotFlag = false;

    XYGPU::BSel BSel;
    bool BSelFlag = false;
    XYGPU::HSel2 HSel2;
    bool HSel2Flag = false;
    XYGPU::HSel HSel;
    bool HSelFlag = false;
    XYGPU::VSel VSel;
    bool VSelFlag = false;
    XYGPU::Buf Buf;
    bool BufFlag = false;
    XYGPU::RStride RStride;
    bool RStrideFlag = false;
    XYGPU::ADDRMode ADDRMode;
    bool ADDRModeFlag = false;

  public:
    static const unsigned NOT_SET = ~0u;

    bool setAbs(XYGPU::SignModi Val) {
      if (AbsFlag)
        return false;
      AbsFlag = true;
      Abs = Val;
      return true;
    }

    bool setNeg(XYGPU::SignModi Val) {
      if (NegFlag)
        return false;
      NegFlag = true;
      Neg = Val;
      return true;
    }

    bool setBitNot(XYGPU::SignModi Val) {
      if (BitNotFlag)
        return false;
      BitNotFlag = true;
      BitNot = Val;
      return true;
    }

    bool setLNot(XYGPU::PModi Val) {
      if (LNotFlag)
        return false;
      LNotFlag = true;
      LNot = Val;
      return true;
    }

    bool setBSel(XYGPU::BSel Val) {
      if (BSelFlag)
        return false;
      BSelFlag = true;
      BSel = Val;
      return true;
    }

    bool setHSel2(XYGPU::HSel2 Val) {
      if (HSel2Flag)
        return false;
      HSel2Flag = true;
      HSel2 = Val;
      return true;
    }

    bool setHSel(XYGPU::HSel Val) {
      if (HSelFlag)
        return false;
      HSelFlag = true;
      HSel = Val;
      return true;
    }

    bool setVSel(XYGPU::VSel Val) {
      if (VSelFlag)
        return false;
      VSelFlag = true;
      VSel = Val;
      return true;
    }

    bool setBuf(XYGPU::Buf Val) {
      if (BufFlag)
        return false;
      BufFlag = true;
      Buf = Val;
      return true;
    }

    bool setRStride(XYGPU::RStride Val) {
      if (RStrideFlag)
        return false;
      RStrideFlag = true;
      RStride = Val;
      return true;
    }

    bool setADDRMode(XYGPU::ADDRMode Val) {
      if (ADDRModeFlag)
        return false;
      ADDRModeFlag = true;
      ADDRMode = Val;
      return true;
    }

    unsigned extractAbsAsImm() {
      unsigned res = AbsFlag ? static_cast<unsigned>(Abs) : NOT_SET;
      AbsFlag = false;
      return res;
    }

    unsigned extractNegAsImm() {
      unsigned res = NegFlag ? static_cast<unsigned>(Neg) : NOT_SET;
      NegFlag = false;
      return res;
    }

    unsigned extractBitNotAsImm() {
      unsigned res = BitNotFlag ? static_cast<unsigned>(BitNot) : NOT_SET;
      BitNotFlag = false;
      return res;
    }

    unsigned extractLNotAsImm() {
      unsigned res = LNotFlag ? static_cast<unsigned>(LNot) : NOT_SET;
      LNotFlag = false;
      return res;
    }

    unsigned extractBSelAsImm() {
      unsigned res = BSelFlag ? static_cast<unsigned>(BSel) : NOT_SET;
      BSelFlag = false;
      return res;
    }

    unsigned extractHSel2AsImm() {
      unsigned res = HSel2Flag ? static_cast<unsigned>(HSel2) : NOT_SET;
      HSel2Flag = false;
      return res;
    }

    unsigned extractHSelAsImm() {
      unsigned res = HSelFlag ? static_cast<unsigned>(HSel) : NOT_SET;
      HSelFlag = false;
      return res;
    }

    unsigned extractVSelAsImm() {
      unsigned res = VSelFlag ? static_cast<unsigned>(VSel) : NOT_SET;
      VSelFlag = false;
      return res;
    }

    unsigned extractBufAsImm() {
      unsigned res = BufFlag ? static_cast<unsigned>(Buf) : NOT_SET;
      BufFlag = false;
      return res;
    }

    unsigned extractRStrideAsImm() {
      unsigned res = RStrideFlag ? static_cast<unsigned>(RStride) : NOT_SET;
      RStrideFlag = false;
      return res;
    }

    unsigned extractADDRModeAsImm() {
      unsigned res = ADDRModeFlag ? static_cast<unsigned>(ADDRMode) : NOT_SET;
      ADDRModeFlag = false;
      return res;
    }

    bool checkFlags() const {
      return !(AbsFlag || NegFlag || BitNotFlag || LNotFlag || BSelFlag ||
               HSel2Flag || HSelFlag || VSelFlag || BufFlag || RStrideFlag ||
               ADDRModeFlag);
    }
  };

private:
  enum class KindTy {
    Token,
    Immediate,
    Register,
    Expression,
  } Kind;

  enum class ImmKindTy {
    Int,
    FP,
    FPBin,
    CMem,
    SReg,
  };

  struct ImmOp {
    ImmKindTy Kind;
    int64_t Val;
  };

  struct RegOp {
    MCRegister RegNo;
    Modifiers Modis;
  };

  SMLoc StartLoc, EndLoc;
  union {
    StringRef Tok;
    ImmOp Imm;
    RegOp Reg;
    const MCExpr *Expr;
  };

public:
  XYGPUOperand(KindTy K) : Kind(K) {}
  bool isToken() const override { return Kind == KindTy::Token; }
  bool isImm() const override { return Kind == KindTy::Immediate; }
  bool isReg() const override { return Kind == KindTy::Register; }
  bool isMem() const override { llvm_unreachable("no isMem"); }
  bool isExpr() const { return Kind == KindTy::Expression; }
  bool isExprOrImm() const { return isImm() || isExpr(); }
  bool isIntImm() const { return isImm() && Imm.Kind == ImmKindTy::Int; }
  bool isCMemImm() const { return isImm() && Imm.Kind == ImmKindTy::CMem; }
  bool isFPImm() const { return isImm() && Imm.Kind == ImmKindTy::FP; }
  bool isFPBinImm() const { return isImm() && Imm.Kind == ImmKindTy::FPBin; }
  bool isSReg() const { return isImm() && Imm.Kind == ImmKindTy::SReg; }
  MCRegister getReg() const override {
    assert(isReg());
    return Reg.RegNo;
  }
  Modifiers getRegModis() const {
    assert(isReg());
    return Reg.Modis;
  }
  int64_t getImm() const {
    assert(isImm());
    return Imm.Val;
  }
  StringRef getToken() const {
    assert(isToken());
    return Tok;
  }
  /// getStartLoc - Gets location of the first token of this operand
  SMLoc getStartLoc() const override { return StartLoc; }
  /// getEndLoc - Gets location of the last token of this operand
  SMLoc getEndLoc() const override { return EndLoc; }

  void setReg(MCRegister R) {
    assert(isReg());
    Reg.RegNo = R;
  }

  void setImm(int64_t I) {
    assert(isImm());
    Imm.Val = I;
  }
  const MCExpr * getExpr() const {
    assert(isExpr() && "Invalid access!");
    return Expr;
  }
  void addExpr(MCInst &Inst, const MCExpr *Expr) const {
    // Add as immediates when possible.
    if (const MCConstantExpr *CE = dyn_cast<MCConstantExpr>(Expr))
      Inst.addOperand(MCOperand::createImm(CE->getValue()));
    else
      Inst.addOperand(MCOperand::createExpr(Expr));
  }
  void addLdStModifyOperands(MCInst &Inst, unsigned N) {
    addImmOperands(Inst, N);
  }

  // Used by the TableGen Code
  void addRegOperands(MCInst &Inst, unsigned N) const {
    assert(N == 1 && "Invalid number of operands!");
    Inst.addOperand(MCOperand::createReg(getReg()));
  }
  void addImmOperands(MCInst &Inst, unsigned N) const {
    assert(N == 1 && "Invalid number of operands!");
    Inst.addOperand(MCOperand::createImm(getImm()));
  }
  void addImmOrExprOperands(MCInst &Inst, unsigned N) const {
    assert(N == 1 && "Invalid number of operands!");
    if (isImm()) {
      addImmOperands(Inst, N);
    } else {
      addExpr(Inst, getExpr());
    }
  }

  static std::unique_ptr<XYGPUOperand> createToken(StringRef Str, SMLoc S) {
    auto Op = std::make_unique<XYGPUOperand>(KindTy::Token);
    Op->Tok = Str;
    Op->StartLoc = S;
    Op->EndLoc = S;
    return Op;
  }

  static std::unique_ptr<XYGPUOperand> createReg(MCRegister Reg, SMLoc S,
                                                 SMLoc E, Modifiers &Modis) {
    auto Op = std::make_unique<XYGPUOperand>(KindTy::Register);
    Op->Reg.RegNo = Reg.id();
    Op->Reg.Modis = Modis;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<XYGPUOperand> createIntImm(int64_t Val, SMLoc S,
                                                    SMLoc E) {
    auto Op = std::make_unique<XYGPUOperand>(KindTy::Immediate);
    Op->Imm.Kind = ImmKindTy::Int;
    Op->Imm.Val = Val;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<XYGPUOperand> createFPImm(int64_t Val, SMLoc S,
                                                   SMLoc E) {
    auto Op = std::make_unique<XYGPUOperand>(KindTy::Immediate);
    Op->Imm.Kind = ImmKindTy::FP;
    Op->Imm.Val = Val;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<XYGPUOperand> createFPBinImm(double Val, SMLoc S,
                                                      SMLoc E) {
    auto Op = std::make_unique<XYGPUOperand>(KindTy::Immediate);
    Op->Imm.Kind = ImmKindTy::FPBin;
    Op->Imm.Val = Val;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<XYGPUOperand> createCMemImm(int64_t Val, SMLoc S,
                                                     SMLoc E) {
    auto Op = std::make_unique<XYGPUOperand>(KindTy::Immediate);
    Op->Imm.Kind = ImmKindTy::CMem;
    Op->Imm.Val = Val;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<XYGPUOperand> createSReg(int64_t Val, SMLoc S,
                                                  SMLoc E) {
    auto Op = std::make_unique<XYGPUOperand>(KindTy::Immediate);
    Op->Imm.Kind = ImmKindTy::SReg;
    Op->Imm.Val = Val;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<XYGPUOperand>
  createExpr(const class MCExpr *Expr, SMLoc S, SMLoc E) {
    auto Op = std::make_unique<XYGPUOperand>(KindTy::Expression);
    Op->Expr = Expr;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  // Debug methods
  void print(raw_ostream &OS) const override {
    switch (Kind) {
    case KindTy::Immediate:
      OS << getImm();
      break;
    case KindTy::Register:
      OS << XYGPUInstPrinter::getRegisterName(getReg());
      break;
    case KindTy::Token:
      OS << "'" << getToken() << "'";
      break;
    case KindTy::Expression:
      OS << "<expr " << *Expr << '>';
      break;
    }
  }

  // Custom methods
  bool isPModi() const {
    if (!isIntImm())
      return false;
    int64_t Val = getImm();
    return Val == 0 || Val == 1;
  }

  bool isPred() const {
    if (!isReg())
      return false;
    MCRegister Reg = getReg();
    return XYGPUMCRegisterClasses[XYGPU::PredRCRegClassID].contains(Reg);
  }

  bool isUPred() const {
    if (!isReg())
      return false;
    MCRegister Reg = getReg();
    return XYGPUMCRegisterClasses[XYGPU::UPredRCRegClassID].contains(Reg);
  }

  bool isCMemBank() const {
    if (!isCMemImm())
      return false;
    int64_t Val = getImm();
    return Val >= 0 && Val <= 31;
  }

  bool isCMemOffset() const {
    if (isExpr())
      return true;

    if (!isCMemImm())
      return false;
    int64_t Val = getImm();
    return Val >= -(1 << 16) && Val <= ((1 << 16) - 1);
  }
};

class XYGPUAsmOperand {
private:
  enum class KindTy {
    Single,
    CMem,
    Mem,
    IndirectReg,
  } Kind;

  struct SingleOp {
    std::unique_ptr<XYGPUOperand> Op;
  };

  struct CMemOp {
    std::unique_ptr<XYGPUOperand> CBank;
    std::unique_ptr<XYGPUOperand> COffset;
    std::unique_ptr<XYGPUOperand> RegOffset;
    std::unique_ptr<XYGPUOperand> URegOffset;
    XYGPUOperand::Modifiers Modis;
  };

  struct MemOp {
    std::unique_ptr<XYGPUOperand> RegOffset;
    std::unique_ptr<XYGPUOperand> URegOffset;
    std::unique_ptr<XYGPUOperand> ImmOffset;
  };

  struct IndirectRegOp {
    std::unique_ptr<XYGPUOperand> UReg;
    std::unique_ptr<XYGPUOperand> ImmOffset;
  };

  SMLoc StartLoc, EndLoc;
  union {
    SingleOp Single;
    CMemOp CMem;
    MemOp Mem;
    IndirectRegOp IndirectReg;
  };

public:
  ~XYGPUAsmOperand() {}

  XYGPUAsmOperand(KindTy K) : Kind(K) {}
  bool isSingle() const { return Kind == KindTy::Single; }
  bool isCMem() const { return Kind == KindTy::CMem; }
  bool isMem() const { return Kind == KindTy::Mem; }
  bool isIndirectReg() const { return Kind == KindTy::IndirectReg; }

  std::unique_ptr<XYGPUOperand> getSingle() {
    assert(isSingle());
    return std::move(Single.Op);
  }

  std::unique_ptr<XYGPUOperand> getMemRegOffset() {
    assert(isMem());
    return std::move(Mem.RegOffset);
  }

  std::unique_ptr<XYGPUOperand> getMemURegOffset() {
    assert(isMem());
    return std::move(Mem.URegOffset);
  }

  std::unique_ptr<XYGPUOperand> getMemImmOffset() {
    assert(isMem());
    return std::move(Mem.ImmOffset);
  }

  std::unique_ptr<XYGPUOperand> getCMemCBank() {
    assert(isCMem());
    return std::move(CMem.CBank);
  }

  std::unique_ptr<XYGPUOperand> getCMemCOffset() {
    assert(isCMem());
    return std::move(CMem.COffset);
  }

  std::unique_ptr<XYGPUOperand> getCMemRegOffset() {
    assert(isCMem());
    return std::move(CMem.RegOffset);
  }

  std::unique_ptr<XYGPUOperand> getCMemURegOffset() {
    assert(isCMem());
    return std::move(CMem.URegOffset);
  }

  XYGPUOperand::Modifiers getCMemModis() {
    assert(isCMem());
    return CMem.Modis;
  }

  std::unique_ptr<XYGPUOperand> getIndirectRegUReg() {
    assert(isIndirectReg());
    return std::move(IndirectReg.UReg);
  }

  std::unique_ptr<XYGPUOperand> getIndirectRegImmOffset() {
    assert(isIndirectReg());
    return std::move(IndirectReg.ImmOffset);
  }

  bool checkEmpty() {
    if (isSingle()) {
      if (Single.Op != nullptr)
        return false;
    } else if (isMem()) {
      if (Mem.RegOffset != nullptr || Mem.URegOffset != nullptr ||
          Mem.ImmOffset != nullptr)
        return false;
    } else if (isCMem()) {
      if (CMem.CBank != nullptr || CMem.COffset != nullptr ||
          CMem.RegOffset != nullptr || CMem.URegOffset != nullptr)
        return false;
    } else if (isIndirectReg()) {
      if (IndirectReg.UReg != nullptr || IndirectReg.ImmOffset != nullptr)
        return false;
    } else {
      llvm_unreachable("Unknown asm operand kind");
    }
    return true;
  }

  static std::unique_ptr<XYGPUAsmOperand>
  createSingle(std::unique_ptr<XYGPUOperand> Single, SMLoc StartLoc,
               SMLoc EndLoc) {
    auto Op = std::make_unique<XYGPUAsmOperand>(KindTy::Single);
    new (&Op->Single) SingleOp();
    Op->Single.Op = std::move(Single);
    Op->StartLoc = StartLoc;
    Op->EndLoc = EndLoc;
    return Op;
  }

  static std::unique_ptr<XYGPUAsmOperand>
  createCMem(std::unique_ptr<XYGPUOperand> CBank,
             std::unique_ptr<XYGPUOperand> COffset,
             std::unique_ptr<XYGPUOperand> RegOffset,
             std::unique_ptr<XYGPUOperand> URegOffset,
             XYGPUOperand::Modifiers Modis, SMLoc StartLoc, SMLoc EndLoc) {
    auto Op = std::make_unique<XYGPUAsmOperand>(KindTy::CMem);
    new (&Op->CMem) CMemOp();
    Op->CMem.CBank = std::move(CBank);
    Op->CMem.COffset = std::move(COffset);
    Op->CMem.RegOffset = std::move(RegOffset);
    Op->CMem.URegOffset = std::move(URegOffset);
    Op->CMem.Modis = Modis;
    Op->StartLoc = StartLoc;
    Op->EndLoc = EndLoc;
    return Op;
  }

  static std::unique_ptr<XYGPUAsmOperand>
  createMem(std::unique_ptr<XYGPUOperand> RegOffset,
            std::unique_ptr<XYGPUOperand> URegOffset,
            std::unique_ptr<XYGPUOperand> ImmOffset, SMLoc StartLoc,
            SMLoc EndLoc) {
    auto Op = std::make_unique<XYGPUAsmOperand>(KindTy::Mem);
    new (&Op->Mem) MemOp();
    Op->Mem.RegOffset = std::move(RegOffset);
    Op->Mem.URegOffset = std::move(URegOffset);
    Op->Mem.ImmOffset = std::move(ImmOffset);
    Op->StartLoc = StartLoc;
    Op->EndLoc = EndLoc;
    return Op;
  }

  static std::unique_ptr<XYGPUAsmOperand>
  createIndirectReg(std::unique_ptr<XYGPUOperand> UReg,
                    std::unique_ptr<XYGPUOperand> ImmOffset, SMLoc StartLoc,
                    SMLoc EndLoc) {
    auto Op = std::make_unique<XYGPUAsmOperand>(KindTy::IndirectReg);
    new (&Op->IndirectReg) IndirectRegOp();
    Op->IndirectReg.UReg = std::move(UReg);
    Op->IndirectReg.ImmOffset = std::move(ImmOffset);
    Op->StartLoc = StartLoc;
    Op->EndLoc = EndLoc;
    return Op;
  }

  /// getStartLoc - Gets location of the first token of this operand
  SMLoc getStartLoc() const { return StartLoc; }
  /// getEndLoc - Gets location of the last token of this operand
  SMLoc getEndLoc() const { return EndLoc; }
};

#define INSTR_MODIS_ASM_INFO
#include "AutoGen/XYGPUAsmParser.inc"
#undef INSTR_MODIS_ASM_INFO

class XYGPUAsmParser : public MCTargetAsmParser {
private:
// Auto-generated instruction matching functions
#define GET_ASSEMBLER_HEADER
#include "XYGPUGenAsmMatcher.inc"

  // Asm operand types.
  enum class AsmOperandKind {
    Invalid,
    Reg,
    UReg,
    Pred,
    UPred,
    RegD,
    URegD,
    RegQ,
    BReg,
    PredAll,
    UPredAll,
    IndirectReg,
    Mem_0_0,
    Mem_0_32,
    Mem_0_64,
    Mem_32_0,
    Mem_32_32,
    Mem_32_64,
    Mem_64_0,
    Mem_64_32,
    Mem_64_64,
    CMem,
    CMem_r,
    CMem_u,
    Imm,
  };

  using AsmOprVector = SmallVectorImpl<std::unique_ptr<XYGPUAsmOperand>>;
  using AsmOprKindVector = SmallVectorImpl<AsmOperandKind>;

#define ASM_PARSER_FUNCS_DECLARATION
#include "AutoGen/XYGPUAsmParser.inc"
#undef ASM_PARSER_FUNCS_DECLARATION

  // Since we parse predicate info before the mnemonic of an instruction and
  // may parse control code before or after the mnemonic, we need to store them
  // until the instruction is parsed.
  struct ExtraInfoTy {
    // Control code
    XYGPU::ControlCode::ControlCodeTy CtrlCodeObj;

    // Predicate
    struct {
      MCRegister Reg;
      bool LNot;
    } PredObj;
    SMLoc PredLoc;

    void clear() {
      CtrlCodeObj.reset();
      PredObj.Reg = XYGPU::NoRegister;
      PredObj.LNot = false;
      PredLoc = SMLoc();
    }
  };

  ExtraInfoTy ExtraInfo;

  const MCRegisterInfo *getMRI() const {
    // We need this const_cast because for some reason getContext() is not const
    // in MCAsmParser.
    return const_cast<XYGPUAsmParser *>(this)->getContext().getRegisterInfo();
  }
  SMLoc getLoc() const { return getLexer().getTok().getLoc(); }
  AsmOperandKind getRegKind(const MCRegister Reg) const;
  StringRef getSignatureStrByEnum(AsmOperandKind E) const;
  AsmOperandKind getAsmOperandKindEnumByName(std::string &Name) const;
  bool isZeroReg(MCRegister Reg) const;
  MCRegister convertZeroRegToExactReg(MCRegister Reg, unsigned TgtKind) const;
  bool isADDRModeMatchReg(MCRegister Reg, unsigned ADDRModeVal) const;
  bool getAsmFPBinVal(const std::unique_ptr<XYGPUOperand> &Opr,
                      const fltSemantics &ToSemantics, int64_t &Val);
  bool getInstrModiVals(const SmallVectorImpl<StringRef> &InstrModiList,
                        const InstrModisAsmInfoTy &InstrModiAsmInfo,
                        SMLoc &NameLoc, std::vector<int> &InstrModiVals);
  ParseStatus parseAsmReg(AsmOprVector &Oprs, AsmOprKindVector &OprKinds);
  ParseStatus parseAsmSReg(AsmOprVector &Oprs, AsmOprKindVector &OprKinds);
  ParseStatus parseAsmFPImm(AsmOprVector &Oprs, AsmOprKindVector &OprKinds);
  ParseStatus parseAsmImm(AsmOprVector &Oprs, AsmOprKindVector &OprKinds);
  ParseStatus parseAsmMem(AsmOprVector &Oprs, AsmOprKindVector &OprKinds);
  ParseStatus parseAsmCMem(AsmOprVector &Oprs, AsmOprKindVector &OprKinds);
  ParseStatus parseAsmIndirectReg(AsmOprVector &Oprs,
                                  AsmOprKindVector &OprKinds);
  ParseStatus parseAsmOperand(AsmOprVector &Oprs, AsmOprKindVector &OprKinds);
  bool parseMnemonic(StringRef Name, SMLoc &NameLoc, const std::string &OprsSig,
                     StringRef &Mnemonic,
                     SmallVectorImpl<StringRef> &InstrModiList,
                     OperandVector &Operands);
  bool parseInstrModis(const std::string &InstrId,
                       const SmallVectorImpl<StringRef> &InstrModiList,
                       SMLoc &NameLoc, OperandVector &Operands);
  bool parseControlCode();
  ParseStatus parseRegularReg(MCRegister &Reg, SMLoc &StartLoc, SMLoc &EndLoc,
                              std::string *Suffix = nullptr);
  void postMatchProcess(MCInst &MI);
  void rollbackLexer(SmallVectorImpl<AsmToken> &Tokens);
  void lexWithBackup(SmallVectorImpl<AsmToken> &Tokens);

  // Custom methods
  ParseStatus parsePGuardModi(OperandVector &Operands);
  ParseStatus parsePGuard(OperandVector &Operands);
  ParseStatus parseUPGuard(OperandVector &Operands);

public:
  enum XYGPUMatchResultTy : unsigned {
    Match_Dummy = FIRST_TARGET_MATCH_RESULT_TY,
#define GET_OPERAND_DIAGNOSTIC_TYPES
#include "XYGPUGenAsmMatcher.inc"
#undef GET_OPERAND_DIAGNOSTIC_TYPES
  };

  XYGPUAsmParser(const MCSubtargetInfo &STI, MCAsmParser &Parser,
                 const MCInstrInfo &MII, const MCTargetOptions &Options)
      : MCTargetAsmParser(Options, STI, MII) {
    MCAsmParserExtension::Initialize(Parser);

    setAvailableFeatures(ComputeAvailableFeatures(STI.getFeatureBits()));
  }

  void consumeCustomLeadingTokens() override;
  bool matchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                               OperandVector &Operands, MCStreamer &Out,
                               uint64_t &ErrorInfo,
                               bool MatchingInlineAsm) override;
  bool parseInstruction(ParseInstructionInfo &Info, StringRef Name,
                        SMLoc NameLoc, OperandVector &Operands) override;
  unsigned validateTargetOperandClass(MCParsedAsmOperand &AsmOp,
                                      unsigned Kind) override;
  bool parseRegister(MCRegister &RegNo, SMLoc &StartLoc,
                     SMLoc &EndLoc) override;
  ParseStatus tryParseRegister(MCRegister &RegNo, SMLoc &StartLoc,
                               SMLoc &EndLoc) override;
};
} // end anonymous namespace.

#define GET_REGISTER_MATCHER
#define GET_MATCHER_IMPLEMENTATION
#define GET_MNEMONIC_SPELL_CHECKER
#define GET_SUBTARGET_FEATURE_NAME
#include "XYGPUGenAsmMatcher.inc"

#define ASM_PARSER_FUNCS_DEFINITION
#include "AutoGen/XYGPUAsmParser.inc"
#undef ASM_PARSER_FUNCS_DEFINITION

// TODO: Put the following info into td definitions?
static constexpr StringLiteral RegularRegsInfo[] = {
    {"b"},
    {"p"},
    {"r"},
    {"up"},
    {"ur"},
};

static const StringLiteral *getRegularRegInfo(StringRef Str) {
  for (const StringLiteral &Reg : RegularRegsInfo)
    if (Str.starts_with_insensitive(Reg))
      return &Reg;
  return nullptr;
}

// Attempts to match Name as a register (either using the default name or
// alternative names). Upon failure, returns a non-valid MCRegister.
static MCRegister matchRegisterNameHelper(StringRef Name) {
  MCRegister Reg = MatchRegisterName(Name);
  if (!Reg)
    Reg = MatchRegisterAltName(Name);
  return Reg;
}

void XYGPUAsmParser::rollbackLexer(SmallVectorImpl<AsmToken> &Tokens) {
  while (!Tokens.empty()) {
    getLexer().UnLex(Tokens.pop_back_val());
  }
}

void XYGPUAsmParser::lexWithBackup(SmallVectorImpl<AsmToken> &Tokens) {
  Tokens.push_back(getLexer().getTok());
  getLexer().Lex();
}

XYGPUAsmParser::AsmOperandKind
XYGPUAsmParser::getRegKind(const MCRegister Reg) const {
  if (XYGPUMCRegisterClasses[XYGPU::RegRCRegClassID].contains(Reg))
    return AsmOperandKind::Reg;
  if (XYGPUMCRegisterClasses[XYGPU::RegDRCRegClassID].contains(Reg))
    return AsmOperandKind::RegD;
  if (XYGPUMCRegisterClasses[XYGPU::RegQRCRegClassID].contains(Reg))
    return AsmOperandKind::RegQ;
  if (XYGPUMCRegisterClasses[XYGPU::URegRCRegClassID].contains(Reg))
    return AsmOperandKind::UReg;
  if (XYGPUMCRegisterClasses[XYGPU::URegDRCRegClassID].contains(Reg))
    return AsmOperandKind::URegD;
  if (XYGPUMCRegisterClasses[XYGPU::PredRCRegClassID].contains(Reg))
    return AsmOperandKind::Pred;
  if (XYGPUMCRegisterClasses[XYGPU::UPredRCRegClassID].contains(Reg))
    return AsmOperandKind::UPred;
  if (XYGPUMCRegisterClasses[XYGPU::BRegRCRegClassID].contains(Reg))
    return AsmOperandKind::BReg;
  if (XYGPUMCRegisterClasses[XYGPU::PredAllRCRegClassID].contains(Reg))
    return AsmOperandKind::PredAll;
  if (XYGPUMCRegisterClasses[XYGPU::UPredAllRCRegClassID].contains(Reg))
    return AsmOperandKind::UPredAll;
  llvm_unreachable("Invalid Reg");
}

StringRef
XYGPUAsmParser::getSignatureStrByEnum(XYGPUAsmParser::AsmOperandKind E) const {
  switch (E) {
  case AsmOperandKind::Reg: return "Reg";
  case AsmOperandKind::UReg: return "UReg";
  case AsmOperandKind::Pred: return "Pred";
  case AsmOperandKind::UPred: return "UPred";
  case AsmOperandKind::RegD: return "Reg";
  case AsmOperandKind::URegD: return "UReg";
  case AsmOperandKind::RegQ: return "Reg";
  case AsmOperandKind::BReg: return "BReg";
  case AsmOperandKind::PredAll: return "PredAll";
  case AsmOperandKind::UPredAll: return "UPredAll";
  case AsmOperandKind::IndirectReg: return "IndirectReg";
  case AsmOperandKind::Mem_0_0: return "Mem_0_0";
  case AsmOperandKind::Mem_0_32: return "Mem_0_32";
  case AsmOperandKind::Mem_0_64: return "Mem_0_64";
  case AsmOperandKind::Mem_32_0: return "Mem_32_0";
  case AsmOperandKind::Mem_32_32: return "Mem_32_32";
  case AsmOperandKind::Mem_32_64: return "Mem_32_64";
  case AsmOperandKind::Mem_64_0: return "Mem_64_0";
  case AsmOperandKind::Mem_64_32: return "Mem_64_32";
  case AsmOperandKind::Mem_64_64: return "Mem_64_64";
  case AsmOperandKind::CMem: return "CMem";
  case AsmOperandKind::CMem_r: return "CMem_r";
  case AsmOperandKind::CMem_u: return "CMem_u";
  case AsmOperandKind::Imm: return "Imm";
  default: llvm_unreachable("Invalid AsmOperandKind");
  }
}

XYGPUAsmParser::AsmOperandKind
XYGPUAsmParser::getAsmOperandKindEnumByName(std::string &Name) const {
  static const std::map<std::string, AsmOperandKind> AsmOperandKindEnumMap = {
    { "Reg", AsmOperandKind::Reg },
    { "UReg", AsmOperandKind::UReg },
    { "Pred", AsmOperandKind::Pred },
    { "UPred", AsmOperandKind::UPred },
    { "RegD", AsmOperandKind::RegD },
    { "URegD", AsmOperandKind::URegD },
    { "RegQ", AsmOperandKind::RegQ },
    { "BReg", AsmOperandKind::BReg },
    { "PredAll", AsmOperandKind::PredAll },
    { "UPredAll", AsmOperandKind::UPredAll },
    { "IndirectReg", AsmOperandKind::IndirectReg },
    { "Mem_0_0", AsmOperandKind::Mem_0_0 },
    { "Mem_0_32", AsmOperandKind::Mem_0_32 },
    { "Mem_0_64", AsmOperandKind::Mem_0_64 },
    { "Mem_32_0", AsmOperandKind::Mem_32_0 },
    { "Mem_32_32", AsmOperandKind::Mem_32_32 },
    { "Mem_32_64", AsmOperandKind::Mem_32_64 },
    { "Mem_64_0", AsmOperandKind::Mem_64_0 },
    { "Mem_64_32", AsmOperandKind::Mem_64_32 },
    { "Mem_64_64", AsmOperandKind::Mem_64_64 },
    { "CMem", AsmOperandKind::CMem },
    { "CMem_r", AsmOperandKind::CMem_r },
    { "CMem_u", AsmOperandKind::CMem_u },
    { "Imm", AsmOperandKind::Imm },
  };

  if (AsmOperandKindEnumMap.find(Name) != AsmOperandKindEnumMap.end())
    return AsmOperandKindEnumMap.at(Name);
  llvm_unreachable("Invalid AsmOperandKind Name");
}

bool XYGPUAsmParser::isZeroReg(MCRegister Reg) const {
  const MCRegisterInfo *TRI = getMRI();
  return TRI->isSuperRegisterEq(XYGPU::R255, Reg) ||
         TRI->isSuperRegisterEq(XYGPU::UR63, Reg);
}

MCRegister XYGPUAsmParser::convertZeroRegToExactReg(MCRegister Reg,
                                                    unsigned TgtKind) const {
  const MCRegisterInfo *TRI = getMRI();
  if (TRI->isSuperRegisterEq(XYGPU::R255, Reg)) {
    if (TgtKind == MCK_RegRC) {
      return XYGPU::R255;
    } else if (TgtKind == MCK_RegDRC) {
      return XYGPU::R254_D;
    } else if (TgtKind == MCK_RegQRC) {
      return XYGPU::R252_Q;
    }
  } else if (TRI->isSuperRegisterEq(XYGPU::UR63, Reg)) {
    if (TgtKind == MCK_URegRC) {
      return XYGPU::UR63;
    } else if (TgtKind == MCK_URegDRC) {
      return XYGPU::UR62_D;
    }
  }
  return XYGPU::NoRegister;
}

bool XYGPUAsmParser::isADDRModeMatchReg(MCRegister Reg,
                                        unsigned ADDRModeVal) const {
  AsmOperandKind RK = getRegKind(Reg);
  if (RK == AsmOperandKind::RegD || RK == AsmOperandKind::URegD) {
    if (ADDRModeVal != static_cast<unsigned>(XYGPU::ADDRMode::U64))
      return false;
  } else if (RK == AsmOperandKind::Reg || RK == AsmOperandKind::UReg) {
    if (ADDRModeVal != static_cast<unsigned>(XYGPU::ADDRMode::S32))
      return false;
  } else {
    llvm_unreachable("Invalid reg kind");
  }
  return true;
}

bool XYGPUAsmParser::getAsmFPBinVal(const std::unique_ptr<XYGPUOperand> &Opr,
                                    const fltSemantics &ToSemantics,
                                    int64_t &Val) {
  if (Opr->isFPImm()) {
    int64_t ImmVal = Opr->getImm();
    APFloat FPVal = APFloat(*reinterpret_cast<double *>(&ImmVal));
    bool LosesInfo;
    FPVal.convert(ToSemantics, APFloat::rmNearestTiesToEven, &LosesInfo);
    Val = FPVal.bitcastToAPInt().getZExtValue();
  } else if (Opr->isIntImm()) {
    APFloat FPVal = APFloat((double)(Opr->getImm()));
    bool LosesInfo;
    FPVal.convert(ToSemantics, APFloat::rmNearestTiesToEven, &LosesInfo);
    Val = FPVal.bitcastToAPInt().getZExtValue();
  } else if (Opr->isFPBinImm()) {
    Val = Opr->getImm();
  } else {
    return Error(Opr->getStartLoc(), "expect float immediate");
  }
  return false;
}

bool XYGPUAsmParser::parseRegister(MCRegister &Reg, SMLoc &StartLoc,
                                   SMLoc &EndLoc) {
  if (!tryParseRegister(Reg, StartLoc, EndLoc).isSuccess())
    return Error(StartLoc, "invalid register name");
  return false;
}

ParseStatus XYGPUAsmParser::tryParseRegister(MCRegister &Reg, SMLoc &StartLoc,
                                             SMLoc &EndLoc) {
  if (getLexer().isNot(AsmToken::Identifier))
    return ParseStatus::NoMatch;

  const AsmToken &Tok = getLexer().getTok();
  StartLoc = Tok.getLoc();
  EndLoc = Tok.getEndLoc();
  StringRef Name = getLexer().getTok().getIdentifier();

  Reg = matchRegisterNameHelper(Name);
  if (!Reg)
    return ParseStatus::NoMatch;

  getLexer().Lex(); // Eat identifier token.
  return ParseStatus::Success;
}

// We should handle forms like r0/r0.s32/r[0:1]/r[0:1].u64 excluding r[ur0]
ParseStatus XYGPUAsmParser::parseRegularReg(MCRegister &Reg, SMLoc &StartLoc,
                                            SMLoc &EndLoc, std::string *Suf) {
  if (getLexer().isNot(AsmToken::Identifier))
    return ParseStatus::NoMatch;
  StringRef FisrtTok = getLexer().getTok().getString();
  auto RegPrefix = getRegularRegInfo(FisrtTok);
  if (RegPrefix == nullptr)
    return ParseStatus::NoMatch;

  SmallVector<AsmToken, 8> Tokens;
  lexWithBackup(Tokens);
  if (FisrtTok.lower() == *RegPrefix) {
    assert(getLexer().is(AsmToken::LBrac));
    lexWithBackup(Tokens);
    while (getLexer().isNot(AsmToken::RBrac)) {
      lexWithBackup(Tokens);
    }
    lexWithBackup(Tokens);

    if (getLexer().is(AsmToken::Identifier)) {
      assert(getLexer().getTok().getString().starts_with("."));
      lexWithBackup(Tokens);
    }
  }

  std::string RegName = "";
  for (const AsmToken &Tok : Tokens) {
    RegName += Tok.getString().lower();
  }
  if (Suf != nullptr) {
    size_t Pos = RegName.find('.');
    if (Pos != std::string::npos) {
      *Suf = RegName.substr(Pos);
      RegName = RegName.substr(0, Pos);
    }
  }

  MCRegister TmpReg = matchRegisterNameHelper(RegName);
  if (!TmpReg) {
    rollbackLexer(Tokens);
    return ParseStatus::NoMatch;
  }
  Reg = TmpReg;
  StartLoc = Tokens.front().getLoc();
  EndLoc = Tokens.back().getEndLoc();
  return ParseStatus::Success;
}

// Currently recognized modifier combos:
//   abs + hsel + neg
//   abs + hsel2 + neg
//   abs + neg
//   bitnot
//   bsel
//   buf
//   hsel
//   lnot
//   neg
//   vsel
ParseStatus XYGPUAsmParser::parseAsmReg(AsmOprVector &Operands,
                                        AsmOprKindVector &OperandKinds) {
  SMLoc Loc = getLoc();
  SMLoc RegSLoc, RegELoc;
  MCRegister Reg = XYGPU::NoRegister;
  XYGPUOperand::Modifiers Modis;
  SmallVector<AsmToken, 8> Tokens;

  // Deal with identifier.
  auto dealWithIdentifier = [&]() -> ParseStatus {
    std::string Suffix = "";
    ParseStatus Res = parseRegularReg(Reg, RegSLoc, RegELoc, &Suffix);
    if (Res.isSuccess()) {
      if (Suffix != "") {
        if (Suffix[0] != '.')
          return ParseStatus::Failure;
        Suffix = Suffix.substr(1);
        auto OprModiEnum = getOprModiEnumByName(Suffix);
        if (std::holds_alternative<std::monostate>(OprModiEnum))
          return ParseStatus::Failure;
        if (std::holds_alternative<XYGPU::VSel>(OprModiEnum)) {
          Modis.setVSel(std::get<XYGPU::VSel>(OprModiEnum));
        } else if (std::holds_alternative<XYGPU::HSel2>(OprModiEnum)) {
          Modis.setHSel2(std::get<XYGPU::HSel2>(OprModiEnum));
        } else if (std::holds_alternative<XYGPU::HSel>(OprModiEnum)) {
          Modis.setHSel(std::get<XYGPU::HSel>(OprModiEnum));
        } else if (std::holds_alternative<XYGPU::BSel>(OprModiEnum)) {
          Modis.setBSel(std::get<XYGPU::BSel>(OprModiEnum));
        } else if (std::holds_alternative<XYGPU::Buf>(OprModiEnum)) {
          Modis.setBuf(std::get<XYGPU::Buf>(OprModiEnum));
        } else {
          llvm_unreachable("Unsupported reg modifier");
        }
        return ParseStatus::Success;
      }
      return ParseStatus::Success;
    }
    return Res;
  };

  // Deal with suffix.
  auto dealWithSuffix = [&]() -> ParseStatus {
    StringRef Suffix = getLexer().getTok().getString();
    if (Suffix[0] != '.')
      return ParseStatus::Failure;
    Suffix = Suffix.substr(1);
    auto OprModiEnum = getOprModiEnumByName(Suffix);
    if (std::holds_alternative<std::monostate>(OprModiEnum))
      return ParseStatus::Failure;
    if (std::holds_alternative<XYGPU::VSel>(OprModiEnum)) {
      Modis.setVSel(std::get<XYGPU::VSel>(OprModiEnum));
    } else if (std::holds_alternative<XYGPU::HSel2>(OprModiEnum)) {
      Modis.setHSel2(std::get<XYGPU::HSel2>(OprModiEnum));
    } else if (std::holds_alternative<XYGPU::HSel>(OprModiEnum)) {
      Modis.setHSel(std::get<XYGPU::HSel>(OprModiEnum));
    } else if (std::holds_alternative<XYGPU::BSel>(OprModiEnum)) {
      Modis.setBSel(std::get<XYGPU::BSel>(OprModiEnum));
    } else if (std::holds_alternative<XYGPU::Buf>(OprModiEnum)) {
      Modis.setBuf(std::get<XYGPU::Buf>(OprModiEnum));
    } else {
      llvm_unreachable("Unsupported reg modifier");
    }
    lexWithBackup(Tokens);
    return ParseStatus::Success;
  };

  // Deal with abs modifier.
  auto dealWithPipe = [&]() -> ParseStatus {
    lexWithBackup(Tokens);
    if (getLexer().is(AsmToken::Identifier)) {
      if (!dealWithIdentifier().isSuccess())
        return ParseStatus::Failure;
    } else {
      return ParseStatus::Failure;
    }
    if (getLexer().isNot(AsmToken::Pipe))
      return ParseStatus::Failure;
    lexWithBackup(Tokens);
    Modis.setAbs(XYGPU::SignModi::True);
    return ParseStatus::Success;
  };

  // Deal with neg modifier.
  auto dealWithMinus = [&]() -> ParseStatus {
    lexWithBackup(Tokens);
    if (getLexer().is(AsmToken::Identifier)) {
      if (!dealWithIdentifier().isSuccess())
        return ParseStatus::Failure;
    } else if (getLexer().is(AsmToken::Pipe)) {
      if (!dealWithPipe().isSuccess())
        return ParseStatus::Failure;
    } else {
      return ParseStatus::Failure;
    }
    Modis.setNeg(XYGPU::SignModi::True);
    return ParseStatus::Success;
  };

  // Deal with bitnot modifier.
  auto dealWithTilde = [&]() -> ParseStatus {
    lexWithBackup(Tokens);
    if (getLexer().is(AsmToken::Identifier)) {
      if (!dealWithIdentifier().isSuccess())
        return ParseStatus::Failure;
    } else {
      return ParseStatus::Failure;
    }
    Modis.setBitNot(XYGPU::SignModi::True);
    return ParseStatus::Success;
  };

  // Deal with lnot modifier.
  auto dealWithExclaim = [&]() -> ParseStatus {
    lexWithBackup(Tokens);
    if (getLexer().is(AsmToken::Identifier)) {
      if (!dealWithIdentifier().isSuccess())
        return ParseStatus::Failure;
    } else {
      return ParseStatus::Failure;
    }
    Modis.setLNot(XYGPU::PModi::True);
    return ParseStatus::Success;
  };

  if (getLexer().is(AsmToken::Identifier)) {
    if (!dealWithIdentifier().isSuccess()) {
      rollbackLexer(Tokens);
      return ParseStatus::NoMatch;
    }
  } else if (getLexer().is(AsmToken::Minus)) {
    if (!dealWithMinus().isSuccess()) {
      rollbackLexer(Tokens);
      return ParseStatus::NoMatch;
    }
  } else if (getLexer().is(AsmToken::Pipe)) {
    if (!dealWithPipe().isSuccess()) {
      rollbackLexer(Tokens);
      return ParseStatus::NoMatch;
    }
  } else if (getLexer().is(AsmToken::Tilde)) {
    if (!dealWithTilde().isSuccess()) {
      rollbackLexer(Tokens);
      return ParseStatus::NoMatch;
    }
  } else if (getLexer().is(AsmToken::Exclaim)) {
    if (!dealWithExclaim().isSuccess()) {
      rollbackLexer(Tokens);
      return ParseStatus::NoMatch;
    }
  } else {
    return ParseStatus::NoMatch;
  }
  if (getLexer().is(AsmToken::Identifier)) {
    if (!dealWithSuffix().isSuccess()) {
      rollbackLexer(Tokens);
      return ParseStatus::NoMatch;
    }
  }

  auto RegOpr = XYGPUOperand::createReg(Reg, Loc, Loc, Modis);
  Operands.push_back(
      XYGPUAsmOperand::createSingle(std::move(RegOpr), Loc, Loc));
  OperandKinds.push_back(getRegKind(Reg));
  return ParseStatus::Success;
}

ParseStatus XYGPUAsmParser::parseAsmSReg(AsmOprVector &Operands,
                                         AsmOprKindVector &OperandKinds) {
  if (getLexer().isNot(AsmToken::Identifier))
    return ParseStatus::NoMatch;

  StringRef StrRef = getLexer().getTok().getString();
  auto SRegEnum = getSRegEnumByName(StrRef);
  if (std::holds_alternative<std::monostate>(SRegEnum))
    return ParseStatus::NoMatch;

  SMLoc SLoc = getLoc();
  unsigned SRegNo;
  if (std::holds_alternative<XYGPU::SReg>(SRegEnum)) {
    SRegNo = static_cast<unsigned>(std::get<XYGPU::SReg>(SRegEnum));
  } else {
    llvm_unreachable("Unsupported sreg kind");
  }

  getLexer().Lex();
  auto SRegOpr = XYGPUOperand::createSReg(SRegNo, SLoc, getLoc());
  Operands.push_back(
      XYGPUAsmOperand::createSingle(std::move(SRegOpr), SLoc, getLoc()));
  OperandKinds.push_back(AsmOperandKind::Imm);
  return ParseStatus::Success;
}

ParseStatus XYGPUAsmParser::parseAsmFPImm(AsmOprVector &Operands,
                                          AsmOprKindVector &OperandKinds) {
  SMLoc SLoc = getLoc();
  SmallVector<AsmToken, 2> Tokens;

  if (getLexer().is(AsmToken::Integer) &&
      getLexer().getTok().getIntVal() == 0) {
    lexWithBackup(Tokens);
    if (getLexer().is(AsmToken::Identifier)) {
      StringRef FPValStr = getLexer().getTok().getString();
      if (FPValStr.starts_with_insensitive("f")) {
        FPValStr = FPValStr.substr(1);
        uint64_t FPBin = 0;
        if (!FPValStr.getAsInteger(16, FPBin)) {
          getLexer().Lex();
          auto ImmOpr = XYGPUOperand::createFPBinImm(FPBin, SLoc, getLoc());
          Operands.push_back(
              XYGPUAsmOperand::createSingle(std::move(ImmOpr), SLoc, getLoc()));
          OperandKinds.push_back(AsmOperandKind::Imm);
          return ParseStatus::Success;
        }
      }
    }
    rollbackLexer(Tokens);
  }

  bool IsNegative = false;
  if (getLexer().is(AsmToken::Minus)) {
    IsNegative = true;
    lexWithBackup(Tokens);
  }

  if (getLexer().isNot(AsmToken::Real)) {
    rollbackLexer(Tokens);
    return ParseStatus::NoMatch;
  }

  StringRef Num = getLexer().getTok().getString();
  APFloat RealVal(APFloat::IEEEdouble());
  auto RoundMode = APFloat::rmNearestTiesToEven;
  auto StatusOrErr = RealVal.convertFromString(Num, RoundMode);
  if (errorToBool(StatusOrErr.takeError())) {
    rollbackLexer(Tokens);
    return ParseStatus::NoMatch;
  }
  if (IsNegative)
    RealVal.changeSign();

  getLexer().Lex();
  auto ImmOpr = XYGPUOperand::createFPImm(
      RealVal.bitcastToAPInt().getZExtValue(), SLoc, getLoc());
  Operands.push_back(
      XYGPUAsmOperand::createSingle(std::move(ImmOpr), SLoc, getLoc()));
  OperandKinds.push_back(AsmOperandKind::Imm);
  return ParseStatus::Success;
}

ParseStatus XYGPUAsmParser::parseAsmImm(AsmOprVector &Operands,
                                        AsmOprKindVector &OperandKinds) {
  ParseStatus Res = parseAsmFPImm(Operands, OperandKinds);
  if (Res.isSuccess() || Res.isFailure())
    return Res;

  SMLoc SLoc = getLoc();
  SMLoc ELoc;
  const MCExpr *Expr;
  // TODO: finalize Asm split symbol.
  XYGPUMCExpr::VariantKind RefKind = XYGPUMCExpr::VK_None;
  if (parseOptionalToken(AsmToken::Colon)) {
    if (getLexer().getTok().is(AsmToken::Identifier)) {
      std::string LowerCase = getTok().getIdentifier().lower();
      RefKind = XYGPUMCExpr::getVariantKindForName(LowerCase);
    }
    getLexer().Lex(); // eat fixup kinds
    if (parseToken(AsmToken::Colon, "expect ':' after relocation specifier"))
      return ParseStatus::NoMatch;
  }

  switch (getLexer().getKind()) {
  default:
    return ParseStatus::NoMatch;
  case AsmToken::Dot:
  case AsmToken::Identifier:
  case AsmToken::LParen:
  case AsmToken::Minus:
  case AsmToken::Plus:
  case AsmToken::Tilde:
  case AsmToken::Integer:
    if (getParser().parseExpression(Expr, ELoc))
      return ParseStatus::Failure;
    break;
  }

  int64_t IntVal;
  if (Expr->evaluateAsAbsolute(IntVal)) {
    auto ImmOpr = XYGPUOperand::createIntImm(IntVal, SLoc, ELoc);
    Operands.push_back(
        XYGPUAsmOperand::createSingle(std::move(ImmOpr), SLoc, ELoc));
    OperandKinds.push_back(AsmOperandKind::Imm);
  } else {
    if (RefKind != XYGPUMCExpr::VK_None)
      Expr = XYGPUMCExpr::create(Expr, RefKind, getContext());
    auto ExprOpr = XYGPUOperand::createExpr(Expr, SLoc, ELoc);
    Operands.push_back(XYGPUAsmOperand::createSingle(std::move(ExprOpr), SLoc, ELoc));
    OperandKinds.push_back(AsmOperandKind::Imm);
  }

  return ParseStatus::Success;
}

ParseStatus XYGPUAsmParser::parseAsmMem(AsmOprVector &Oprs,
                                        AsmOprKindVector &OprKinds) {
  SMLoc Loc = getLoc();
  std::unique_ptr<XYGPUOperand> RegOpr(nullptr);
  std::unique_ptr<XYGPUOperand> URegOpr(nullptr);
  std::unique_ptr<XYGPUOperand> ImmOpr(nullptr);
  std::string RegAM = "_0";
  std::string URegAM = "_0";

  SmallVector<AsmToken, 8> Tokens;

  auto tryParseReg = [&]() -> ParseStatus {
    MCRegister Reg = XYGPU::NoRegister;
    SMLoc RegSLoc, RegELoc;
    std::string Suffix = "";
    ParseStatus Res = parseRegularReg(Reg, RegSLoc, RegELoc, &Suffix);
    assert(Res.isSuccess() || Res.isNoMatch());
    if (Res.isSuccess()) {
      XYGPUOperand::Modifiers Modis;
      bool HasSetADDRMode = false;
      XYGPU::ADDRMode ADDRModeVal;
      if (Suffix != "") {
        if (Suffix[0] != '.')
          return ParseStatus::Failure;
        Suffix = Suffix.substr(1);
        auto OprModiEnum = getOprModiEnumByName(Suffix);
        if (std::holds_alternative<std::monostate>(OprModiEnum))
          return ParseStatus::Failure;
        if (std::holds_alternative<XYGPU::ADDRMode>(OprModiEnum)) {
          HasSetADDRMode = true;
          ADDRModeVal = std::get<XYGPU::ADDRMode>(OprModiEnum);
          Modis.setADDRMode(ADDRModeVal);
        } else if (std::holds_alternative<XYGPU::RStride>(OprModiEnum)) {
          Modis.setRStride(std::get<XYGPU::RStride>(OprModiEnum));
        } else {
          llvm_unreachable("Unsupported reg modifier");
        }
      }
      AsmOperandKind RK = getRegKind(Reg);
      if (RK == AsmOperandKind::Reg || RK == AsmOperandKind::RegD) {
        if (RegOpr != nullptr)
          return ParseStatus::Failure;
        RegOpr = XYGPUOperand::createReg(Reg, RegSLoc, RegELoc, Modis);
        if (!isZeroReg(Reg)) {
          RegAM = (RK == AsmOperandKind::Reg) ? "_32" : "_64";
        } else {
          if (HasSetADDRMode) {
            if (ADDRModeVal == XYGPU::ADDRMode::S32)
              RegAM = "_32";
            else if (ADDRModeVal == XYGPU::ADDRMode::U64)
              RegAM = "_64";
            else
              llvm_unreachable("Unsupported addrmode value");
          }
        }
      } else if (RK == AsmOperandKind::UReg || RK == AsmOperandKind::URegD) {
        if (URegOpr != nullptr)
          return ParseStatus::Failure;
        URegOpr = XYGPUOperand::createReg(Reg, RegSLoc, RegELoc, Modis);
        if (!isZeroReg(Reg)) {
          URegAM = (RK == AsmOperandKind::UReg) ? "_32" : "_64";
        } else {
          if (HasSetADDRMode) {
            if (ADDRModeVal == XYGPU::ADDRMode::S32)
              URegAM = "_32";
            else if (ADDRModeVal == XYGPU::ADDRMode::U64)
              URegAM = "_64";
            else
              llvm_unreachable("Unsupported addrmode value");
          }
        }
      } else {
        return ParseStatus::Failure;
      }
      return ParseStatus::Success;
    } else if (Res.isNoMatch()) {
      return ParseStatus::NoMatch;
    } else {
      llvm_unreachable("Invalid result");
    }
  };

  if (getLexer().isNot(AsmToken::LBrac))
    return ParseStatus::NoMatch;

  lexWithBackup(Tokens);
  ParseStatus Res = tryParseReg();
  if (Res.isFailure())
    return Res;
  if (Res.isSuccess()) {
    if (getLexer().is(AsmToken::RBrac)) {
      getLexer().Lex();
      Oprs.push_back(
          XYGPUAsmOperand::createMem(std::move(RegOpr), std::move(URegOpr),
                                     std::move(ImmOpr), Loc, getLoc()));
      std::string EnumName = "Mem" + RegAM + URegAM;
      OprKinds.push_back(getAsmOperandKindEnumByName(EnumName));
      return ParseStatus::Success;
    } else if (getLexer().is(AsmToken::Plus)) {
      getLexer().Lex();
      Res = tryParseReg();
      if (Res.isFailure())
        return Res;
      if (Res.isSuccess()) {
        if (getLexer().is(AsmToken::RBrac)) {
          getLexer().Lex();
          Oprs.push_back(
              XYGPUAsmOperand::createMem(std::move(RegOpr), std::move(URegOpr),
                                         std::move(ImmOpr), Loc, getLoc()));
          std::string EnumName = "Mem" + RegAM + URegAM;
          OprKinds.push_back(getAsmOperandKindEnumByName(EnumName));
          return ParseStatus::Success;
        }
      }
    }
  }

  const MCExpr *Expr;
  SMLoc SLoc, ELoc;
  int64_t IntVal;
  SLoc = getLoc();
  // TODO: finalize Asm split symbol.
  XYGPUMCExpr::VariantKind RefKind = XYGPUMCExpr::VK_None;
  if (parseOptionalToken(AsmToken::Colon)) {
    if (getLexer().getTok().is(AsmToken::Identifier)) {
      std::string LowerCase = getTok().getIdentifier().lower();
      RefKind = XYGPUMCExpr::getVariantKindForName(LowerCase);
    }
    getLexer().Lex(); // eat fixup kinds
    if (parseToken(AsmToken::Colon, "expect ':' after relocation specifier"))
      return ParseStatus::NoMatch;
  }

  if (getParser().parseExpression(Expr, ELoc))
    return ParseStatus::Failure;
  if (Expr->evaluateAsAbsolute(IntVal)) {
    ImmOpr = XYGPUOperand::createIntImm(IntVal, SLoc, ELoc);
  } else {
    if (RefKind != XYGPUMCExpr::VK_None)
      Expr = XYGPUMCExpr::create(Expr, RefKind, getContext());
    ImmOpr = XYGPUOperand::createExpr(Expr, SLoc, ELoc);
  }

  if (getLexer().isNot(AsmToken::RBrac)) {
    return ParseStatus::Failure;
  }
  getLexer().Lex();
  Oprs.push_back(XYGPUAsmOperand::createMem(
      std::move(RegOpr), std::move(URegOpr), std::move(ImmOpr), Loc, getLoc()));
  std::string EnumName = "Mem" + RegAM + URegAM;
  OprKinds.push_back(getAsmOperandKindEnumByName(EnumName));
  return ParseStatus::Success;
}

// Currently recognized modifier combos:
//   abs + hsel + neg
//   abs + hsel2 + neg
//   abs + neg
//   bitnot
//   neg
//   vsel
ParseStatus XYGPUAsmParser::parseAsmCMem(AsmOprVector &Operands,
                                         AsmOprKindVector &OperandKinds) {
  SMLoc Loc = getLoc();
  XYGPUOperand::Modifiers Modis;
  std::unique_ptr<XYGPUOperand> CBankOpr(nullptr);
  std::unique_ptr<XYGPUOperand> COffsetOpr(nullptr);
  std::unique_ptr<XYGPUOperand> RegOpr(nullptr);
  std::unique_ptr<XYGPUOperand> URegOpr(nullptr);
  AsmOperandKind AsmOprKind = AsmOperandKind::CMem;

  SmallVector<AsmToken, 8> Tokens;
  bool CanRollback = true;

  auto isCMemPrefix = [&]() -> bool {
    return (getLexer().is(AsmToken::Identifier) &&
            getLexer().getTok().getString().equals_insensitive("c"));
  };

  auto dealWithCMem = [&]() -> ParseStatus {
    lexWithBackup(Tokens);
    SMLoc SLoc, ELoc;
    int64_t IntVal;

    if (getLexer().isNot(AsmToken::LBrac))
      return ParseStatus::Failure;
    CanRollback = false;
    getLexer().Lex();
    SLoc = getLoc();
    const MCExpr *Expr;
    if (getParser().parseExpression(Expr, ELoc))
      return ParseStatus::Failure;
    if (!Expr->evaluateAsAbsolute(IntVal))
      return ParseStatus::Failure;
    CBankOpr = XYGPUOperand::createCMemImm(IntVal, SLoc, ELoc);
    if (getLexer().isNot(AsmToken::RBrac)) {
      return ParseStatus::Failure;
    }
    getLexer().Lex();

    if (getLexer().isNot(AsmToken::LBrac))
      return ParseStatus::Failure;
    getLexer().Lex();

    MCRegister Reg = XYGPU::NoRegister;
    SMLoc RegSLoc, RegELoc;
    std::string Suffix = "";
    ParseStatus Res = parseRegularReg(Reg, RegSLoc, RegELoc, &Suffix);
    assert(Res.isSuccess() || Res.isNoMatch());
    if (Res.isSuccess()) {
      if (Suffix != "")
        return ParseStatus::Failure;
      if (AsmOprKind != AsmOperandKind::CMem)
        return ParseStatus::Failure;
      XYGPUOperand::Modifiers RegModis;
      AsmOperandKind RegKind = getRegKind(Reg);
      if (RegKind == AsmOperandKind::Reg) {
        RegOpr = XYGPUOperand::createReg(Reg, RegSLoc, RegELoc, RegModis);
        AsmOprKind = AsmOperandKind::CMem_r;
      } else if (RegKind == AsmOperandKind::UReg) {
        URegOpr = XYGPUOperand::createReg(Reg, RegSLoc, RegELoc, RegModis);
        AsmOprKind = AsmOperandKind::CMem_u;
      } else {
        llvm_unreachable("Invalid reg kind");
      }
    }

    SLoc = getLoc();
    // TODO: finalize Asm split symbol.
    XYGPUMCExpr::VariantKind RefKind = XYGPUMCExpr::VK_None;
    // FIXME: how to parse multi-express with split symbols?
    parseOptionalToken(AsmToken::Plus);
    if (parseOptionalToken(AsmToken::Colon)) {
      if (getLexer().getTok().is(AsmToken::Identifier)) {
        std::string LowerCase = getTok().getIdentifier().lower();
        RefKind = XYGPUMCExpr::getVariantKindForName(LowerCase);
      }
      getLexer().Lex(); // eat fixup kinds
      if (parseToken(AsmToken::Colon, "expect ':' after relocation specifier"))
        return ParseStatus::NoMatch;
    }
    if (getParser().parseExpression(Expr, ELoc))
      return ParseStatus::Failure;
    if (Expr->evaluateAsAbsolute(IntVal)) {
      COffsetOpr = XYGPUOperand::createCMemImm(IntVal, SLoc, ELoc);
    } else {
      if (RefKind != XYGPUMCExpr::VK_None)
        Expr = XYGPUMCExpr::create(Expr, RefKind, getContext());
      COffsetOpr = XYGPUOperand::createExpr(Expr, SLoc, ELoc);
    }

    if (getLexer().isNot(AsmToken::RBrac)) {
      return ParseStatus::Failure;
    }
    getLexer().Lex();
    return ParseStatus::Success;
  };

  // Deal with suffix.
  auto dealWithSuffix = [&]() -> ParseStatus {
    StringRef Suffix = getLexer().getTok().getString();
    if (Suffix[0] != '.')
      return ParseStatus::Failure;
    Suffix = Suffix.substr(1);
    auto OprModiEnum = getOprModiEnumByName(Suffix);
    if (std::holds_alternative<std::monostate>(OprModiEnum))
      return ParseStatus::Failure;
    if (std::holds_alternative<XYGPU::VSel>(OprModiEnum)) {
      Modis.setVSel(std::get<XYGPU::VSel>(OprModiEnum));
    } else if (std::holds_alternative<XYGPU::HSel2>(OprModiEnum)) {
      Modis.setHSel2(std::get<XYGPU::HSel2>(OprModiEnum));
    } else if (std::holds_alternative<XYGPU::HSel>(OprModiEnum)) {
      Modis.setHSel(std::get<XYGPU::HSel>(OprModiEnum));
    } else if (std::holds_alternative<XYGPU::BSel>(OprModiEnum)) {
      Modis.setBSel(std::get<XYGPU::BSel>(OprModiEnum));
    } else {
      llvm_unreachable("Unsupported cmem modifier");
    }
    getLexer().Lex();
    return ParseStatus::Success;
  };

  // Deal with abs modifier.
  auto dealWithPipe = [&]() -> ParseStatus {
    lexWithBackup(Tokens);
    if (isCMemPrefix()) {
      ParseStatus Res = dealWithCMem();
      if (!Res.isSuccess())
        return ParseStatus::Failure;
    } else {
      return ParseStatus::Failure;
    }
    if (getLexer().isNot(AsmToken::Pipe))
      return ParseStatus::Failure;
    lexWithBackup(Tokens);
    Modis.setAbs(XYGPU::SignModi::True);
    return ParseStatus::Success;
  };

  // Deal with neg modifier.
  auto dealWithMinus = [&]() -> ParseStatus {
    lexWithBackup(Tokens);
    if (isCMemPrefix()) {
      ParseStatus Res = dealWithCMem();
      if (!Res.isSuccess())
        return ParseStatus::Failure;
    } else if (getLexer().is(AsmToken::Pipe)) {
      ParseStatus Res = dealWithPipe();
      if (!Res.isSuccess())
        return ParseStatus::Failure;
    } else {
      return ParseStatus::Failure;
    }
    Modis.setNeg(XYGPU::SignModi::True);
    return ParseStatus::Success;
  };

  // Deal with bitnot modifier.
  auto dealWithTilde = [&]() -> ParseStatus {
    lexWithBackup(Tokens);
    if (isCMemPrefix()) {
      ParseStatus Res = dealWithCMem();
      if (!Res.isSuccess())
        return ParseStatus::Failure;
    } else {
      return ParseStatus::Failure;
    }
    Modis.setBitNot(XYGPU::SignModi::True);
    return ParseStatus::Success;
  };

  ParseStatus Res;
  if (isCMemPrefix()) {
    Res = dealWithCMem();
  } else if (getLexer().is(AsmToken::Minus)) {
    Res = dealWithMinus();
  } else if (getLexer().is(AsmToken::Pipe)) {
    Res = dealWithPipe();
  } else if (getLexer().is(AsmToken::Tilde)) {
    Res = dealWithTilde();
  } else {
    return ParseStatus::NoMatch;
  }
  if (!Res.isSuccess()) {
    if (CanRollback) {
      rollbackLexer(Tokens);
      return ParseStatus::NoMatch;
    }
    return ParseStatus::Failure;
  }
  if (getLexer().is(AsmToken::Identifier)) {
    if (!dealWithSuffix().isSuccess())
      return ParseStatus::Failure;
  }
  Operands.push_back(XYGPUAsmOperand::createCMem(
      std::move(CBankOpr), std::move(COffsetOpr), std::move(RegOpr),
      std::move(URegOpr), Modis, Loc, getLoc()));
  OperandKinds.push_back(AsmOprKind);
  return ParseStatus::Success;
}

ParseStatus
XYGPUAsmParser::parseAsmIndirectReg(AsmOprVector &Operands,
                                    AsmOprKindVector &OperandKinds) {
  SMLoc Loc = getLoc();
  SMLoc RegSLoc, RegELoc;
  MCRegister Reg = XYGPU::NoRegister;
  XYGPUOperand::Modifiers Modis;
  SMLoc SLoc, ELoc;
  int64_t IntVal = 0;
  std::unique_ptr<XYGPUOperand> URegOpr(nullptr);
  std::unique_ptr<XYGPUOperand> ImmOffsetOpr(nullptr);
  SmallVector<AsmToken, 8> Tokens;

  if (getLexer().isNot(AsmToken::Identifier))
    return ParseStatus::NoMatch;
  StringRef Prefix = getLexer().getTok().getString();
  if (!(Prefix.equals_insensitive("r") || Prefix.equals_insensitive("ur")))
    return ParseStatus::NoMatch;

  lexWithBackup(Tokens);
  if (getLexer().isNot(AsmToken::LBrac)) {
    rollbackLexer(Tokens);
    return ParseStatus::NoMatch;
  }
  lexWithBackup(Tokens);
  ParseStatus Res = parseRegularReg(Reg, RegSLoc, RegELoc);
  if (Res.isNoMatch()) {
    lexWithBackup(Tokens);
    return ParseStatus::NoMatch;
  }
  assert(Res.isSuccess());
  assert(getRegKind(Reg) == AsmOperandKind::UReg);

  if (getLexer().isNot(AsmToken::RBrac)) {
    const MCExpr *Expr;
    if (getParser().parseExpression(Expr, ELoc))
      return ParseStatus::Failure;
    if (!Expr->evaluateAsAbsolute(IntVal))
      return ParseStatus::Failure;
  }

  if (getLexer().isNot(AsmToken::RBrac))
    return ParseStatus::Failure;
  getLexer().Lex();

  URegOpr = XYGPUOperand::createReg(Reg, RegSLoc, RegELoc, Modis);
  ImmOffsetOpr = XYGPUOperand::createIntImm(IntVal, SLoc, ELoc);

  Operands.push_back(XYGPUAsmOperand::createIndirectReg(
      std::move(URegOpr), std::move(ImmOffsetOpr), Loc, getLoc()));
  OperandKinds.push_back(AsmOperandKind::IndirectReg);
  return ParseStatus::Success;
}

ParseStatus XYGPUAsmParser::parseAsmOperand(AsmOprVector &Operands,
                                            AsmOprKindVector &OperandKinds) {
  ParseStatus Result = parseAsmReg(Operands, OperandKinds);
  if (Result.isSuccess() || Result.isFailure())
    return Result;

  Result = parseAsmCMem(Operands, OperandKinds);
  if (Result.isSuccess() || Result.isFailure())
    return Result;

  Result = parseAsmMem(Operands, OperandKinds);
  if (Result.isSuccess() || Result.isFailure())
    return Result;

  Result = parseAsmIndirectReg(Operands, OperandKinds);
  if (Result.isSuccess() || Result.isFailure())
    return Result;

  Result = parseAsmSReg(Operands, OperandKinds);
  if (Result.isSuccess() || Result.isFailure())
    return Result;

  return parseAsmImm(Operands, OperandKinds);
}

bool XYGPUAsmParser::getInstrModiVals(
    const SmallVectorImpl<StringRef> &InstrModiList,
    const InstrModisAsmInfoTy &InstrModiAsmInfo, SMLoc &NameLoc,
    std::vector<int> &InstrModiVals) {
  for (StringRef InstrModi : InstrModiList) {
    bool IsFound = false;
    unsigned Idx = 0;
    for (const auto &[KV, DefaultVal, IsSolidified] : InstrModiAsmInfo) {
      if (InstrModiVals.at(Idx) == ~0 && KV.find(InstrModi.str()) != KV.end()) {
        InstrModiVals[Idx] = KV.at(InstrModi.str());
        IsFound = true;
        break;
      }
      Idx++;
    }
    if (!IsFound)
      return Error(NameLoc, Twine("wrong instruction modifier: ") + InstrModi);
  }

  for (unsigned Idx = 0; Idx < InstrModiVals.size(); Idx++) {
    const auto &[KV, DefaultVal, IsSolidified] = InstrModiAsmInfo[Idx];
    if (InstrModiVals[Idx] == ~0) {
      if (DefaultVal == ~0u)
        return Error(NameLoc, Twine("lack of instruction modifier"));
      InstrModiVals[Idx] = DefaultVal;
    }
  }

  return false;
}

bool XYGPUAsmParser::parseMnemonic(StringRef Name, SMLoc &NameLoc,
                                   const std::string &OprsSig,
                                   StringRef &Mnemonic,
                                   SmallVectorImpl<StringRef> &InstrModiList,
                                   OperandVector &Operands) {
  auto [OriginalMnemonic, InstrModis] = Name.split('.');
  Mnemonic = OriginalMnemonic;
  if (!InstrModis.empty())
    InstrModis.split(InstrModiList, '.');

  std::string MnemonicStr = Mnemonic.str();
  std::string FirstStageInstrId = MnemonicStr + "@" + OprsSig;
  auto It = InstrModisAsmInfos.find(FirstStageInstrId);
  if (It != InstrModisAsmInfos.end()) {
    const auto &InstrModiAsmInfo = *(It->second);
    std::vector<int> InstrModiVals(InstrModiAsmInfo.size(), ~0);

    if (getInstrModiVals(InstrModiList, InstrModiAsmInfo, NameLoc,
                         InstrModiVals))
      return true;

    std::string MnemonicRemapId = MnemonicStr;
    for (unsigned Idx = 0; Idx < InstrModiVals.size(); Idx++) {
      const auto &[KV, DefaultVal, IsSolidified] = InstrModiAsmInfo[Idx];
      if (!IsSolidified)
        continue;
      MnemonicRemapId += ":";
      MnemonicRemapId += std::to_string(InstrModiVals[Idx]);
    }
    Mnemonic = MnemonicMap.at(MnemonicRemapId);
  }

  // First operand is the token of instruction mnemonic.
  Operands.push_back(XYGPUOperand::createToken(Mnemonic, NameLoc));
  return false;
}

bool XYGPUAsmParser::parseInstrModis(
    const std::string &InstrId, const SmallVectorImpl<StringRef> &InstrModiList,
    SMLoc &NameLoc, OperandVector &Operands) {
  auto It = InstrModisAsmInfos.find(InstrId);
  if (It == InstrModisAsmInfos.end())
    return Error(NameLoc, Twine("unknown instruction"));
  const auto &InstrModiAsmInfo = *(It->second);
  std::vector<int> InstrModiVals(InstrModiAsmInfo.size(), ~0);

  if (getInstrModiVals(InstrModiList, InstrModiAsmInfo, NameLoc, InstrModiVals))
    return true;

  for (unsigned Idx = 0; Idx < InstrModiVals.size(); Idx++) {
    const auto &[KV, DefaultVal, IsSolidified] = InstrModiAsmInfo[Idx];
    if (IsSolidified)
      continue;
    Operands.push_back(
        XYGPUOperand::createIntImm(InstrModiVals[Idx], NameLoc, NameLoc));
  }
  return false;
}

bool XYGPUAsmParser::parseControlCode() {
  SmallVector<AsmToken, 16> Tokens;
  SmallVector<StringRef, 16> TokStrs;
  while (getLexer().isNot(AsmToken::EndOfStatement)) {
    TokStrs.push_back(getLexer().getTok().getString());
    lexWithBackup(Tokens);
  }

  std::optional<std::pair<unsigned, StringRef>> Res =
      ExtraInfo.CtrlCodeObj.fromAsmTokens(TokStrs);
  if (Res.has_value()) {
    if (Res->first == Tokens.size())
      return Error(getLoc(), Res->second);
    else
      return Error(Tokens[Res->first].getLoc(), Res->second);
  }
  return false;
}

bool XYGPUAsmParser::parseInstruction(ParseInstructionInfo &Info,
                                      StringRef Name, SMLoc NameLoc,
                                      OperandVector &Operands) {
  // Parse asm and get operands signature.
  SmallVector<std::unique_ptr<XYGPUAsmOperand>, 8> AsmOperands;
  SmallVector<AsmOperandKind, 8> AsmOperandKinds;
  bool IsFirstOperand = true;
  while (getLexer().isNot(AsmToken::EndOfStatement)) {
    // Meet control code region.
    if (getLexer().is(AsmToken::Dollar))
      break;

    if (!IsFirstOperand) {
      if (getLexer().is(AsmToken::Comma))
        getLexer().Lex();
      else
        return Error(getLoc(), "comma expected here");
    }
    SMLoc AsmOprLoc = getLoc();
    if (!parseAsmOperand(AsmOperands, AsmOperandKinds).isSuccess()) {
      return Error(AsmOprLoc, "unrecognized operand");
    }
    IsFirstOperand = false;
  }
  std::string OprsSig = "";
  if (AsmOperandKinds.size() > 0) {
    OprsSig =
        std::accumulate(AsmOperandKinds.begin(), AsmOperandKinds.end(), OprsSig,
                        [this](const std::string &a, const AsmOperandKind b) {
                          return a + getSignatureStrByEnum(b).str() + ";";
                        });
    OprsSig.pop_back();
  }

  StringRef Mnemonic;
  SmallVector<StringRef, 8> InstrModiList;

  // Deal with mnemonic.
  if (parseMnemonic(Name, NameLoc, OprsSig, Mnemonic, InstrModiList, Operands))
    return true;

  // Calculate InstrId.
  std::string InstrId = Mnemonic.str() + ":" + OprsSig;

  // Deal with instruction modifiers.
  if (parseInstrModis(InstrId, InstrModiList, NameLoc, Operands))
    return true;

  // Deal with operands.
  if (parseOprs(InstrId, NameLoc, AsmOperands, Operands))
    return true;

  // Deal with control code.
  if (parseControlCode())
    return true;

  // Verify operand value.
  if (verifyOprsVal(InstrId, Operands))
    return true;

  // Consume the EndOfStatement.
  assert(getLexer().is(AsmToken::EndOfStatement));
  getLexer().Lex();

  return false;
}

bool XYGPUAsmParser::matchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                                             OperandVector &Operands,
                                             MCStreamer &Out,
                                             uint64_t &ErrorInfo,
                                             bool MatchingInlineAsm) {
  auto processCustomOperandDiag = [&](unsigned MatchError) -> bool {
    // Handle the case when the error message is of specific type
    // other than the generic Match_InvalidOperand, and the
    // corresponding operand is missing.
    if (MatchError > FIRST_TARGET_MATCH_RESULT_TY) {
      SMLoc ErrorLoc = IDLoc;
      if (ErrorInfo != ~0ULL && ErrorInfo >= Operands.size())
        return Error(ErrorLoc, "too few operands for instruction");
    } else {
      llvm_unreachable("Unknown match type detected!");
    }

    SMLoc ErrorLoc = ((XYGPUOperand &)*Operands[ErrorInfo]).getStartLoc();
    switch (MatchError) {
    default:
      llvm_unreachable("Unknown match type detected!");
      return false;
    case Match_InvalidPModi:
      return Error(ErrorLoc, "invalid pred modifier");
    case Match_InvalidPred:
      return Error(ErrorLoc, "invalid pred register");
    case Match_InvalidUPred:
      return Error(ErrorLoc, "invalid upred register");
    case Match_InvalidCMemBank:
      return Error(ErrorLoc, "invalid cmem bank operand");
    case Match_InvalidCMemOffset:
      return Error(ErrorLoc, "invalid cmem offset operand");
    case Match_InvalidSReg:
      return Error(ErrorLoc, "invalid sreg operand");
    }
  };

  MCInst Inst;
  FeatureBitset MissingFeatures;
  auto Result = MatchInstructionImpl(Operands, Inst, ErrorInfo, MissingFeatures,
                                     MatchingInlineAsm);
  switch (Result) {
  case Match_Success: {
    Inst.setLoc(IDLoc);
    Out.emitInstruction(Inst, getSTI());
    return false;
  }
  case Match_MnemonicFail: {
    FeatureBitset FBS = ComputeAvailableFeatures(getSTI().getFeatureBits());
    std::string Suggestion = XYGPUMnemonicSpellCheck(
        ((XYGPUOperand &)*Operands[0]).getToken(), FBS, 0);
    return Error(IDLoc, "unrecognized instruction mnemonic" + Suggestion);
  }
  case Match_MissingFeature: {
    assert(MissingFeatures.any() && "Unknown missing features!");
    bool FirstFeature = true;
    std::string Msg = "instruction requires the following:";
    for (unsigned i = 0, e = MissingFeatures.size(); i != e; ++i) {
      if (MissingFeatures[i]) {
        Msg += FirstFeature ? " " : ", ";
        Msg += getSubtargetFeatureName(i);
        FirstFeature = false;
      }
    }
    return Error(IDLoc, Msg);
  }
  case Match_InvalidOperand: {
    SMLoc ErrorLoc = IDLoc;
    if (ErrorInfo != ~0ULL) {
      if (ErrorInfo >= Operands.size())
        return Error(ErrorLoc, "too few operands for instruction");

      ErrorLoc = ((XYGPUOperand &)*Operands[ErrorInfo]).getStartLoc();
      if (ErrorLoc == SMLoc())
        ErrorLoc = IDLoc;
    }
    return Error(ErrorLoc, "invalid operand for instruction");
  }
  default:
    return processCustomOperandDiag(Result);
  }
  return true;
}

unsigned XYGPUAsmParser::validateTargetOperandClass(MCParsedAsmOperand &AsmOp,
                                                    unsigned Kind) {
  return Match_InvalidOperand;
}

void XYGPUAsmParser::postMatchProcess(MCInst &MI) {
  // Set control code.
  ExtraInfo.CtrlCodeObj.applyToInstr(MI);
}

void XYGPUAsmParser::consumeCustomLeadingTokens() {
  ExtraInfo.clear();

  // Check if is a predicate in such format:
  //   @P2
  //   @!P3
  //   @PT
  if (getLexer().is(AsmToken::At)) {
    size_t NumLex = 1;
    ExtraInfo.PredLoc = getLoc();
    AsmToken TokenBuf[2];
    MutableArrayRef<AsmToken> Buf(TokenBuf, 2);
    size_t Num = getLexer().peekTokens(Buf);
    if (Num != 2)
      return;
    AsmToken CandRegTok = TokenBuf[0];
    if (CandRegTok.is(AsmToken::Exclaim)) {
      CandRegTok = TokenBuf[1];
      ExtraInfo.PredObj.LNot = true;
      NumLex += 1;
    }
    if (CandRegTok.isNot(AsmToken::Identifier))
      return;
    StringRef Name = CandRegTok.getIdentifier();
    MCRegister Reg = matchRegisterNameHelper(Name.lower());
    if (!Reg)
      return;
    ExtraInfo.PredObj.Reg = Reg;
    NumLex += 1;
    for (size_t I = 0; I < NumLex; ++I)
      getLexer().Lex();
    return;
  }
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeXYGPUAsmParser() {
  RegisterMCAsmParser<XYGPUAsmParser> X(getTheXYGPUTarget());
}

//===----------------------------------------------------------------------===//
// Custom methods

ParseStatus XYGPUAsmParser::parsePGuardModi(OperandVector &Operands) {
  Operands.push_back(XYGPUOperand::createIntImm(
      ExtraInfo.PredObj.LNot, ExtraInfo.PredLoc, ExtraInfo.PredLoc));
  return ParseStatus::Success;
}

ParseStatus XYGPUAsmParser::parsePGuard(OperandVector &Operands) {
  if (ExtraInfo.PredObj.Reg == XYGPU::NoRegister)
    ExtraInfo.PredObj.Reg = XYGPU::P7;
  // Use a dummy Modifiers.
  XYGPUOperand::Modifiers Modis;
  Operands.push_back(XYGPUOperand::createReg(
      ExtraInfo.PredObj.Reg, ExtraInfo.PredLoc, ExtraInfo.PredLoc, Modis));
  return ParseStatus::Success;
}

ParseStatus XYGPUAsmParser::parseUPGuard(OperandVector &Operands) {
  if (ExtraInfo.PredObj.Reg == XYGPU::NoRegister)
    ExtraInfo.PredObj.Reg = XYGPU::UP7;
  // Use a dummy Modifiers.
  XYGPUOperand::Modifiers Modis;
  Operands.push_back(XYGPUOperand::createReg(
      ExtraInfo.PredObj.Reg, ExtraInfo.PredLoc, ExtraInfo.PredLoc, Modis));
  return ParseStatus::Success;
}