//===-- XYGPUOperands.inc.td - Operand Description ---------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
// Automatically generated file, do not edit!
//===----------------------------------------------------------------------===//

def ADDRMode {
  int S32 = 0;
  int U64 = 1;
  PatLeaf S32_Pat = PatLeaf<(i32 0)>;
  PatLeaf U64_Pat = PatLeaf<(i32 1)>;
}

def ATOMDType {
  int U32 = 0;
  int S32 = 1;
  int U64 = 2;
  int S64 = 3;
  int F32 = 4;
  int F16x2 = 5;
  int BF16x2 = 6;
  int F64 = 7;
  PatLeaf U32_Pat = PatLeaf<(i32 0)>;
  PatLeaf S32_Pat = PatLeaf<(i32 1)>;
  PatLeaf U64_Pat = PatLeaf<(i32 2)>;
  PatLeaf S64_Pat = PatLeaf<(i32 3)>;
  PatLeaf F32_Pat = PatLeaf<(i32 4)>;
  PatLeaf F16x2_Pat = PatLeaf<(i32 5)>;
  PatLeaf BF16x2_Pat = PatLeaf<(i32 6)>;
  PatLeaf F64_Pat = PatLeaf<(i32 7)>;
}

def ATOMOp {
  int CAS = 0;
  int CAST = 1;
  int EXCH = 2;
  int ADD = 3;
  int MIN = 4;
  int MAX = 5;
  int INC = 6;
  int DEC = 7;
  int AND = 8;
  int OR = 9;
  int XOR = 10;
  PatLeaf CAS_Pat = PatLeaf<(i32 0)>;
  PatLeaf CAST_Pat = PatLeaf<(i32 1)>;
  PatLeaf EXCH_Pat = PatLeaf<(i32 2)>;
  PatLeaf ADD_Pat = PatLeaf<(i32 3)>;
  PatLeaf MIN_Pat = PatLeaf<(i32 4)>;
  PatLeaf MAX_Pat = PatLeaf<(i32 5)>;
  PatLeaf INC_Pat = PatLeaf<(i32 6)>;
  PatLeaf DEC_Pat = PatLeaf<(i32 7)>;
  PatLeaf AND_Pat = PatLeaf<(i32 8)>;
  PatLeaf OR_Pat = PatLeaf<(i32 9)>;
  PatLeaf XOR_Pat = PatLeaf<(i32 10)>;
}

def B2RMode {
  int WARP = 0;
  int BAR = 1;
  PatLeaf WARP_Pat = PatLeaf<(i32 0)>;
  PatLeaf BAR_Pat = PatLeaf<(i32 1)>;
}

def BARMode {
  int SYNC = 0;
  int ARV = 1;
  PatLeaf SYNC_Pat = PatLeaf<(i32 0)>;
  PatLeaf ARV_Pat = PatLeaf<(i32 1)>;
}

def BARREDOp {
  int AND = 0;
  int OR = 1;
  int POPC = 2;
  PatLeaf AND_Pat = PatLeaf<(i32 0)>;
  PatLeaf OR_Pat = PatLeaf<(i32 1)>;
  PatLeaf POPC_Pat = PatLeaf<(i32 2)>;
}

def BMBF {
  int BM = 0;
  int BF = 1;
  PatLeaf BM_Pat = PatLeaf<(i32 0)>;
  PatLeaf BF_Pat = PatLeaf<(i32 1)>;
}

def BMMA_MNK {
  int _88128 = 0;
  int _168128 = 1;
  int _168256 = 2;
  PatLeaf _88128_Pat = PatLeaf<(i32 0)>;
  PatLeaf _168128_Pat = PatLeaf<(i32 1)>;
  PatLeaf _168256_Pat = PatLeaf<(i32 2)>;
}

def BRACond {
  int NoCond = 0;
  int U = 1;
  int DIV = 2;
  int CONV = 3;
  PatLeaf NoCond_Pat = PatLeaf<(i32 0)>;
  PatLeaf U_Pat = PatLeaf<(i32 1)>;
  PatLeaf DIV_Pat = PatLeaf<(i32 2)>;
  PatLeaf CONV_Pat = PatLeaf<(i32 3)>;
}

def BRClear {
  int NoClear = 0;
  int CLEAR = 1;
  PatLeaf NoClear_Pat = PatLeaf<(i32 0)>;
  PatLeaf CLEAR_Pat = PatLeaf<(i32 1)>;
}

def BSel {
  int B0 = 0;
  int B1 = 1;
  int B2 = 2;
  int B3 = 3;
  PatLeaf B0_Pat = PatLeaf<(i32 0)>;
  PatLeaf B1_Pat = PatLeaf<(i32 1)>;
  PatLeaf B2_Pat = PatLeaf<(i32 2)>;
  PatLeaf B3_Pat = PatLeaf<(i32 3)>;
}

def BVal {
  int BM = 0;
  int BF = 1;
  PatLeaf BM_Pat = PatLeaf<(i32 0)>;
  PatLeaf BF_Pat = PatLeaf<(i32 1)>;
}

def BasePCMode {
  int REL = 0;
  int ABS = 1;
  PatLeaf REL_Pat = PatLeaf<(i32 0)>;
  PatLeaf ABS_Pat = PatLeaf<(i32 1)>;
}

def BoolOp {
  int AND = 0;
  int OR = 1;
  int XOR = 2;
  PatLeaf AND_Pat = PatLeaf<(i32 0)>;
  PatLeaf OR_Pat = PatLeaf<(i32 1)>;
  PatLeaf XOR_Pat = PatLeaf<(i32 2)>;
}

def Buf {
  int nobuf = 0;
  int buf = 1;
  PatLeaf nobuf_Pat = PatLeaf<(i32 0)>;
  PatLeaf buf_Pat = PatLeaf<(i32 1)>;
}

def CCTLAllOp {
  int WBALL = 0;
  int IVALL = 1;
  PatLeaf WBALL_Pat = PatLeaf<(i32 0)>;
  PatLeaf IVALL_Pat = PatLeaf<(i32 1)>;
}

