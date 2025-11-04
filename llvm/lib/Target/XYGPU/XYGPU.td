//===-- XYGPU.td - Describe the XYGPU Target Machine -------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

include "llvm/Target/Target.td"

include "XYGPUInstrInfo.td"

include "XYGPUProcessors.td"


def XYGPUInstrInfo : InstrInfo {
  let guessInstructionProperties = false;
}

def XYGPUAsmParser : AsmParser {
  let ShouldEmitMatchRegisterAltName = true;
  let AllowDuplicateRegisterNames = true;
  let AsmParserInstCleanup = "postMatchProcess";
}

def XYGPU : Target {
  let InstructionSet = XYGPUInstrInfo;
  let AssemblyParsers = [XYGPUAsmParser];
}