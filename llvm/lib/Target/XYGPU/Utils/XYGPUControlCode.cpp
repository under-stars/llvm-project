//===-- XYGPUControlCode.cpp - XYGPU Control Code -------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "XYGPUControlCode.h"
#include "XYGPUBaseInfo.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/MC/MCInst.h"
#include <map>
#include <variant>

using namespace llvm;

namespace llvm {
namespace XYGPU {
namespace ControlCode {

#define DEFINE_CTRLCODE_ENUM_REFLECTION_FUNCS
#include "AutoGen/XYGPUEnums.inc"
#undef DEFINE_CTRLCODE_ENUM_REFLECTION_FUNCS

void ControlCodeTy::reset() {
  Sched = DEFAULT_SCHED;
  WSB = DEFAULT_WSB;
  Req.clear();
  Trap = DEFAULT_TRAP;
}

void ControlCodeTy::applyToInstr(MCInst &MI) const {
  unsigned Opc = MI.getOpcode();
  int SchedOprIdx = XYGPU::getNamedOperandIdx(Opc, XYGPU::OpName::sched);
  MCOperand &SchedOpr = MI.getOperand(SchedOprIdx);
  SchedOpr.setImm(static_cast<int>(Sched));
  int WrSBOprIdx = XYGPU::getNamedOperandIdx(Opc, XYGPU::OpName::wsb);
  MCOperand &WrSBOpr = MI.getOperand(WrSBOprIdx);
  WrSBOpr.setImm(static_cast<int>(WSB));
  int ReqOprIdx = XYGPU::getNamedOperandIdx(Opc, XYGPU::OpName::req);
  MCOperand &ReqOpr = MI.getOperand(ReqOprIdx);
  unsigned ReqVal = 0;
  for (unsigned SB : Req)
    ReqVal |= (1 << SB);
  ReqOpr.setImm(ReqVal);
  int TrapOprIdx = XYGPU::getNamedOperandIdx(Opc, XYGPU::OpName::trap);
  MCOperand &TrapOpr = MI.getOperand(TrapOprIdx);
  TrapOpr.setImm(static_cast<int>(Trap));
}

void ControlCodeTy::parseFromInstr(const MCInst &MI) {
  unsigned Opc = MI.getOpcode();
  int SchedOprIdx = XYGPU::getNamedOperandIdx(Opc, XYGPU::OpName::sched);
  const MCOperand &SchedOpr = MI.getOperand(SchedOprIdx);
  Sched = static_cast<CCSched>(SchedOpr.getImm());
  int WrSBOprIdx = XYGPU::getNamedOperandIdx(Opc, XYGPU::OpName::wsb);
  const MCOperand &WrSBOpr = MI.getOperand(WrSBOprIdx);
  WSB = static_cast<CCWrSB>(WrSBOpr.getImm());
  int ReqOprIdx = XYGPU::getNamedOperandIdx(Opc, XYGPU::OpName::req);
  const MCOperand &ReqOpr = MI.getOperand(ReqOprIdx);
  unsigned ReqVal = ReqOpr.getImm();
  for (unsigned SB = 0; SB < SCOREBOARD_NUM; ++SB) {
    if (ReqVal & (1 << SB))
      Req.insert(SB);
  }
  int TrapOprIdx = XYGPU::getNamedOperandIdx(Opc, XYGPU::OpName::trap);
  const MCOperand &TrapOpr = MI.getOperand(TrapOprIdx);
  Trap = static_cast<CCTrap>(TrapOpr.getImm());
}

std::string ControlCodeTy::toString() const {
  std::string Res = "";
  if (!ENABLE_DEFAULT_SCHED || Sched != DEFAULT_SCHED) {
    Res += "$";
    Res += getNameByEnum(Sched);
    Res += " ";
  }
  if (!Req.empty()) {
    Res += "$Req{";
    for (unsigned Idx : Req) {
      Res += std::to_string(Idx);
      Res += ",";
    }
    Res.pop_back();
    Res += "} ";
  }
  if (WSB != DEFAULT_WSB) {
    Res += "$";
    Res += getNameByEnum(WSB);
    Res += " ";
  }
  if (Trap != DEFAULT_TRAP) {
    Res += "$";
    Res += getNameByEnum(Trap);
    Res += " ";
  }
  if (!Res.empty())
    Res.pop_back();
  return Res;
}

std::optional<std::pair<unsigned, StringRef>>
ControlCodeTy::fromAsmTokens(SmallVectorImpl<StringRef> &Tokens) {
  CCSched TmpSched = DEFAULT_SCHED;
  CCWrSB TmpWrSB = DEFAULT_WSB;
  CCReq TmpReq;
  CCTrap TmpTrap = DEFAULT_TRAP;
  bool HasSetSched = false;

  auto dealWithCCField = [&](unsigned StartIdx) -> std::pair<bool, unsigned> {
    unsigned CurIdx = StartIdx;
    if (Tokens[CurIdx] != "$")
      return {false, StartIdx};

    CurIdx++;
    if (CurIdx >= Tokens.size())
      return {false, StartIdx};
    auto CCEnum = getCCEnumByName(Tokens[CurIdx]);
    if (!std::holds_alternative<std::monostate>(CCEnum)) {
      if (std::holds_alternative<CCSched>(CCEnum)) {
        TmpSched = std::get<CCSched>(CCEnum);
        HasSetSched = true;
      } else if (std::holds_alternative<CCWrSB>(CCEnum)) {
        TmpWrSB = std::get<CCWrSB>(CCEnum);
      } else if (std::holds_alternative<CCTrap>(CCEnum)) {
        TmpTrap = std::get<CCTrap>(CCEnum);
      } else {
        llvm_unreachable("Unsupported control code field");
      }
      return {true, ++CurIdx};
    }
    if (Tokens[CurIdx].equals_insensitive("Req")) {
      CurIdx++;
      if (Tokens[CurIdx] != "{")
        return {false, CurIdx};
      TmpReq.clear();

      CurIdx++;
      unsigned SB;
      while (Tokens[CurIdx] != "}") {
        if (Tokens[CurIdx].getAsInteger(10, SB) || SB >= SCOREBOARD_NUM)
          return {false, CurIdx};
        TmpReq.insert(SB);

        CurIdx++;
        if (Tokens[CurIdx] == ",")
          CurIdx++;
      }
      return {true, ++CurIdx};
    }
    return {false, StartIdx};
  };

  unsigned Idx = 0;
  bool IsSucc = false;
  while (Idx < Tokens.size()) {
    std::tie(IsSucc, Idx) = dealWithCCField(Idx);
    if (!IsSucc)
      return {{Idx, "invalid operand"}};
  }

  if (!ENABLE_DEFAULT_SCHED && !HasSetSched)
    return {{Tokens.size(), "sched not set"}};

  Sched = TmpSched;
  WSB = TmpWrSB;
  Req = TmpReq;
  Trap = TmpTrap;
  return std::nullopt;
}

} // end namespace ControlCode
} // end namespace XYGPU
} // end namespace llvm