def CCTLOp {
  int PF1 = 0;
  int PF2 = 1;
  int PML2 = 2;
  int DML2 = 3;
  int RML2 = 4;
  int WB = 5;
  int IV = 6;
  PatLeaf PF1_Pat = PatLeaf<(i32 0)>;
  PatLeaf PF2_Pat = PatLeaf<(i32 1)>;
  PatLeaf PML2_Pat = PatLeaf<(i32 2)>;
  PatLeaf DML2_Pat = PatLeaf<(i32 3)>;
  PatLeaf RML2_Pat = PatLeaf<(i32 4)>;
  PatLeaf WB_Pat = PatLeaf<(i32 5)>;
  PatLeaf IV_Pat = PatLeaf<(i32 6)>;
}

def CWMode {
  int C = 0;
  int W = 1;
  PatLeaf C_Pat = PatLeaf<(i32 0)>;
  PatLeaf W_Pat = PatLeaf<(i32 1)>;
}

def CompOp {
  int EQ = 0;
  int NE = 1;
  int LT = 2;
  int LE = 3;
  int GT = 4;
  int GE = 5;
  PatLeaf EQ_Pat = PatLeaf<(i32 0)>;
  PatLeaf NE_Pat = PatLeaf<(i32 1)>;
  PatLeaf LT_Pat = PatLeaf<(i32 2)>;
  PatLeaf LE_Pat = PatLeaf<(i32 3)>;
  PatLeaf GT_Pat = PatLeaf<(i32 4)>;
  PatLeaf GE_Pat = PatLeaf<(i32 5)>;
}

def EXBool {
  int PAND = 0;
  int POR = 1;
  PatLeaf PAND_Pat = PatLeaf<(i32 0)>;
  PatLeaf POR_Pat = PatLeaf<(i32 1)>;
}

def F2FPDstType {
  int TF32 = 0;
  int F16 = 1;
  int BF16 = 2;
  int E5M2 = 3;
  int E4M3 = 4;
  int E8 = 5;
  int E3M2 = 6;
  int E2M3 = 7;
  int E2M1 = 8;
  PatLeaf TF32_Pat = PatLeaf<(i32 0)>;
  PatLeaf F16_Pat = PatLeaf<(i32 1)>;
  PatLeaf BF16_Pat = PatLeaf<(i32 2)>;
  PatLeaf E5M2_Pat = PatLeaf<(i32 3)>;
  PatLeaf E4M3_Pat = PatLeaf<(i32 4)>;
  PatLeaf E8_Pat = PatLeaf<(i32 5)>;
  PatLeaf E3M2_Pat = PatLeaf<(i32 6)>;
  PatLeaf E2M3_Pat = PatLeaf<(i32 7)>;
  PatLeaf E2M1_Pat = PatLeaf<(i32 8)>;
}

def F2FPSrcType {
  int F32 = 0;
  int F16 = 1;
  int BF16 = 2;
  int E5M2 = 3;
  int E4M3 = 4;
  int E8 = 5;
  int E3M2 = 6;
  int E2M3 = 7;
  int E2M1 = 8;
  PatLeaf F32_Pat = PatLeaf<(i32 0)>;
  PatLeaf F16_Pat = PatLeaf<(i32 1)>;
  PatLeaf BF16_Pat = PatLeaf<(i32 2)>;
  PatLeaf E5M2_Pat = PatLeaf<(i32 3)>;
  PatLeaf E4M3_Pat = PatLeaf<(i32 4)>;
  PatLeaf E8_Pat = PatLeaf<(i32 5)>;
  PatLeaf E3M2_Pat = PatLeaf<(i32 6)>;
  PatLeaf E2M3_Pat = PatLeaf<(i32 7)>;
  PatLeaf E2M1_Pat = PatLeaf<(i32 8)>;
}

def F2INTZ {
  int NoNTZ = 0;
  int NTZ = 1;
  PatLeaf NoNTZ_Pat = PatLeaf<(i32 0)>;
  PatLeaf NTZ_Pat = PatLeaf<(i32 1)>;
}

def F2IRnd {
  int ROUND = 0;
  int CEIL = 1;
  int FLOOR = 2;
  int TRUNC = 3;
  PatLeaf ROUND_Pat = PatLeaf<(i32 0)>;
  PatLeaf CEIL_Pat = PatLeaf<(i32 1)>;
  PatLeaf FLOOR_Pat = PatLeaf<(i32 2)>;
  PatLeaf TRUNC_Pat = PatLeaf<(i32 3)>;
}

def F32F16 {
  int F32 = 0;
  int F16 = 1;
  PatLeaf F32_Pat = PatLeaf<(i32 0)>;
  PatLeaf F16_Pat = PatLeaf<(i32 1)>;
}

def FCMPOp {
  int EQ = 0;
  int NE = 1;
  int LT = 2;
  int LE = 3;
  int GT = 4;
  int GE = 5;
  int EQU = 6;
  int NEU = 7;
  int LTU = 8;
  int LEU = 9;
  int GTU = 10;
  int GEU = 11;
  int Nan = 12;
  int NUM = 13;
  PatLeaf EQ_Pat = PatLeaf<(i32 0)>;
  PatLeaf NE_Pat = PatLeaf<(i32 1)>;
  PatLeaf LT_Pat = PatLeaf<(i32 2)>;
  PatLeaf LE_Pat = PatLeaf<(i32 3)>;
  PatLeaf GT_Pat = PatLeaf<(i32 4)>;
  PatLeaf GE_Pat = PatLeaf<(i32 5)>;
  PatLeaf EQU_Pat = PatLeaf<(i32 6)>;
  PatLeaf NEU_Pat = PatLeaf<(i32 7)>;
  PatLeaf LTU_Pat = PatLeaf<(i32 8)>;
  PatLeaf LEU_Pat = PatLeaf<(i32 9)>;
  PatLeaf GTU_Pat = PatLeaf<(i32 10)>;
  PatLeaf GEU_Pat = PatLeaf<(i32 11)>;
  PatLeaf Nan_Pat = PatLeaf<(i32 12)>;
  PatLeaf NUM_Pat = PatLeaf<(i32 13)>;
}

