//===-- XYGPUInstrFormats.inc.td - Instruction Formats -----*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
// Automatically generated file, do not edit!
//===----------------------------------------------------------------------===//

class XYGPUInst<dag oops, dag iops, string asmstr, RegisterOperand PredTy> : Instruction {
  let Namespace = "XYGPU";
  let Size = 16;
  field bits<128> Inst;

  let UseNamedOperandTable = true;
  dag OutOperandList = oops;
  dag InOperandList = !con(iops, (ins PGuardModiOpr:$pg_not, PredTy:$pg, SchedCtrlOpr:$sched, ReqSBCtrlOpr:$req, WrSBCtrlOpr:$wsb, TrapCtrlOpr:$trap));
  let AsmString = !strconcat(asmstr, "${pg_not}${pg}");

  let mayLoad = false;
  let mayStore = false;
  let hasSideEffects = false;

  bit pg_not;
  let Inst{15} = pg_not;
  bits<3> pg;
  let Inst{14-12} = pg;
  bits<5> sched;
  let Inst{125-121} = sched;
  bits<6> req;
  let Inst{117-112} = req;
  bits<3> wsb;
  let Inst{120-118} = wsb;
  bit trap;
  let Inst{126} = trap;
}

class XYGPUPGuardInst<dag oops, dag iops, string asmstr> : XYGPUInst<oops, iops, asmstr, PGuardOpr>;
class XYGPUUPGuardInst<dag oops, dag iops, string asmstr> : XYGPUInst<oops, iops, asmstr, UPGuardOpr>;
