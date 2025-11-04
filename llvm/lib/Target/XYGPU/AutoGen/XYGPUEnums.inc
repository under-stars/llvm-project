//===-- XYGPUEnums.inc ------------------------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
// Automatically generated file, do not edit!
//===----------------------------------------------------------------------===//

#ifdef DEFINE_ENUMS
enum class ADDRMode {
  S32 = 0,
  U64 = 1,
};

enum class ATOMDType {
  U32 = 0,
  S32 = 1,
  U64 = 2,
  S64 = 3,
  F32 = 4,
  F16x2 = 5,
  BF16x2 = 6,
  F64 = 7,
};

enum class ATOMOp {
  CAS = 0,
  CAST = 1,
  EXCH = 2,
  ADD = 3,
  MIN = 4,
  MAX = 5,
  INC = 6,
  DEC = 7,
  AND = 8,
  OR = 9,
  XOR = 10,
};

enum class B2RMode {
  WARP = 0,
  BAR = 1,
};

enum class BARMode {
  SYNC = 0,
  ARV = 1,
};

enum class BARREDOp {
  AND = 0,
  OR = 1,
  POPC = 2,
};

enum class BMBF {
  BM = 0,
  BF = 1,
};

enum class BMMA_MNK {
  _88128 = 0,
  _168128 = 1,
  _168256 = 2,
};

enum class BRACond {
  NoCond = 0,
  U = 1,
  DIV = 2,
  CONV = 3,
};

enum class BRClear {
  NoClear = 0,
  CLEAR = 1,
};

enum class BSel {
  B0 = 0,
  B1 = 1,
  B2 = 2,
  B3 = 3,
};

enum class BVal {
  BM = 0,
  BF = 1,
};

enum class BasePCMode {
  REL = 0,
  ABS = 1,
};

enum class BoolOp {
  AND = 0,
  OR = 1,
  XOR = 2,
};

enum class Buf {
  nobuf = 0,
  buf = 1,
};

enum class CCTLAllOp {
  WBALL = 0,
  IVALL = 1,
};

enum class CCTLOp {
  PF1 = 0,
  PF2 = 1,
  PML2 = 2,
  DML2 = 3,
  RML2 = 4,
  WB = 5,
  IV = 6,
};

enum class CWMode {
  C = 0,
  W = 1,
};

enum class CompOp {
  EQ = 0,
  NE = 1,
  LT = 2,
  LE = 3,
  GT = 4,
  GE = 5,
};

enum class EXBool {
  PAND = 0,
  POR = 1,
};

enum class F2FPDstType {
  TF32 = 0,
  F16 = 1,
  BF16 = 2,
  E5M2 = 3,
  E4M3 = 4,
  E8 = 5,
  E3M2 = 6,
  E2M3 = 7,
  E2M1 = 8,
};

enum class F2FPSrcType {
  F32 = 0,
  F16 = 1,
  BF16 = 2,
  E5M2 = 3,
  E4M3 = 4,
  E8 = 5,
  E3M2 = 6,
  E2M3 = 7,
  E2M1 = 8,
};

enum class F2INTZ {
  NoNTZ = 0,
  NTZ = 1,
};

enum class F2IRnd {
  ROUND = 0,
  CEIL = 1,
  FLOOR = 2,
  TRUNC = 3,
};

enum class F32F16 {
  F32 = 0,
  F16 = 1,
};

enum class FCMPOp {
  EQ = 0,
  NE = 1,
  LT = 2,
  LE = 3,
  GT = 4,
  GE = 5,
  EQU = 6,
  NEU = 7,
  LTU = 8,
  LEU = 9,
  GTU = 10,
  GEU = 11,
  Nan = 12,
  NUM = 13,
};

enum class FLOSH {
  NoSH = 0,
  SH = 1,
};

enum class FMULScale {
  NoScale = 0,
  D2 = 1,
  D4 = 2,
  D8 = 3,
  M2 = 4,
  M4 = 5,
  M8 = 6,
};

enum class FPFtz {
  NoFTZ = 0,
  FTZ = 1,
};