def FLOSH {
  int NoSH = 0;
  int SH = 1;
  PatLeaf NoSH_Pat = PatLeaf<(i32 0)>;
  PatLeaf SH_Pat = PatLeaf<(i32 1)>;
}

def FMULScale {
  int NoScale = 0;
  int D2 = 1;
  int D4 = 2;
  int D8 = 3;
  int M2 = 4;
  int M4 = 5;
  int M8 = 6;
  PatLeaf NoScale_Pat = PatLeaf<(i32 0)>;
  PatLeaf D2_Pat = PatLeaf<(i32 1)>;
  PatLeaf D4_Pat = PatLeaf<(i32 2)>;
  PatLeaf D8_Pat = PatLeaf<(i32 3)>;
  PatLeaf M2_Pat = PatLeaf<(i32 4)>;
  PatLeaf M4_Pat = PatLeaf<(i32 5)>;
  PatLeaf M8_Pat = PatLeaf<(i32 6)>;
}

def FPFtz {
  int NoFTZ = 0;
  int FTZ = 1;
  PatLeaf NoFTZ_Pat = PatLeaf<(i32 0)>;
  PatLeaf FTZ_Pat = PatLeaf<(i32 1)>;
}

def FPRound {
  int RN = 0;
  int RP = 1;
  int RM = 2;
  int RZ = 3;
  PatLeaf RN_Pat = PatLeaf<(i32 0)>;
  PatLeaf RP_Pat = PatLeaf<(i32 1)>;
  PatLeaf RM_Pat = PatLeaf<(i32 2)>;
  PatLeaf RZ_Pat = PatLeaf<(i32 3)>;
}

def FPSat {
  int NoSAT = 0;
  int SAT = 1;
  PatLeaf NoSAT_Pat = PatLeaf<(i32 0)>;
  PatLeaf SAT_Pat = PatLeaf<(i32 1)>;
}

def FTypes {
  int F64 = 0;
  int F32 = 1;
  int F16 = 2;
  int BF16 = 3;
  PatLeaf F64_Pat = PatLeaf<(i32 0)>;
  PatLeaf F32_Pat = PatLeaf<(i32 1)>;
  PatLeaf F16_Pat = PatLeaf<(i32 2)>;
  PatLeaf BF16_Pat = PatLeaf<(i32 3)>;
}

def FTypesNoF64 {
  int F32 = 0;
  int F16 = 1;
  int BF16 = 2;
  PatLeaf F32_Pat = PatLeaf<(i32 0)>;
  PatLeaf F16_Pat = PatLeaf<(i32 1)>;
  PatLeaf BF16_Pat = PatLeaf<(i32 2)>;
}

def FullITypes {
  int S8 = 0;
  int U8 = 1;
  int S16 = 2;
  int U16 = 3;
  int S32 = 4;
  int U32 = 5;
  int S64 = 6;
  int U64 = 7;
  PatLeaf S8_Pat = PatLeaf<(i32 0)>;
  PatLeaf U8_Pat = PatLeaf<(i32 1)>;
  PatLeaf S16_Pat = PatLeaf<(i32 2)>;
  PatLeaf U16_Pat = PatLeaf<(i32 3)>;
  PatLeaf S32_Pat = PatLeaf<(i32 4)>;
  PatLeaf U32_Pat = PatLeaf<(i32 5)>;
  PatLeaf S64_Pat = PatLeaf<(i32 6)>;
  PatLeaf U64_Pat = PatLeaf<(i32 7)>;
}

def FullITypesNoI64 {
  int S8 = 0;
  int U8 = 1;
  int S16 = 2;
  int U16 = 3;
  int S32 = 4;
  int U32 = 5;
  PatLeaf S8_Pat = PatLeaf<(i32 0)>;
  PatLeaf U8_Pat = PatLeaf<(i32 1)>;
  PatLeaf S16_Pat = PatLeaf<(i32 2)>;
  PatLeaf U16_Pat = PatLeaf<(i32 3)>;
  PatLeaf S32_Pat = PatLeaf<(i32 4)>;
  PatLeaf U32_Pat = PatLeaf<(i32 5)>;
}

def HFmtV2 {
  int F16_V2 = 0;
  int BF16_V2 = 1;
  PatLeaf F16_V2_Pat = PatLeaf<(i32 0)>;
  PatLeaf BF16_V2_Pat = PatLeaf<(i32 1)>;
}

def HMMA_ABType {
  int TF32 = 0;
  int BF16 = 1;
  int F16 = 2;
  PatLeaf TF32_Pat = PatLeaf<(i32 0)>;
  PatLeaf BF16_Pat = PatLeaf<(i32 1)>;
  PatLeaf F16_Pat = PatLeaf<(i32 2)>;
}

def HMMA_CDType {
  int F16 = 0;
  int F32 = 1;
  PatLeaf F16_Pat = PatLeaf<(i32 0)>;
  PatLeaf F32_Pat = PatLeaf<(i32 1)>;
}

def HMMA_MNK {
  int _1684 = 0;
  int _1688 = 1;
  int _16816 = 2;
  PatLeaf _1684_Pat = PatLeaf<(i32 0)>;
  PatLeaf _1688_Pat = PatLeaf<(i32 1)>;
  PatLeaf _16816_Pat = PatLeaf<(i32 2)>;
}

def HMMA_SP_MNK {
  int _1688 = 0;
  int _16816 = 1;
  int _16832 = 2;
  PatLeaf _1688_Pat = PatLeaf<(i32 0)>;
  PatLeaf _16816_Pat = PatLeaf<(i32 1)>;
  PatLeaf _16832_Pat = PatLeaf<(i32 2)>;
}

def HSel {
  int H0 = 0;
  int H1 = 1;
  PatLeaf H0_Pat = PatLeaf<(i32 0)>;
  PatLeaf H1_Pat = PatLeaf<(i32 1)>;
}

def HSel2 {
  int H1_H0 = 0;
  int H0_H0 = 1;
  int H1_H1 = 2;
  int F32 = 3;
  PatLeaf H1_H0_Pat = PatLeaf<(i32 0)>;
  PatLeaf H0_H0_Pat = PatLeaf<(i32 1)>;
  PatLeaf H1_H1_Pat = PatLeaf<(i32 2)>;
  PatLeaf F32_Pat = PatLeaf<(i32 3)>;
}

