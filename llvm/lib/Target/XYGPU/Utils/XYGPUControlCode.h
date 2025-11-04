//===-- XYGPUControlCode.h - XYGPU Control Code ---------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_UTILS_XYGPUCONTROLCODE_H
#define LLVM_LIB_TARGET_XYGPU_UTILS_XYGPUCONTROLCODE_H

#include "XYGPUDefines.h"
#include "llvm/ADT/SmallSet.h"
#include "llvm/ADT/StringRef.h"
#include <optional>

namespace llvm {

class MCInst;
namespace XYGPU {
namespace ControlCode {

class ControlCodeTy {
public:
  using CCReq = SmallSet<unsigned, 2>;

private:
  static const unsigned SCOREBOARD_NUM = 6; // [0, 6)
  static const CCWrSB DEFAULT_WSB = CCWrSB::WSBNone;
  static const CCSched DEFAULT_SCHED = CCSched::W0;
  static const CCTrap DEFAULT_TRAP = CCTrap::NoTrap;
  static const bool ENABLE_DEFAULT_SCHED = false;

  CCSched Sched;
  CCWrSB WSB;
  CCReq Req;
  CCTrap Trap;

public:
  ControlCodeTy() { reset(); }
  void reset();

  void parseFromInstr(const MCInst &MI);
  void applyToInstr(MCInst &MI) const;

  // Return nullopt if successfully parse the asm tokens, or n ∈ [0, s] which s
  // is the size of TokStrs and n indicates the error position (n == s indicates
  // Sched does not set).
  std::optional<std::pair<unsigned, StringRef>>
  fromAsmTokens(SmallVectorImpl<StringRef> &TokStrs);
  std::string toString() const;

  CCSched getSched() const { return Sched; }

  CCWrSB getWSB() const { return WSB; }
  const CCReq &getReq() const { return Req; }
  CCTrap getTrap() const { return Trap; }
};

} // end namespace ControlCode
} // end namespace XYGPU
} // end namespace llvm

#endif