enum class FPRound {
  RN = 0,
  RP = 1,
  RM = 2,
  RZ = 3,
};

enum class FPSat {
  NoSAT = 0,
  SAT = 1,
};

enum class FTypes {
  F64 = 0,
  F32 = 1,
  F16 = 2,
  BF16 = 3,
};

enum class FTypesNoF64 {
  F32 = 0,
  F16 = 1,
  BF16 = 2,
};

enum class FullITypes {
  S8 = 0,
  U8 = 1,
  S16 = 2,
  U16 = 3,
  S32 = 4,
  U32 = 5,
  S64 = 6,
  U64 = 7,
};

enum class FullITypesNoI64 {
  S8 = 0,
  U8 = 1,
  S16 = 2,
  U16 = 3,
  S32 = 4,
  U32 = 5,
};

enum class HFmtV2 {
  F16_V2 = 0,
  BF16_V2 = 1,
};

enum class HMMA_ABType {
  TF32 = 0,
  BF16 = 1,
  F16 = 2,
};

enum class HMMA_CDType {
  F16 = 0,
  F32 = 1,
};

enum class HMMA_MNK {
  _1684 = 0,
  _1688 = 1,
  _16816 = 2,
};

enum class HMMA_SP_MNK {
  _1688 = 0,
  _16816 = 1,
  _16832 = 2,
};

enum class HSel {
  H0 = 0,
  H1 = 1,
};

enum class HSel2 {
  H1_H0 = 0,
  H0_H0 = 1,
  H1_H1 = 2,
  F32 = 3,
};

enum class I16Type {
  S16 = 0,
  U16 = 1,
};

enum class I2IDType {
  S8 = 0,
  U8 = 1,
  S16 = 2,
  U16 = 3,
};

enum class I2IPDType {
  S2 = 0,
  U2 = 1,
  S4 = 2,
  U4 = 3,
  S8 = 4,
  U8 = 5,
  S16 = 6,
  U16 = 7,
};

enum class I8Type {
  S8 = 0,
  U8 = 1,
};

enum class I8Types {
  S8 = 0,
  U8 = 1,
};

enum class IExt {
  NoX = 0,
  X = 1,
};

enum class IMMA_ABType {
  U4 = 0,
  S4 = 1,
  U8 = 2,
  S8 = 3,
};

enum class IMMA_MNK {
  _8816 = 0,
  _8832 = 1,
  _16816 = 2,
  _16832 = 3,
  _16864 = 4,
};

enum class IMMA_SAT {
  NoSAT = 0,
  SAT = 1,
};

enum class IMMA_SP_MNK {
  _16832 = 0,
  _16864 = 1,
  _168128 = 2,
};

enum class IType {
  S32 = 0,
  U32 = 1,
};

enum class L1EvictPriority {
  EN = 0,
  EF = 1,
  EL = 2,
  EU = 3,
  NA = 4,
};

enum class LDGSTSCacheOp {
  BYPASS = 0,
  ACCESS = 1,
};

enum class LDGSTSFILL {
  NoZFILL = 0,
  ZFILL = 1,
};

enum class LDGSTSSize {
  _32 = 0,
  _64 = 1,
  _128 = 2,
};

enum class LDSMMode {
  M88 = 0,
  MT88 = 1,
};

enum class LDSMNum {
  _1 = 0,
  _2 = 1,
  _4 = 2,
};

enum class LDSMSize {
  _16 = 0,
};

enum class LEASX32 {
  NoSX32 = 0,
  SX32 = 1,
};

enum class LOHI {
  LO = 0,
  HI = 1,
};

enum class LOPOp {
  AND = 0,
  OR = 1,
  XOR = 2,
};

enum class MATCHDType {
  U32 = 0,
  U64 = 1,
};

enum class MATCHOp {
  ANY = 0,
  ALL = 1,
};

enum class MEMBARMode {
  ALL = 0,
  SC = 1,
};

enum class MEMDType {
  S8 = 0,
  U8 = 1,
  S16 = 2,
  U16 = 3,
  _32 = 4,
  _64 = 5,
  _128 = 6,
};

enum class MEMOrder {
  WEAK = 0,
  STRONG = 1,
  MMIO = 2,
};