def I16Type {
  int S16 = 0;
  int U16 = 1;
  PatLeaf S16_Pat = PatLeaf<(i32 0)>;
  PatLeaf U16_Pat = PatLeaf<(i32 1)>;
}

def I2IDType {
  int S8 = 0;
  int U8 = 1;
  int S16 = 2;
  int U16 = 3;
  PatLeaf S8_Pat = PatLeaf<(i32 0)>;
  PatLeaf U8_Pat = PatLeaf<(i32 1)>;
  PatLeaf S16_Pat = PatLeaf<(i32 2)>;
  PatLeaf U16_Pat = PatLeaf<(i32 3)>;
}

def I2IPDType {
  int S2 = 0;
  int U2 = 1;
  int S4 = 2;
  int U4 = 3;
  int S8 = 4;
  int U8 = 5;
  int S16 = 6;
  int U16 = 7;
  PatLeaf S2_Pat = PatLeaf<(i32 0)>;
  PatLeaf U2_Pat = PatLeaf<(i32 1)>;
  PatLeaf S4_Pat = PatLeaf<(i32 2)>;
  PatLeaf U4_Pat = PatLeaf<(i32 3)>;
  PatLeaf S8_Pat = PatLeaf<(i32 4)>;
  PatLeaf U8_Pat = PatLeaf<(i32 5)>;
  PatLeaf S16_Pat = PatLeaf<(i32 6)>;
  PatLeaf U16_Pat = PatLeaf<(i32 7)>;
}

def I8Type {
  int S8 = 0;
  int U8 = 1;
  PatLeaf S8_Pat = PatLeaf<(i32 0)>;
  PatLeaf U8_Pat = PatLeaf<(i32 1)>;
}

def I8Types {
  int S8 = 0;
  int U8 = 1;
  PatLeaf S8_Pat = PatLeaf<(i32 0)>;
  PatLeaf U8_Pat = PatLeaf<(i32 1)>;
}

def IExt {
  int NoX = 0;
  int X = 1;
  PatLeaf NoX_Pat = PatLeaf<(i32 0)>;
  PatLeaf X_Pat = PatLeaf<(i32 1)>;
}

def IMMA_ABType {
  int U4 = 0;
  int S4 = 1;
  int U8 = 2;
  int S8 = 3;
  PatLeaf U4_Pat = PatLeaf<(i32 0)>;
  PatLeaf S4_Pat = PatLeaf<(i32 1)>;
  PatLeaf U8_Pat = PatLeaf<(i32 2)>;
  PatLeaf S8_Pat = PatLeaf<(i32 3)>;
}

def IMMA_MNK {
  int _8816 = 0;
  int _8832 = 1;
  int _16816 = 2;
  int _16832 = 3;
  int _16864 = 4;
  PatLeaf _8816_Pat = PatLeaf<(i32 0)>;
  PatLeaf _8832_Pat = PatLeaf<(i32 1)>;
  PatLeaf _16816_Pat = PatLeaf<(i32 2)>;
  PatLeaf _16832_Pat = PatLeaf<(i32 3)>;
  PatLeaf _16864_Pat = PatLeaf<(i32 4)>;
}

def IMMA_SAT {
  int NoSAT = 0;
  int SAT = 1;
  PatLeaf NoSAT_Pat = PatLeaf<(i32 0)>;
  PatLeaf SAT_Pat = PatLeaf<(i32 1)>;
}

def IMMA_SP_MNK {
  int _16832 = 0;
  int _16864 = 1;
  int _168128 = 2;
  PatLeaf _16832_Pat = PatLeaf<(i32 0)>;
  PatLeaf _16864_Pat = PatLeaf<(i32 1)>;
  PatLeaf _168128_Pat = PatLeaf<(i32 2)>;
}

def IType {
  int S32 = 0;
  int U32 = 1;
  PatLeaf S32_Pat = PatLeaf<(i32 0)>;
  PatLeaf U32_Pat = PatLeaf<(i32 1)>;
}

def L1EvictPriority {
  int EN = 0;
  int EF = 1;
  int EL = 2;
  int EU = 3;
  int NA = 4;
  PatLeaf EN_Pat = PatLeaf<(i32 0)>;
  PatLeaf EF_Pat = PatLeaf<(i32 1)>;
  PatLeaf EL_Pat = PatLeaf<(i32 2)>;
  PatLeaf EU_Pat = PatLeaf<(i32 3)>;
  PatLeaf NA_Pat = PatLeaf<(i32 4)>;
}

def LDGSTSCacheOp {
  int BYPASS = 0;
  int ACCESS = 1;
  PatLeaf BYPASS_Pat = PatLeaf<(i32 0)>;
  PatLeaf ACCESS_Pat = PatLeaf<(i32 1)>;
}

def LDGSTSFILL {
  int NoZFILL = 0;
  int ZFILL = 1;
  PatLeaf NoZFILL_Pat = PatLeaf<(i32 0)>;
  PatLeaf ZFILL_Pat = PatLeaf<(i32 1)>;
}

def LDGSTSSize {
  int _32 = 0;
  int _64 = 1;
  int _128 = 2;
  PatLeaf _32_Pat = PatLeaf<(i32 0)>;
  PatLeaf _64_Pat = PatLeaf<(i32 1)>;
  PatLeaf _128_Pat = PatLeaf<(i32 2)>;
}

def LDSMMode {
  int M88 = 0;
  int MT88 = 1;
  PatLeaf M88_Pat = PatLeaf<(i32 0)>;
  PatLeaf MT88_Pat = PatLeaf<(i32 1)>;
}

def LDSMNum {
  int _1 = 0;
  int _2 = 1;
  int _4 = 2;
  PatLeaf _1_Pat = PatLeaf<(i32 0)>;
  PatLeaf _2_Pat = PatLeaf<(i32 1)>;
  PatLeaf _4_Pat = PatLeaf<(i32 2)>;
}

