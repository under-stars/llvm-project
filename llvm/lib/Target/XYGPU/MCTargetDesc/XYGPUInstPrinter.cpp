//===-- XYGPUInstPrinter.cpp - Convert XYGPU MCInst to asm syntax ---------===//
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

#include "XYGPUInstPrinter.h"
#include "Utils/XYGPUBaseInfo.h"
#include "Utils/XYGPUControlCode.h"
#include "XYGPUDefines.h"
#include "llvm/ADT/APInt.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/Support/CommandLine.h"
#include <map>
#include <sstream>
#include <variant>

using namespace llvm;
using namespace llvm::XYGPU;

#define DEBUG_TYPE "asm-printer"

#include "XYGPUGenAsmWriter.inc"

#define DEFINE_OPRMODI_ENUM_GET_NAME_FUNCS
#define DEFINE_SREG_ENUM_GET_NAME_FUNCS
#include "AutoGen/XYGPUEnums.inc"
#undef DEFINE_SREG_ENUM_GET_NAME_FUNCS
#undef DEFINE_OPRMODI_ENUM_GET_NAME_FUNCS

#define MNEMONIC_INFO
#define INSTR_MODIS_VAL_STR_INFO
#define INST_PRINTER_FUNCS_DEFINITION
#include "AutoGen/XYGPUInstPrinter.inc"
#undef INST_PRINTER_FUNCS_DEFINITION
#undef INSTR_MODIS_VAL_STR_INFO
#undef MNEMONIC_INFO

void XYGPUInstPrinter::printInst(const MCInst *MI, uint64_t Address,
                                 StringRef Annot, const MCSubtargetInfo &STI,
                                 raw_ostream &O) {
  printPred(MI, O);
  printGeneralInstruction(MI, O);
  printControlCode(MI, O);
}

void XYGPUInstPrinter::printInstrModis(const MCInst *MI, raw_ostream &O) {
  const auto &ValStrInfo = *InstrModisValStrInfos.at(MI->getOpcode());
  for (auto &Info : ValStrInfo) {
    unsigned ModiIdx = Info.first;
    unsigned ModiVal = ~0u;
    if (ModiIdx == ~0u)
      ModiVal = 0;
    else
      ModiVal = MI->getOperand(ModiIdx).getImm();
    O << Info.second.at(ModiVal);
  }
  if (!ValStrInfo.empty())
    O << " ";
}

void XYGPUInstPrinter::printMnemonic(const MCInst *MI, raw_ostream &O) {
  const std::string &Mnemonic = MnemonicInfos.at(MI->getOpcode());
  O << Mnemonic;
}

void XYGPUInstPrinter::printGeneralInstruction(const MCInst *MI,
                                               raw_ostream &O) {
  O << "\t";
  printMnemonic(MI, O);
  printInstrModis(MI, O);
  printOprs(MI, O);
}

void XYGPUInstPrinter::printOperand(const MCInst *MI, unsigned OpNo,
                                    raw_ostream &O, const char *Modifier) {}

// TODO: In order to match AsmWriter param list, do nothing.
void XYGPUInstPrinter::printPCRelImm(const MCInst *MI, uint64_t Address,
                                      unsigned OpNo, raw_ostream &O) {
}

void XYGPUInstPrinter::printFPImm(const APFloat &FPImm, raw_ostream &O,
                                  unsigned LSBOmittedSize) {
  if (FPImm.isNaN()) {
    uint64_t BinVal = FPImm.bitcastToAPInt().getZExtValue();
    std::stringstream SS;
    SS << std::hex << (BinVal >> LSBOmittedSize);
    O << "0f" << SS.str();
  } else {
    O << format("%.12g", FPImm.convertToDouble());
  }
}

void XYGPUInstPrinter::printRegularOperand(const MCInst *MI, unsigned OpNo,
                                           raw_ostream &O) {
  const MCOperand &MO = MI->getOperand(OpNo);
  if (MO.isReg()) {
    O << getRegisterName(MO.getReg(), XYGPU::RegAltName);
  } else if (MO.isImm()) {
    O << formatImm(MO.getImm());
  } else {
    assert(MO.isExpr() && "Expected an expression");
    MO.getExpr()->print(O, &MAI);
  }
}

// Always output 4 characters to keep alignment both in the case of 4 and 8
// spaces tab width.
void XYGPUInstPrinter::printPred(const MCInst *MI, raw_ostream &O) {
  int PredModiIdx =
      XYGPU::getNamedOperandIdx(MI->getOpcode(), XYGPU::OpName::pg_not);
  bool PredLNot = MI->getOperand(PredModiIdx).getImm();
  int PredOprIdx =
      XYGPU::getNamedOperandIdx(MI->getOpcode(), XYGPU::OpName::pg);
  MCRegister PredReg = MI->getOperand(PredOprIdx).getReg();
  if ((PredReg == XYGPU::P7 || PredReg == XYGPU::UP7) && !PredLNot) {
    O << "    ";
    return;
  }

  O << "@";
  if (PredLNot)
    O << "!";
  O << getRegisterName(PredReg, XYGPU::RegAltName);
  if (!PredLNot)
    O << " ";
}

void XYGPUInstPrinter::printControlCode(const MCInst *MI, raw_ostream &O) {
  XYGPU::ControlCode::ControlCodeTy CC;
  CC.parseFromInstr(*MI);
  std::string CCStr = CC.toString();
  if (!CCStr.empty())
    O << "  " << CCStr;
}

void XYGPUInstPrinter::dummyPrint(const MCInst *MI, unsigned OpNo,
                                  raw_ostream &O) {}

const char *XYGPUInstPrinter::getRegisterName(MCRegister Reg) {
  return getRegisterName(Reg, XYGPU::NoRegAltName);
}