enum class MEMScope {
  TC = 0,
  GPU = 1,
};

enum class MEMSpace {
  G = 0,
  S = 1,
  L = 2,
  C = 3,
};

enum class MOVW {
  _32 = 0,
  _64 = 1,
};

enum class MUFUDType {
  F32 = 0,
  F64H = 1,
  F16_V2 = 2,
  BF16_V2 = 3,
  F16 = 4,
  BF16 = 5,
};

enum class MUFUOp {
  COS = 0,
  SIN = 1,
  EX2 = 2,
  LG2 = 3,
  RCP = 4,
  RSQ = 5,
  SQRT = 6,
  TANH = 7,
};

enum class Nan {
  NoNAN = 0,
  Nan = 1,
};

enum class OMMA_ABType {
  E2M1 = 0,
  E0M3 = 1,
};

enum class OMMA_CDType {
  F16 = 0,
  F32 = 1,
};

enum class OMMA_MNK {
  _16864 = 0,
};

enum class PModi {
  False = 0,
  True = 1,
};

enum class PRMTMode {
  IDX = 0,
  F4E = 1,
  B4E = 2,
  RC8 = 3,
  ECL = 4,
  ECR = 5,
  RC16 = 6,
};

enum class QMMA_ABType {
  E4M3 = 0,
  E5M2 = 1,
};

enum class QMMA_CDType {
  F16 = 0,
  F32 = 1,
};

enum class QMMA_MNK {
  _16816 = 0,
  _16832 = 1,
};

enum class QMMA_SP_MNK {
  _16832 = 0,
  _16864 = 1,
};

enum class REDOp {
  ADD = 0,
  MIN = 1,
  MAX = 2,
  INC = 3,
  DEC = 4,
  AND = 5,
  OR = 6,
  XOR = 7,
};

enum class REDUXDType {
  U32 = 0,
  S32 = 1,
};

enum class REDUXOp {
  AND = 0,
  OR = 1,
  XOR = 2,
  SUM = 3,
  MAX = 4,
  MIN = 5,
};

enum class RELU {
  NoRELU = 0,
  RELU = 1,
};

enum class RStride {
  X1 = 0,
  X4 = 1,
  X8 = 2,
  X16 = 3,
};

enum class SATFINITE {
  NoSATFINITE = 0,
  SATFINITE = 1,
};

enum class SHFDType {
  S64 = 0,
  U64 = 1,
  S32 = 2,
  U32 = 3,
};

enum class SHFDir {
  L = 0,
  R = 1,
};

enum class SHFLMode {
  IDX = 0,
  UP = 1,
  DOWN = 2,
  BFLY = 3,
};

enum class SReg {
  SR_LANEID = 0,
  SR_EQMASK = 1,
  SR_LTMASK = 2,
  SR_LEMASK = 3,
  SR_GTMASK = 4,
  SR_GEMASK = 5,
  SR_WARPID = 6,
  SR_TEID = 7,
  SR_TCID = 8,
  SR_PHYTCID = 9,
  SR_PHYWARPID = 10,
  SR_CTAID_X = 11,
  SR_CTAID_Y = 12,
  SR_CTAID_Z = 13,
  SR_PM0 = 14,
  SR_PM1 = 15,
  SR_PM2 = 16,
  SR_PM3 = 17,
  SR_PM4 = 18,
  SR_PM5 = 19,
  SR_PM6 = 20,
  SR_PM7 = 21,
  SR_PM_HI0 = 22,
  SR_PM_HI1 = 23,
  SR_PM_HI2 = 24,
  SR_PM_HI3 = 25,
  SR_PM_HI4 = 26,
  SR_PM_HI5 = 27,
  SR_PM_HI6 = 28,
  SR_PM_HI7 = 29,
  SR_LWINHI = 30,
  SR_LWINLO = 31,
  SR_LWINSZ = 32,
  SR_SWINHI = 33,
  SR_SWINLO = 34,
  SR_SMEMSZ = 35,
  SR_CLOCKLO = 36,
  SR_CLOCKHI = 37,
  SR_GLOBALTIMELO = 38,
  SR_GLOBALTIMEHI = 39,
  SR_REGALLOC = 40,
  SR_GLOBALERRORSTATUS = 41,
  SR_WARPERRORSTATUS = 42,
  SRZ = 255,
};