def LDSMSize {
  int _16 = 0;
  PatLeaf _16_Pat = PatLeaf<(i32 0)>;
}

def LEASX32 {
  int NoSX32 = 0;
  int SX32 = 1;
  PatLeaf NoSX32_Pat = PatLeaf<(i32 0)>;
  PatLeaf SX32_Pat = PatLeaf<(i32 1)>;
}

def LOHI {
  int LO = 0;
  int HI = 1;
  PatLeaf LO_Pat = PatLeaf<(i32 0)>;
  PatLeaf HI_Pat = PatLeaf<(i32 1)>;
}

def LOPOp {
  int AND = 0;
  int OR = 1;
  int XOR = 2;
  PatLeaf AND_Pat = PatLeaf<(i32 0)>;
  PatLeaf OR_Pat = PatLeaf<(i32 1)>;
  PatLeaf XOR_Pat = PatLeaf<(i32 2)>;
}

def MATCHDType {
  int U32 = 0;
  int U64 = 1;
  PatLeaf U32_Pat = PatLeaf<(i32 0)>;
  PatLeaf U64_Pat = PatLeaf<(i32 1)>;
}

def MATCHOp {
  int ANY = 0;
  int ALL = 1;
  PatLeaf ANY_Pat = PatLeaf<(i32 0)>;
  PatLeaf ALL_Pat = PatLeaf<(i32 1)>;
}

def MEMBARMode {
  int ALL = 0;
  int SC = 1;
  PatLeaf ALL_Pat = PatLeaf<(i32 0)>;
  PatLeaf SC_Pat = PatLeaf<(i32 1)>;
}

def MEMDType {
  int S8 = 0;
  int U8 = 1;
  int S16 = 2;
  int U16 = 3;
  int _32 = 4;
  int _64 = 5;
  int _128 = 6;
  PatLeaf S8_Pat = PatLeaf<(i32 0)>;
  PatLeaf U8_Pat = PatLeaf<(i32 1)>;
  PatLeaf S16_Pat = PatLeaf<(i32 2)>;
  PatLeaf U16_Pat = PatLeaf<(i32 3)>;
  PatLeaf _32_Pat = PatLeaf<(i32 4)>;
  PatLeaf _64_Pat = PatLeaf<(i32 5)>;
  PatLeaf _128_Pat = PatLeaf<(i32 6)>;
}

def MEMOrder {
  int WEAK = 0;
  int STRONG = 1;
  int MMIO = 2;
  PatLeaf WEAK_Pat = PatLeaf<(i32 0)>;
  PatLeaf STRONG_Pat = PatLeaf<(i32 1)>;
  PatLeaf MMIO_Pat = PatLeaf<(i32 2)>;
}

def MEMScope {
  int TC = 0;
  int GPU = 1;
  PatLeaf TC_Pat = PatLeaf<(i32 0)>;
  PatLeaf GPU_Pat = PatLeaf<(i32 1)>;
}

def MEMSpace {
  int G = 0;
  int S = 1;
  int L = 2;
  int C = 3;
  PatLeaf G_Pat = PatLeaf<(i32 0)>;
  PatLeaf S_Pat = PatLeaf<(i32 1)>;
  PatLeaf L_Pat = PatLeaf<(i32 2)>;
  PatLeaf C_Pat = PatLeaf<(i32 3)>;
}

def MOVW {
  int _32 = 0;
  int _64 = 1;
  PatLeaf _32_Pat = PatLeaf<(i32 0)>;
  PatLeaf _64_Pat = PatLeaf<(i32 1)>;
}

def MUFUDType {
  int F32 = 0;
  int F64H = 1;
  int F16_V2 = 2;
  int BF16_V2 = 3;
  int F16 = 4;
  int BF16 = 5;
  PatLeaf F32_Pat = PatLeaf<(i32 0)>;
  PatLeaf F64H_Pat = PatLeaf<(i32 1)>;
  PatLeaf F16_V2_Pat = PatLeaf<(i32 2)>;
  PatLeaf BF16_V2_Pat = PatLeaf<(i32 3)>;
  PatLeaf F16_Pat = PatLeaf<(i32 4)>;
  PatLeaf BF16_Pat = PatLeaf<(i32 5)>;
}

def MUFUOp {
  int COS = 0;
  int SIN = 1;
  int EX2 = 2;
  int LG2 = 3;
  int RCP = 4;
  int RSQ = 5;
  int SQRT = 6;
  int TANH = 7;
  PatLeaf COS_Pat = PatLeaf<(i32 0)>;
  PatLeaf SIN_Pat = PatLeaf<(i32 1)>;
  PatLeaf EX2_Pat = PatLeaf<(i32 2)>;
  PatLeaf LG2_Pat = PatLeaf<(i32 3)>;
  PatLeaf RCP_Pat = PatLeaf<(i32 4)>;
  PatLeaf RSQ_Pat = PatLeaf<(i32 5)>;
  PatLeaf SQRT_Pat = PatLeaf<(i32 6)>;
  PatLeaf TANH_Pat = PatLeaf<(i32 7)>;
}

def Nan {
  int NoNAN = 0;
  int Nan = 1;
  PatLeaf NoNAN_Pat = PatLeaf<(i32 0)>;
  PatLeaf Nan_Pat = PatLeaf<(i32 1)>;
}

def OMMA_ABType {
  int E2M1 = 0;
  int E0M3 = 1;
  PatLeaf E2M1_Pat = PatLeaf<(i32 0)>;
  PatLeaf E0M3_Pat = PatLeaf<(i32 1)>;
}

def OMMA_CDType {
  int F16 = 0;
  int F32 = 1;
  PatLeaf F16_Pat = PatLeaf<(i32 0)>;
  PatLeaf F32_Pat = PatLeaf<(i32 1)>;
}

def OMMA_MNK {
  int _16864 = 0;
  PatLeaf _16864_Pat = PatLeaf<(i32 0)>;
}

def PModi {
  int False = 0;
  int True = 1;
  PatLeaf False_Pat = PatLeaf<(i32 0)>;
  PatLeaf True_Pat = PatLeaf<(i32 1)>;
}

