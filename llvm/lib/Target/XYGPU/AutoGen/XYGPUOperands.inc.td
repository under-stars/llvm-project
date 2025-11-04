//===-- XYGPUOperands.inc.td - Operand Description ---------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
// Automatically generated file, do not edit!
//===----------------------------------------------------------------------===//

def ATOMDTypeIMOpr : XYGPUInstrModiOperand<i4>;
def ATOMOpIMOpr : XYGPUInstrModiOperand<i4>;
def B2RModeIMOpr : XYGPUInstrModiOperand<i1>;
def BARModeIMOpr : XYGPUInstrModiOperand<i1>;
def BARREDOpIMOpr : XYGPUInstrModiOperand<i2>;
def BMBFIMOpr : XYGPUInstrModiOperand<i1>;
def BMMA_MNKIMOpr : XYGPUInstrModiOperand<i2>;
def BRACondIMOpr : XYGPUInstrModiOperand<i2>;
def BRClearIMOpr : XYGPUInstrModiOperand<i1>;
def BSelIMOpr : XYGPUInstrModiOperand<i2>;
def BValIMOpr : XYGPUInstrModiOperand<i1>;
def BasePCModeIMOpr : XYGPUInstrModiOperand<i1>;
def BoolOpIMOpr : XYGPUInstrModiOperand<i2>;
def CCTLAllOpIMOpr : XYGPUInstrModiOperand<i1>;
def CCTLOpIMOpr : XYGPUInstrModiOperand<i4>;
def CWModeIMOpr : XYGPUInstrModiOperand<i1>;
def CompOpIMOpr : XYGPUInstrModiOperand<i4>;
def EXBoolIMOpr : XYGPUInstrModiOperand<i2>;
def F2FPDstTypeIMOpr : XYGPUInstrModiOperand<i4>;
def F2FPSrcTypeIMOpr : XYGPUInstrModiOperand<i4>;
def F2INTZIMOpr : XYGPUInstrModiOperand<i1>;
def F2IRndIMOpr : XYGPUInstrModiOperand<i2>;
def F32F16IMOpr : XYGPUInstrModiOperand<i2>;
def FCMPOpIMOpr : XYGPUInstrModiOperand<i4>;
def FLOSHIMOpr : XYGPUInstrModiOperand<i1>;
def FMULScaleIMOpr : XYGPUInstrModiOperand<i4>;
def FPFtzIMOpr : XYGPUInstrModiOperand<i1>;
def FPRoundIMOpr : XYGPUInstrModiOperand<i2>;
def FPSatIMOpr : XYGPUInstrModiOperand<i1>;
def FTypesIMOpr : XYGPUInstrModiOperand<i2>;
def FTypesNoF64IMOpr : XYGPUInstrModiOperand<i2>;
def FullITypesIMOpr : XYGPUInstrModiOperand<i4>;
def FullITypesNoI64IMOpr : XYGPUInstrModiOperand<i4>;
def HFmtV2IMOpr : XYGPUInstrModiOperand<i1>;
def HMMA_ABTypeIMOpr : XYGPUInstrModiOperand<i2>;
def HMMA_CDTypeIMOpr : XYGPUInstrModiOperand<i2>;
def HMMA_MNKIMOpr : XYGPUInstrModiOperand<i2>;
def HMMA_SP_MNKIMOpr : XYGPUInstrModiOperand<i2>;
def I16TypeIMOpr : XYGPUInstrModiOperand<i1>;
def I2IDTypeIMOpr : XYGPUInstrModiOperand<i2>;
def I2IPDTypeIMOpr : XYGPUInstrModiOperand<i4>;
def I8TypeIMOpr : XYGPUInstrModiOperand<i1>;
def I8TypesIMOpr : XYGPUInstrModiOperand<i1>;
def IExtIMOpr : XYGPUInstrModiOperand<i1>;
def IMMA_ABTypeIMOpr : XYGPUInstrModiOperand<i2>;
def IMMA_MNKIMOpr : XYGPUInstrModiOperand<i4>;
def IMMA_SATIMOpr : XYGPUInstrModiOperand<i1>;
def IMMA_SP_MNKIMOpr : XYGPUInstrModiOperand<i2>;
def ITypeIMOpr : XYGPUInstrModiOperand<i1>;
def L1EvictPriorityIMOpr : XYGPUInstrModiOperand<i4>;
def LDGSTSCacheOpIMOpr : XYGPUInstrModiOperand<i1>;
def LDGSTSFILLIMOpr : XYGPUInstrModiOperand<i1>;
def LDGSTSSizeIMOpr : XYGPUInstrModiOperand<i2>;
def LDSMModeIMOpr : XYGPUInstrModiOperand<i2>;
def LDSMNumIMOpr : XYGPUInstrModiOperand<i2>;
def LDSMSizeIMOpr : XYGPUInstrModiOperand<i2>;
def LEASX32IMOpr : XYGPUInstrModiOperand<i1>;
def LOHIIMOpr : XYGPUInstrModiOperand<i1>;
def LOPOpIMOpr : XYGPUInstrModiOperand<i2>;
def MATCHDTypeIMOpr : XYGPUInstrModiOperand<i1>;
def MATCHOpIMOpr : XYGPUInstrModiOperand<i1>;
def MEMBARModeIMOpr : XYGPUInstrModiOperand<i1>;
def MEMDTypeIMOpr : XYGPUInstrModiOperand<i4>;
def MEMOrderIMOpr : XYGPUInstrModiOperand<i2>;
def MEMScopeIMOpr : XYGPUInstrModiOperand<i1>;
def MEMSpaceIMOpr : XYGPUInstrModiOperand<i2>;
def MOVWIMOpr : XYGPUInstrModiOperand<i1>;
def MUFUDTypeIMOpr : XYGPUInstrModiOperand<i4>;
def MUFUOpIMOpr : XYGPUInstrModiOperand<i4>;
def NanIMOpr : XYGPUInstrModiOperand<i1>;
def OMMA_ABTypeIMOpr : XYGPUInstrModiOperand<i2>;
def OMMA_CDTypeIMOpr : XYGPUInstrModiOperand<i2>;
def OMMA_MNKIMOpr : XYGPUInstrModiOperand<i2>;
def PRMTModeIMOpr : XYGPUInstrModiOperand<i4>;
def QMMA_ABTypeIMOpr : XYGPUInstrModiOperand<i2>;
def QMMA_CDTypeIMOpr : XYGPUInstrModiOperand<i2>;
def QMMA_MNKIMOpr : XYGPUInstrModiOperand<i2>;
def QMMA_SP_MNKIMOpr : XYGPUInstrModiOperand<i2>;
def REDOpIMOpr : XYGPUInstrModiOperand<i4>;
def REDUXDTypeIMOpr : XYGPUInstrModiOperand<i2>;
def REDUXOpIMOpr : XYGPUInstrModiOperand<i4>;
def RELUIMOpr : XYGPUInstrModiOperand<i1>;
def SATFINITEIMOpr : XYGPUInstrModiOperand<i1>;
def SHFDTypeIMOpr : XYGPUInstrModiOperand<i2>;
def SHFDirIMOpr : XYGPUInstrModiOperand<i1>;
def SHFLModeIMOpr : XYGPUInstrModiOperand<i2>;
def VOTEOpIMOpr : XYGPUInstrModiOperand<i2>;

def ADDRModeOMOpr : XYGPUOprModiOperand<i1>;
def BSelOMOpr : XYGPUOprModiOperand<i2>;
def BufOMOpr : XYGPUOprModiOperand<i1>;
def HSelOMOpr : XYGPUOprModiOperand<i1>;
def HSel2OMOpr : XYGPUOprModiOperand<i2>;
def PModiOMOpr : XYGPUOprModiOperand<i1>;
def RStrideOMOpr : XYGPUOprModiOperand<i2>;
def SignModiOMOpr : XYGPUOprModiOperand<i1>;
def VSelOMOpr : XYGPUOprModiOperand<i2>;