enum class SignModi {
  False = 0,
  True = 1,
};

enum class VOTEOp {
  ANY = 0,
  ALL = 1,
  EQ = 2,
};

enum class VSel {
  S0 = 0,
  S1 = 1,
  S2 = 2,
  S3 = 3,
};

enum class CCSched {
  W0 = 0,
  W1 = 1,
  W2 = 2,
  W3 = 3,
  W4 = 4,
  W5 = 5,
  W6 = 6,
  W7 = 7,
  W8 = 8,
  W9 = 9,
  W10 = 10,
  W11 = 11,
  W12 = 12,
  W13 = 13,
  W14 = 14,
  W15 = 15,
  W0Y = 16,
  W1Y = 17,
  W2Y = 18,
  W3Y = 19,
  W4Y = 20,
  W5Y = 21,
  W6Y = 22,
  W7Y = 23,
  W8Y = 24,
  W9Y = 25,
  W10Y = 26,
  W11Y = 27,
  W12Y = 28,
  W13Y = 29,
  W14Y = 30,
  W15Y = 31,
};

enum class CCTrap {
  NoTrap = 0,
  Trap = 1,
};

enum class CCWrSB {
  WSB0 = 0,
  WSB1 = 1,
  WSB2 = 2,
  WSB3 = 3,
  WSB4 = 4,
  WSB5 = 5,
  WSBInvalid = 6,
  WSBNone = 7,
};

#endif // DEFINE_ENUMS

#ifdef DEFINE_OPRMODI_ENUM_GET_NAME_FUNCS
StringRef getNameByEnum(ADDRMode E) {
  switch (E) {
  case ADDRMode::S32: return "s32";
  case ADDRMode::U64: return "u64";
  }
}

StringRef getNameByEnum(BSel E) {
  switch (E) {
  case BSel::B0: return "b0";
  case BSel::B1: return "b1";
  case BSel::B2: return "b2";
  case BSel::B3: return "b3";
  }
}

StringRef getNameByEnum(Buf E) {
  switch (E) {
  case Buf::nobuf: return "nobuf";
  case Buf::buf: return "buf";
  }
}

StringRef getNameByEnum(HSel E) {
  switch (E) {
  case HSel::H0: return "h0";
  case HSel::H1: return "h1";
  }
}

StringRef getNameByEnum(HSel2 E) {
  switch (E) {
  case HSel2::H1_H0: return "h1_h0";
  case HSel2::H0_H0: return "h0_h0";
  case HSel2::H1_H1: return "h1_h1";
  case HSel2::F32: return "f32";
  }
}

StringRef getNameByEnum(RStride E) {
  switch (E) {
  case RStride::X1: return "x1";
  case RStride::X4: return "x4";
  case RStride::X8: return "x8";
  case RStride::X16: return "x16";
  }
}

StringRef getNameByEnum(VSel E) {
  switch (E) {
  case VSel::S0: return "s0";
  case VSel::S1: return "s1";
  case VSel::S2: return "s2";
  case VSel::S3: return "s3";
  }
}

#endif // DEFINE_OPRMODI_ENUM_GET_NAME_FUNCS