def PRMTMode {
  int IDX = 0;
  int F4E = 1;
  int B4E = 2;
  int RC8 = 3;
  int ECL = 4;
  int ECR = 5;
  int RC16 = 6;
  PatLeaf IDX_Pat = PatLeaf<(i32 0)>;
  PatLeaf F4E_Pat = PatLeaf<(i32 1)>;
  PatLeaf B4E_Pat = PatLeaf<(i32 2)>;
  PatLeaf RC8_Pat = PatLeaf<(i32 3)>;
  PatLeaf ECL_Pat = PatLeaf<(i32 4)>;
  PatLeaf ECR_Pat = PatLeaf<(i32 5)>;
  PatLeaf RC16_Pat = PatLeaf<(i32 6)>;
}

def QMMA_ABType {
  int E4M3 = 0;
  int E5M2 = 1;
  PatLeaf E4M3_Pat = PatLeaf<(i32 0)>;
  PatLeaf E5M2_Pat = PatLeaf<(i32 1)>;
}

def QMMA_CDType {
  int F16 = 0;
  int F32 = 1;
  PatLeaf F16_Pat = PatLeaf<(i32 0)>;
  PatLeaf F32_Pat = PatLeaf<(i32 1)>;
}

def QMMA_MNK {
  int _16816 = 0;
  int _16832 = 1;
  PatLeaf _16816_Pat = PatLeaf<(i32 0)>;
  PatLeaf _16832_Pat = PatLeaf<(i32 1)>;
}

def QMMA_SP_MNK {
  int _16832 = 0;
  int _16864 = 1;
  PatLeaf _16832_Pat = PatLeaf<(i32 0)>;
  PatLeaf _16864_Pat = PatLeaf<(i32 1)>;
}

def REDOp {
  int ADD = 0;
  int MIN = 1;
  int MAX = 2;
  int INC = 3;
  int DEC = 4;
  int AND = 5;
  int OR = 6;
  int XOR = 7;
  PatLeaf ADD_Pat = PatLeaf<(i32 0)>;
  PatLeaf MIN_Pat = PatLeaf<(i32 1)>;
  PatLeaf MAX_Pat = PatLeaf<(i32 2)>;
  PatLeaf INC_Pat = PatLeaf<(i32 3)>;
  PatLeaf DEC_Pat = PatLeaf<(i32 4)>;
  PatLeaf AND_Pat = PatLeaf<(i32 5)>;
  PatLeaf OR_Pat = PatLeaf<(i32 6)>;
  PatLeaf XOR_Pat = PatLeaf<(i32 7)>;
}

def REDUXDType {
  int U32 = 0;
  int S32 = 1;
  PatLeaf U32_Pat = PatLeaf<(i32 0)>;
  PatLeaf S32_Pat = PatLeaf<(i32 1)>;
}

def REDUXOp {
  int AND = 0;
  int OR = 1;
  int XOR = 2;
  int SUM = 3;
  int MAX = 4;
  int MIN = 5;
  PatLeaf AND_Pat = PatLeaf<(i32 0)>;
  PatLeaf OR_Pat = PatLeaf<(i32 1)>;
  PatLeaf XOR_Pat = PatLeaf<(i32 2)>;
  PatLeaf SUM_Pat = PatLeaf<(i32 3)>;
  PatLeaf MAX_Pat = PatLeaf<(i32 4)>;
  PatLeaf MIN_Pat = PatLeaf<(i32 5)>;
}

def RELU {
  int NoRELU = 0;
  int RELU = 1;
  PatLeaf NoRELU_Pat = PatLeaf<(i32 0)>;
  PatLeaf RELU_Pat = PatLeaf<(i32 1)>;
}

def RStride {
  int X1 = 0;
  int X4 = 1;
  int X8 = 2;
  int X16 = 3;
  PatLeaf X1_Pat = PatLeaf<(i32 0)>;
  PatLeaf X4_Pat = PatLeaf<(i32 1)>;
  PatLeaf X8_Pat = PatLeaf<(i32 2)>;
  PatLeaf X16_Pat = PatLeaf<(i32 3)>;
}

def SATFINITE {
  int NoSATFINITE = 0;
  int SATFINITE = 1;
  PatLeaf NoSATFINITE_Pat = PatLeaf<(i32 0)>;
  PatLeaf SATFINITE_Pat = PatLeaf<(i32 1)>;
}

def SHFDType {
  int S64 = 0;
  int U64 = 1;
  int S32 = 2;
  int U32 = 3;
  PatLeaf S64_Pat = PatLeaf<(i32 0)>;
  PatLeaf U64_Pat = PatLeaf<(i32 1)>;
  PatLeaf S32_Pat = PatLeaf<(i32 2)>;
  PatLeaf U32_Pat = PatLeaf<(i32 3)>;
}

def SHFDir {
  int L = 0;
  int R = 1;
  PatLeaf L_Pat = PatLeaf<(i32 0)>;
  PatLeaf R_Pat = PatLeaf<(i32 1)>;
}

def SHFLMode {
  int IDX = 0;
  int UP = 1;
  int DOWN = 2;
  int BFLY = 3;
  PatLeaf IDX_Pat = PatLeaf<(i32 0)>;
  PatLeaf UP_Pat = PatLeaf<(i32 1)>;
  PatLeaf DOWN_Pat = PatLeaf<(i32 2)>;
  PatLeaf BFLY_Pat = PatLeaf<(i32 3)>;
}

def SignModi {
  int False = 0;
  int True = 1;
  PatLeaf False_Pat = PatLeaf<(i32 0)>;
  PatLeaf True_Pat = PatLeaf<(i32 1)>;
}

def VOTEOp {
  int ANY = 0;
  int ALL = 1;
  int EQ = 2;
  PatLeaf ANY_Pat = PatLeaf<(i32 0)>;
  PatLeaf ALL_Pat = PatLeaf<(i32 1)>;
  PatLeaf EQ_Pat = PatLeaf<(i32 2)>;
}

