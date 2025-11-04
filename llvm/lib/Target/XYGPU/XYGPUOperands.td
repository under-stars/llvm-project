//===-- XYGPUOperands.td - Operand Description -------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the XYGPU operands in TableGen format.
//
//===----------------------------------------------------------------------===//

include "XYGPURegisterInfo.td"

//===----------------------------------------------------------------------===//
// Define asm operand classes for asm parser

// Define predicate modifier operand AsmOperandClass

def PGuardModiAOC : AsmOperandClass {
  let Name = "PGuardModi";
  let PredicateMethod = "isPModi";
  let RenderMethod = "addImmOperands";
  let DiagnosticType = "InvalidPModi";
}

// Define register operand AsmOperandClass

def PGuardAOC : AsmOperandClass {
  let Name = "PGuard";
  let PredicateMethod = "isPred";
  let RenderMethod = "addRegOperands";
  let DiagnosticType = "InvalidPred";
}

def UPGuardAOC : AsmOperandClass {
  let Name = "UPGuard";
  let PredicateMethod = "isUPred";
  let RenderMethod = "addRegOperands";
  let DiagnosticType = "InvalidUPred";
}

// Define immediate operand AsmOperandClass

def CMemBankAOC : AsmOperandClass {
  let Name = "CMemBank";
  let RenderMethod = "addImmOperands";
  let DiagnosticType = "InvalidCMemBank";
}

def CMemOffsetAOC : AsmOperandClass {
  let Name = "CMemOffset";
  let RenderMethod = "addImmOrExprOperands";
  let DiagnosticType = "InvalidCMemOffset";
}

def SRegAOC : AsmOperandClass {
  let Name = "SReg";
  let RenderMethod = "addImmOperands";
  let DiagnosticType = "InvalidSReg";
}

def SymbolAOC : AsmOperandClass {
  let Name = "SymbolRef";
  let RenderMethod = "addImmOrExprOperands";
  let PredicateMethod = "isExprOrImm";
}


//===----------------------------------------------------------------------===//
// Define operand classes

include "AutoGen/XYGPUOperands.inc.td"

// Define special operands

def PGuardModiOpr : Operand<i32> {
  let OperandNamespace = "XYGPU";
  let OperandType = "OPERAND_PRED_MODI";
  let ParserMatchClass = PGuardModiAOC;
  let PrintMethod = "dummyPrint";
}

// Define register operands

class XYGPURegOperand<RegisterClass regclass> : RegisterOperand<regclass> {
  let OperandType = "OPERAND_REGISTER";
}

def PGuardOpr : XYGPURegOperand<PredRC> {
  let ParserMatchClass = PGuardAOC;
  let PrintMethod = "dummyPrint";
}
def UPGuardOpr : XYGPURegOperand<UPredRC> {
  let ParserMatchClass = UPGuardAOC;
  let PrintMethod = "dummyPrint";
}
def RegOpr : XYGPURegOperand<RegRC>;
def RegDOpr : XYGPURegOperand<RegDRC>;
def RegQOpr : XYGPURegOperand<RegQRC>;
def URegOpr : XYGPURegOperand<URegRC>;
def URegDOpr : XYGPURegOperand<URegDRC>;
def PredOpr : XYGPURegOperand<PredRC>;
def UPredOpr : XYGPURegOperand<UPredRC>;
def BRegOpr : XYGPURegOperand<BRegRC>;
def PredAllOpr : XYGPURegOperand<PredAllRC>;
def UPredAllOpr : XYGPURegOperand<UPredAllRC>;

// Define control code operands

def SchedCtrlOpr : OperandWithDefaultOps<i32, (ops (i32 CCSched.W0))> {
  let OperandNamespace = "XYGPU";
  let OperandType = "OPERAND_CTRL";
}

def ReqSBCtrlOpr : OperandWithDefaultOps<i32, (ops (i32 0))> {
  let OperandNamespace = "XYGPU";
  let OperandType = "OPERAND_CTRL";
}

def WrSBCtrlOpr : OperandWithDefaultOps<i32, (ops (i32 CCWrSB.WSBNone))> {
  let OperandNamespace = "XYGPU";
  let OperandType = "OPERAND_CTRL";
}

def TrapCtrlOpr : OperandWithDefaultOps<i32, (ops (i32 CCTrap.NoTrap))> {
  let OperandNamespace = "XYGPU";
  let OperandType = "OPERAND_CTRL";
}

// Define immediate operands

class XYGPUImmOperand<ValueType ty, code pred=[{}]>
    : Operand<ty>, ImmLeaf<ty, pred> {
  let OperandType = "OPERAND_IMMEDIATE";
}

def CMemBankOpr : XYGPUImmOperand<i32> {
  let ParserMatchClass = CMemBankAOC;
}
def CMemOffsetOpr : XYGPUImmOperand<i32> {
  let ParserMatchClass = CMemOffsetAOC;
  let EncoderMethod = "getImmidiateOpValue";
}
def SRegOpr : XYGPUImmOperand<i32> {
  let ParserMatchClass = SRegAOC;
}
def F16ImmX2Opr : XYGPUImmOperand<v2f16>;
def F32ImmOpr : XYGPUImmOperand<f32>;
def F64ImmOpr : XYGPUImmOperand<f64>;
def SImm7Opr : XYGPUImmOperand<i32>;
def SImm9Opr : XYGPUImmOperand<i32>;
def SImm16Opr : XYGPUImmOperand<i32>;
def SImm24Opr : XYGPUImmOperand<i32>  {
  let ParserMatchClass = SymbolAOC;
  let EncoderMethod = "getImmidiateOpValue";
}
def SImm32Opr : XYGPUImmOperand<i32> {
  let ParserMatchClass = SymbolAOC;
  let EncoderMethod = "getImmidiateOpValue";
}
def UImm2Opr : XYGPUImmOperand<i32>;
def UImm3Opr : XYGPUImmOperand<i32>;
def UImm4Opr : XYGPUImmOperand<i32>;
def UImm5Opr : XYGPUImmOperand<i32>;
def UImm8Opr : XYGPUImmOperand<i32>;
def UImm12Opr : XYGPUImmOperand<i32>;
def UImm13Opr : XYGPUImmOperand<i32>;
def UImm16Opr : XYGPUImmOperand<i32>;
def UImm32Opr : XYGPUImmOperand<i32>;


// Special imm operand for branch target

class XYGPUBrTargetOperand : Operand<OtherVT> {
  let OperandType = "OPERAND_IMMEDIATE";
}

def SImm50Opr : XYGPUBrTargetOperand {
  let OperandType = "OPERAND_PCREL";
  let ParserMatchClass = SymbolAOC;
  let PrintMethod = "printPCRelImm";
  let EncoderMethod = "getJumpTargetOpValue";
  let DecoderMethod = "decodeSImmOperand<50>";
}