#ifdef DEFINE_OPRMODI_ENUM_GET_ENUM_FUNCS
std::variant<std::monostate, ADDRMode, BSel, Buf, HSel, HSel2, RStride, VSel> getOprModiEnumByName(StringRef S) {
  static const std::map<std::string, std::variant<std::monostate, ADDRMode, BSel, Buf, HSel, HSel2, RStride, VSel>> Name2EnumMap = {
    { "s32", ADDRMode::S32 },
    { "u64", ADDRMode::U64 },
    { "b0", BSel::B0 },
    { "b1", BSel::B1 },
    { "b2", BSel::B2 },
    { "b3", BSel::B3 },
    { "nobuf", Buf::nobuf },
    { "buf", Buf::buf },
    { "h0", HSel::H0 },
    { "h1", HSel::H1 },
    { "h1_h0", HSel2::H1_H0 },
    { "h0_h0", HSel2::H0_H0 },
    { "h1_h1", HSel2::H1_H1 },
    { "f32", HSel2::F32 },
    { "x1", RStride::X1 },
    { "x4", RStride::X4 },
    { "x8", RStride::X8 },
    { "x16", RStride::X16 },
    { "s0", VSel::S0 },
    { "s1", VSel::S1 },
    { "s2", VSel::S2 },
    { "s3", VSel::S3 },
  };

  std::string LowerName = S.lower();
  if (Name2EnumMap.find(LowerName) != Name2EnumMap.end())
    return Name2EnumMap.at(LowerName);
  return std::monostate{};
}
#endif // DEFINE_OPRMODI_ENUM_GET_ENUM_FUNCS

#ifdef DEFINE_CTRLCODE_ENUM_REFLECTION_FUNCS
StringRef getNameByEnum(CCSched E) {
  switch (E) {
  case CCSched::W0: return "w0";
  case CCSched::W1: return "w1";
  case CCSched::W2: return "w2";
  case CCSched::W3: return "w3";
  case CCSched::W4: return "w4";
  case CCSched::W5: return "w5";
  case CCSched::W6: return "w6";
  case CCSched::W7: return "w7";
  case CCSched::W8: return "w8";
  case CCSched::W9: return "w9";
  case CCSched::W10: return "w10";
  case CCSched::W11: return "w11";
  case CCSched::W12: return "w12";
  case CCSched::W13: return "w13";
  case CCSched::W14: return "w14";
  case CCSched::W15: return "w15";
  case CCSched::W0Y: return "w0y";
  case CCSched::W1Y: return "w1y";
  case CCSched::W2Y: return "w2y";
  case CCSched::W3Y: return "w3y";
  case CCSched::W4Y: return "w4y";
  case CCSched::W5Y: return "w5y";
  case CCSched::W6Y: return "w6y";
  case CCSched::W7Y: return "w7y";
  case CCSched::W8Y: return "w8y";
  case CCSched::W9Y: return "w9y";
  case CCSched::W10Y: return "w10y";
  case CCSched::W11Y: return "w11y";
  case CCSched::W12Y: return "w12y";
  case CCSched::W13Y: return "w13y";
  case CCSched::W14Y: return "w14y";
  case CCSched::W15Y: return "w15y";
  }
}

StringRef getNameByEnum(CCTrap E) {
  switch (E) {
  case CCTrap::NoTrap: return "notrap";
  case CCTrap::Trap: return "trap";
  }
}

StringRef getNameByEnum(CCWrSB E) {
  switch (E) {
  case CCWrSB::WSB0: return "wsb0";
  case CCWrSB::WSB1: return "wsb1";
  case CCWrSB::WSB2: return "wsb2";
  case CCWrSB::WSB3: return "wsb3";
  case CCWrSB::WSB4: return "wsb4";
  case CCWrSB::WSB5: return "wsb5";
  case CCWrSB::WSBInvalid: return "wsbinvalid";
  case CCWrSB::WSBNone: return "wsbnone";
  }
}