def VSel {
  int S0 = 0;
  int S1 = 1;
  int S2 = 2;
  int S3 = 3;
  PatLeaf S0_Pat = PatLeaf<(i32 0)>;
  PatLeaf S1_Pat = PatLeaf<(i32 1)>;
  PatLeaf S2_Pat = PatLeaf<(i32 2)>;
  PatLeaf S3_Pat = PatLeaf<(i32 3)>;
}

def CCSched {
  int W0 = 0;
  int W1 = 1;
  int W2 = 2;
  int W3 = 3;
  int W4 = 4;
  int W5 = 5;
  int W6 = 6;
  int W7 = 7;
  int W8 = 8;
  int W9 = 9;
  int W10 = 10;
  int W11 = 11;
  int W12 = 12;
  int W13 = 13;
  int W14 = 14;
  int W15 = 15;
  int W0Y = 16;
  int W1Y = 17;
  int W2Y = 18;
  int W3Y = 19;
  int W4Y = 20;
  int W5Y = 21;
  int W6Y = 22;
  int W7Y = 23;
  int W8Y = 24;
  int W9Y = 25;
  int W10Y = 26;
  int W11Y = 27;
  int W12Y = 28;
  int W13Y = 29;
  int W14Y = 30;
  int W15Y = 31;
  PatLeaf W0_Pat = PatLeaf<(i32 0)>;
  PatLeaf W1_Pat = PatLeaf<(i32 1)>;
  PatLeaf W2_Pat = PatLeaf<(i32 2)>;
  PatLeaf W3_Pat = PatLeaf<(i32 3)>;
  PatLeaf W4_Pat = PatLeaf<(i32 4)>;
  PatLeaf W5_Pat = PatLeaf<(i32 5)>;
  PatLeaf W6_Pat = PatLeaf<(i32 6)>;
  PatLeaf W7_Pat = PatLeaf<(i32 7)>;
  PatLeaf W8_Pat = PatLeaf<(i32 8)>;
  PatLeaf W9_Pat = PatLeaf<(i32 9)>;
  PatLeaf W10_Pat = PatLeaf<(i32 10)>;
  PatLeaf W11_Pat = PatLeaf<(i32 11)>;
  PatLeaf W12_Pat = PatLeaf<(i32 12)>;
  PatLeaf W13_Pat = PatLeaf<(i32 13)>;
  PatLeaf W14_Pat = PatLeaf<(i32 14)>;
  PatLeaf W15_Pat = PatLeaf<(i32 15)>;
  PatLeaf W0Y_Pat = PatLeaf<(i32 16)>;
  PatLeaf W1Y_Pat = PatLeaf<(i32 17)>;
  PatLeaf W2Y_Pat = PatLeaf<(i32 18)>;
  PatLeaf W3Y_Pat = PatLeaf<(i32 19)>;
  PatLeaf W4Y_Pat = PatLeaf<(i32 20)>;
  PatLeaf W5Y_Pat = PatLeaf<(i32 21)>;
  PatLeaf W6Y_Pat = PatLeaf<(i32 22)>;
  PatLeaf W7Y_Pat = PatLeaf<(i32 23)>;
  PatLeaf W8Y_Pat = PatLeaf<(i32 24)>;
  PatLeaf W9Y_Pat = PatLeaf<(i32 25)>;
  PatLeaf W10Y_Pat = PatLeaf<(i32 26)>;
  PatLeaf W11Y_Pat = PatLeaf<(i32 27)>;
  PatLeaf W12Y_Pat = PatLeaf<(i32 28)>;
  PatLeaf W13Y_Pat = PatLeaf<(i32 29)>;
  PatLeaf W14Y_Pat = PatLeaf<(i32 30)>;
  PatLeaf W15Y_Pat = PatLeaf<(i32 31)>;
}

def CCTrap {
  int NoTrap = 0;
  int Trap = 1;
  PatLeaf NoTrap_Pat = PatLeaf<(i32 0)>;
  PatLeaf Trap_Pat = PatLeaf<(i32 1)>;
}

def CCWrSB {
  int WSB0 = 0;
  int WSB1 = 1;
  int WSB2 = 2;
  int WSB3 = 3;
  int WSB4 = 4;
  int WSB5 = 5;
  int WSBInvalid = 6;
  int WSBNone = 7;
  PatLeaf WSB0_Pat = PatLeaf<(i32 0)>;
  PatLeaf WSB1_Pat = PatLeaf<(i32 1)>;
  PatLeaf WSB2_Pat = PatLeaf<(i32 2)>;
  PatLeaf WSB3_Pat = PatLeaf<(i32 3)>;
  PatLeaf WSB4_Pat = PatLeaf<(i32 4)>;
  PatLeaf WSB5_Pat = PatLeaf<(i32 5)>;
  PatLeaf WSBInvalid_Pat = PatLeaf<(i32 6)>;
  PatLeaf WSBNone_Pat = PatLeaf<(i32 7)>;
}


class XYGPUInstrModiOperand<ValueType ty> : Operand<ty> {
  let OperandNamespace = "XYGPU";
  let OperandType = "OPERAND_INSTR_MODI";
}

def ATOMDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def ATOMOpIMOpr : XYGPUInstrModiOperand<i32>;
def B2RModeIMOpr : XYGPUInstrModiOperand<i32>;
def BARModeIMOpr : XYGPUInstrModiOperand<i32>;
def BARREDOpIMOpr : XYGPUInstrModiOperand<i32>;
def BMBFIMOpr : XYGPUInstrModiOperand<i32>;
def BMMA_MNKIMOpr : XYGPUInstrModiOperand<i32>;
def BRACondIMOpr : XYGPUInstrModiOperand<i32>;
def BRClearIMOpr : XYGPUInstrModiOperand<i32>;
def BSelIMOpr : XYGPUInstrModiOperand<i32>;
def BValIMOpr : XYGPUInstrModiOperand<i32>;
def BasePCModeIMOpr : XYGPUInstrModiOperand<i32>;
def BoolOpIMOpr : XYGPUInstrModiOperand<i32>;
def CCTLAllOpIMOpr : XYGPUInstrModiOperand<i32>;
def CCTLOpIMOpr : XYGPUInstrModiOperand<i32>;
def CWModeIMOpr : XYGPUInstrModiOperand<i32>;
def CompOpIMOpr : XYGPUInstrModiOperand<i32>;
def EXBoolIMOpr : XYGPUInstrModiOperand<i32>;
def F2FPDstTypeIMOpr : XYGPUInstrModiOperand<i32>;
def F2FPSrcTypeIMOpr : XYGPUInstrModiOperand<i32>;
def F2INTZIMOpr : XYGPUInstrModiOperand<i32>;
def F2IRndIMOpr : XYGPUInstrModiOperand<i32>;
def F32F16IMOpr : XYGPUInstrModiOperand<i32>;
def FCMPOpIMOpr : XYGPUInstrModiOperand<i32>;
def FLOSHIMOpr : XYGPUInstrModiOperand<i32>;
def FMULScaleIMOpr : XYGPUInstrModiOperand<i32>;
def FPFtzIMOpr : XYGPUInstrModiOperand<i32>;
def FPRoundIMOpr : XYGPUInstrModiOperand<i32>;
def FPSatIMOpr : XYGPUInstrModiOperand<i32>;
def FTypesIMOpr : XYGPUInstrModiOperand<i32>;
def FTypesNoF64IMOpr : XYGPUInstrModiOperand<i32>;
def FullITypesIMOpr : XYGPUInstrModiOperand<i32>;
def FullITypesNoI64IMOpr : XYGPUInstrModiOperand<i32>;
def HFmtV2IMOpr : XYGPUInstrModiOperand<i32>;
def HMMA_ABTypeIMOpr : XYGPUInstrModiOperand<i32>;
def HMMA_CDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def HMMA_MNKIMOpr : XYGPUInstrModiOperand<i32>;
def HMMA_SP_MNKIMOpr : XYGPUInstrModiOperand<i32>;
def I16TypeIMOpr : XYGPUInstrModiOperand<i32>;
def I2IDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def I2IPDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def I8TypeIMOpr : XYGPUInstrModiOperand<i32>;
def I8TypesIMOpr : XYGPUInstrModiOperand<i32>;
def IExtIMOpr : XYGPUInstrModiOperand<i32>;
def IMMA_ABTypeIMOpr : XYGPUInstrModiOperand<i32>;
def IMMA_MNKIMOpr : XYGPUInstrModiOperand<i32>;
def IMMA_SATIMOpr : XYGPUInstrModiOperand<i32>;
def IMMA_SP_MNKIMOpr : XYGPUInstrModiOperand<i32>;
def ITypeIMOpr : XYGPUInstrModiOperand<i32>;
def L1EvictPriorityIMOpr : XYGPUInstrModiOperand<i32>;
def LDGSTSCacheOpIMOpr : XYGPUInstrModiOperand<i32>;
def LDGSTSFILLIMOpr : XYGPUInstrModiOperand<i32>;
def LDGSTSSizeIMOpr : XYGPUInstrModiOperand<i32>;
def LDSMModeIMOpr : XYGPUInstrModiOperand<i32>;
def LDSMNumIMOpr : XYGPUInstrModiOperand<i32>;
def LDSMSizeIMOpr : XYGPUInstrModiOperand<i32>;
def LEASX32IMOpr : XYGPUInstrModiOperand<i32>;
def LOHIIMOpr : XYGPUInstrModiOperand<i32>;
def LOPOpIMOpr : XYGPUInstrModiOperand<i32>;
def MATCHDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def MATCHOpIMOpr : XYGPUInstrModiOperand<i32>;
def MEMBARModeIMOpr : XYGPUInstrModiOperand<i32>;
def MEMDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def MEMOrderIMOpr : XYGPUInstrModiOperand<i32>;
def MEMScopeIMOpr : XYGPUInstrModiOperand<i32>;
def MEMSpaceIMOpr : XYGPUInstrModiOperand<i32>;
def MOVWIMOpr : XYGPUInstrModiOperand<i32>;
def MUFUDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def MUFUOpIMOpr : XYGPUInstrModiOperand<i32>;
def NanIMOpr : XYGPUInstrModiOperand<i32>;
def OMMA_ABTypeIMOpr : XYGPUInstrModiOperand<i32>;
def OMMA_CDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def OMMA_MNKIMOpr : XYGPUInstrModiOperand<i32>;
def PRMTModeIMOpr : XYGPUInstrModiOperand<i32>;
def QMMA_ABTypeIMOpr : XYGPUInstrModiOperand<i32>;
def QMMA_CDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def QMMA_MNKIMOpr : XYGPUInstrModiOperand<i32>;
def QMMA_SP_MNKIMOpr : XYGPUInstrModiOperand<i32>;
def REDOpIMOpr : XYGPUInstrModiOperand<i32>;
def REDUXDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def REDUXOpIMOpr : XYGPUInstrModiOperand<i32>;
def RELUIMOpr : XYGPUInstrModiOperand<i32>;
def SATFINITEIMOpr : XYGPUInstrModiOperand<i32>;
def SHFDTypeIMOpr : XYGPUInstrModiOperand<i32>;
def SHFDirIMOpr : XYGPUInstrModiOperand<i32>;
def SHFLModeIMOpr : XYGPUInstrModiOperand<i32>;
def VOTEOpIMOpr : XYGPUInstrModiOperand<i32>;

class XYGPUOprModiOperand<ValueType ty> : Operand<ty> {
  let OperandNamespace = "XYGPU";
  let OperandType = "OPERAND_OPR_MODI";
}

def ADDRModeOMOpr : XYGPUOprModiOperand<i32>;
def BSelOMOpr : XYGPUOprModiOperand<i32>;
def BufOMOpr : XYGPUOprModiOperand<i32>;
def HSelOMOpr : XYGPUOprModiOperand<i32>;
def HSel2OMOpr : XYGPUOprModiOperand<i32>;
def PModiOMOpr : XYGPUOprModiOperand<i32>;
def RStrideOMOpr : XYGPUOprModiOperand<i32>;
def SignModiOMOpr : XYGPUOprModiOperand<i32>;
def VSelOMOpr : XYGPUOprModiOperand<i32>;