std::variant<std::monostate, CCSched, CCTrap, CCWrSB> getCCEnumByName(StringRef S) {
  static const std::map<std::string, std::variant<std::monostate, CCSched, CCTrap, CCWrSB>> Name2EnumMap = {
    { "w0", CCSched::W0 },
    { "w1", CCSched::W1 },
    { "w2", CCSched::W2 },
    { "w3", CCSched::W3 },
    { "w4", CCSched::W4 },
    { "w5", CCSched::W5 },
    { "w6", CCSched::W6 },
    { "w7", CCSched::W7 },
    { "w8", CCSched::W8 },
    { "w9", CCSched::W9 },
    { "w10", CCSched::W10 },
    { "w11", CCSched::W11 },
    { "w12", CCSched::W12 },
    { "w13", CCSched::W13 },
    { "w14", CCSched::W14 },
    { "w15", CCSched::W15 },
    { "w0y", CCSched::W0Y },
    { "w1y", CCSched::W1Y },
    { "w2y", CCSched::W2Y },
    { "w3y", CCSched::W3Y },
    { "w4y", CCSched::W4Y },
    { "w5y", CCSched::W5Y },
    { "w6y", CCSched::W6Y },
    { "w7y", CCSched::W7Y },
    { "w8y", CCSched::W8Y },
    { "w9y", CCSched::W9Y },
    { "w10y", CCSched::W10Y },
    { "w11y", CCSched::W11Y },
    { "w12y", CCSched::W12Y },
    { "w13y", CCSched::W13Y },
    { "w14y", CCSched::W14Y },
    { "w15y", CCSched::W15Y },
    { "notrap", CCTrap::NoTrap },
    { "trap", CCTrap::Trap },
    { "wsb0", CCWrSB::WSB0 },
    { "wsb1", CCWrSB::WSB1 },
    { "wsb2", CCWrSB::WSB2 },
    { "wsb3", CCWrSB::WSB3 },
    { "wsb4", CCWrSB::WSB4 },
    { "wsb5", CCWrSB::WSB5 },
    { "wsbinvalid", CCWrSB::WSBInvalid },
    { "wsbnone", CCWrSB::WSBNone },
  };

  std::string LowerName = S.lower();
  if (Name2EnumMap.find(LowerName) != Name2EnumMap.end())
    return Name2EnumMap.at(LowerName);
  return std::monostate{};
}
#endif // DEFINE_CTRLCODE_ENUM_REFLECTION_FUNCS

#ifdef DEFINE_SREG_ENUM_GET_NAME_FUNCS
StringRef getNameByEnum(SReg E) {
  switch (E) {
  case SReg::SR_LANEID: return "sr_laneid";
  case SReg::SR_EQMASK: return "sr_eqmask";
  case SReg::SR_LTMASK: return "sr_ltmask";
  case SReg::SR_LEMASK: return "sr_lemask";
  case SReg::SR_GTMASK: return "sr_gtmask";
  case SReg::SR_GEMASK: return "sr_gemask";
  case SReg::SR_WARPID: return "sr_warpid";
  case SReg::SR_TEID: return "sr_teid";
  case SReg::SR_TCID: return "sr_tcid";
  case SReg::SR_PHYTCID: return "sr_phytcid";
  case SReg::SR_PHYWARPID: return "sr_phywarpid";
  case SReg::SR_CTAID_X: return "sr_ctaid.x";
  case SReg::SR_CTAID_Y: return "sr_ctaid.y";
  case SReg::SR_CTAID_Z: return "sr_ctaid.z";
  case SReg::SR_PM0: return "sr_pm0";
  case SReg::SR_PM1: return "sr_pm1";
  case SReg::SR_PM2: return "sr_pm2";
  case SReg::SR_PM3: return "sr_pm3";
  case SReg::SR_PM4: return "sr_pm4";
  case SReg::SR_PM5: return "sr_pm5";
  case SReg::SR_PM6: return "sr_pm6";
  case SReg::SR_PM7: return "sr_pm7";
  case SReg::SR_PM_HI0: return "sr_pm_hi0";
  case SReg::SR_PM_HI1: return "sr_pm_hi1";
  case SReg::SR_PM_HI2: return "sr_pm_hi2";
  case SReg::SR_PM_HI3: return "sr_pm_hi3";
  case SReg::SR_PM_HI4: return "sr_pm_hi4";
  case SReg::SR_PM_HI5: return "sr_pm_hi5";
  case SReg::SR_PM_HI6: return "sr_pm_hi6";
  case SReg::SR_PM_HI7: return "sr_pm_hi7";
  case SReg::SR_LWINHI: return "sr_lwinhi";
  case SReg::SR_LWINLO: return "sr_lwinlo";
  case SReg::SR_LWINSZ: return "sr_lwinsz";
  case SReg::SR_SWINHI: return "sr_swinhi";
  case SReg::SR_SWINLO: return "sr_swinlo";
  case SReg::SR_SMEMSZ: return "sr_smemsz";
  case SReg::SR_CLOCKLO: return "sr_clocklo";
  case SReg::SR_CLOCKHI: return "sr_clockhi";
  case SReg::SR_GLOBALTIMELO: return "sr_globaltimelo";
  case SReg::SR_GLOBALTIMEHI: return "sr_globaltimehi";
  case SReg::SR_REGALLOC: return "sr_regalloc";
  case SReg::SR_GLOBALERRORSTATUS: return "sr_globalerrorstatus";
  case SReg::SR_WARPERRORSTATUS: return "sr_warperrorstatus";
  case SReg::SRZ: return "srz";
  }
}

#endif // DEFINE_SREG_ENUM_GET_NAME_FUNCS

#ifdef DEFINE_SREG_ENUM_GET_ENUM_FUNCS
std::variant<std::monostate, SReg> getSRegEnumByName(StringRef S) {
  static const std::map<std::string, std::variant<std::monostate, SReg>> Name2EnumMap = {
    { "sr_laneid", SReg::SR_LANEID },
    { "sr_eqmask", SReg::SR_EQMASK },
    { "sr_ltmask", SReg::SR_LTMASK },
    { "sr_lemask", SReg::SR_LEMASK },
    { "sr_gtmask", SReg::SR_GTMASK },
    { "sr_gemask", SReg::SR_GEMASK },
    { "sr_warpid", SReg::SR_WARPID },
    { "sr_teid", SReg::SR_TEID },
    { "sr_tcid", SReg::SR_TCID },
    { "sr_phytcid", SReg::SR_PHYTCID },
    { "sr_phywarpid", SReg::SR_PHYWARPID },
    { "sr_ctaid.x", SReg::SR_CTAID_X },
    { "sr_ctaid.y", SReg::SR_CTAID_Y },
    { "sr_ctaid.z", SReg::SR_CTAID_Z },
    { "sr_pm0", SReg::SR_PM0 },
    { "sr_pm1", SReg::SR_PM1 },
    { "sr_pm2", SReg::SR_PM2 },
    { "sr_pm3", SReg::SR_PM3 },
    { "sr_pm4", SReg::SR_PM4 },
    { "sr_pm5", SReg::SR_PM5 },
    { "sr_pm6", SReg::SR_PM6 },
    { "sr_pm7", SReg::SR_PM7 },
    { "sr_pm_hi0", SReg::SR_PM_HI0 },
    { "sr_pm_hi1", SReg::SR_PM_HI1 },
    { "sr_pm_hi2", SReg::SR_PM_HI2 },
    { "sr_pm_hi3", SReg::SR_PM_HI3 },
    { "sr_pm_hi4", SReg::SR_PM_HI4 },
    { "sr_pm_hi5", SReg::SR_PM_HI5 },
    { "sr_pm_hi6", SReg::SR_PM_HI6 },
    { "sr_pm_hi7", SReg::SR_PM_HI7 },
    { "sr_lwinhi", SReg::SR_LWINHI },
    { "sr_lwinlo", SReg::SR_LWINLO },
    { "sr_lwinsz", SReg::SR_LWINSZ },
    { "sr_swinhi", SReg::SR_SWINHI },
    { "sr_swinlo", SReg::SR_SWINLO },
    { "sr_smemsz", SReg::SR_SMEMSZ },
    { "sr_clocklo", SReg::SR_CLOCKLO },
    { "sr_clockhi", SReg::SR_CLOCKHI },
    { "sr_globaltimelo", SReg::SR_GLOBALTIMELO },
    { "sr_globaltimehi", SReg::SR_GLOBALTIMEHI },
    { "sr_regalloc", SReg::SR_REGALLOC },
    { "sr_globalerrorstatus", SReg::SR_GLOBALERRORSTATUS },
    { "sr_warperrorstatus", SReg::SR_WARPERRORSTATUS },
    { "srz", SReg::SRZ },
  };

  std::string LowerName = S.lower();
  if (Name2EnumMap.find(LowerName) != Name2EnumMap.end())
    return Name2EnumMap.at(LowerName);
  return std::monostate{};
}
#endif // DEFINE_SREG_ENUM_GET_ENUM_FUNCS

