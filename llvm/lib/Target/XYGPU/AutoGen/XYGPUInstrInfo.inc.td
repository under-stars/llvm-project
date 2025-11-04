//===-- XYGPUInstrInfo.inc.td - Instruction Description ----*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
// Automatically generated file, do not edit!
//===----------------------------------------------------------------------===//

def ATOMG_RRR__BF16X2_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.bf16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x6;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__F16X2_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x5;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__F32_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x4;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__S32_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x1;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__U32_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x0;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__BF16X2_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.bf16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x6;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__F16X2_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x5;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__F32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x4;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x1;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__U32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x0;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__F64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x7;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__S64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x3;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x2;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__F64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x7;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__S64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x3;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RRR__U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x972;
  let Inst{86-84} = 0x2;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMG_RUR__BF16X2_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.bf16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x6;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__F16X2_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x5;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__F32_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x4;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__S32_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x1;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__U32_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x0;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__BF16X2_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.bf16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x6;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__F16X2_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x5;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__F32_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x4;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__S32_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x1;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__U32_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x0;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__BF16X2_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.bf16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x6;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__F16X2_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x5;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__F32_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x4;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__S32_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x1;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__U32_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x0;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__F64_S32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x7;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__S64_S32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x3;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__U64_S32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x2;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__F64_U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x7;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__S64_U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x3;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__U64_U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x2;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__F64_U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.f64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x7;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__S64_U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.s64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x3;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMG_RUR__U64_U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atomg.u64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb72;
  let Inst{86-84} = 0x2;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMS_RRR__BF16X2 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.bf16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x973;
  let Inst{86-84} = 0x6;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMS_RRR__F16X2 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.f16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x973;
  let Inst{86-84} = 0x5;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMS_RRR__F32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.f32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x973;
  let Inst{86-84} = 0x4;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMS_RRR__S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.s32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x973;
  let Inst{86-84} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMS_RRR__U32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.u32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x973;
  let Inst{86-84} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMS_RRR__F64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.f64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x973;
  let Inst{86-84} = 0x7;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMS_RRR__S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.s64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x973;
  let Inst{86-84} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMS_RRR__U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.u64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x973;
  let Inst{86-84} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOMS_RUR__BF16X2 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.bf16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb73;
  let Inst{86-84} = 0x6;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMS_RUR__F16X2 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.f16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb73;
  let Inst{86-84} = 0x5;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMS_RUR__F32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.f32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb73;
  let Inst{86-84} = 0x4;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMS_RUR__S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.s32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb73;
  let Inst{86-84} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMS_RUR__U32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.u32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb73;
  let Inst{86-84} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMS_RUR__F64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.f64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb73;
  let Inst{86-84} = 0x7;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMS_RUR__S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.s64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb73;
  let Inst{86-84} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOMS_RUR__U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atoms.u64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb73;
  let Inst{86-84} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RRR__BF16X2_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.bf16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x6;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__F16X2_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x5;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__F32_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x4;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__S32_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x1;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__U32_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x0;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__BF16X2_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.bf16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x6;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__F16X2_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f16x2${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x5;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__F32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x4;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x1;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__U32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegOpr:$rb, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u32${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x0;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__F64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x7;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__S64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x3;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x2;
  let Inst{90} = 0x0;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__F64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x7;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__S64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x3;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RRR__U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, SImm24Opr:$offset, RegDOpr:$rb, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u64${atomop} ${rd}, ${pu}, ${ra}${offset}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x974;
  let Inst{86-84} = 0x2;
  let Inst{90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def ATOM_RUR__BF16X2_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.bf16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x6;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__F16X2_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x5;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__F32_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x4;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__S32_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x1;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__U32_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x0;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__BF16X2_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.bf16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x6;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__F16X2_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x5;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__F32_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x4;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__S32_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x1;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__U32_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x0;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__BF16X2_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.bf16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x6;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__F16X2_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f16x2${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x5;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__F32_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x4;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__S32_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x1;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__U32_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u32${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x0;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__F64_S32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x7;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__S64_S32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x3;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__U64_S32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x2;
  let Inst{91-90} = 0x2;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__F64_U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x7;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__S64_U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x3;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__U64_U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x2;
  let Inst{91-90} = 0x1;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__F64_U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.f64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x7;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__S64_U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.s64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x3;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def ATOM_RUR__U64_U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, ATOMOpIMOpr:$atomop),
    "atom.u64${atomop} ${rd}, ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb74;
  let Inst{86-84} = 0x2;
  let Inst{91-90} = 0x3;
  bits<4> atomop;
  let Inst{83-80} = atomop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def B2R_I : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins UImm4Opr:$barid, B2RModeIMOpr:$mode),
    "b2r${mode} ${rd}, ${barid}"> {
  let Inst{11-0} = 0x38e;
  bits<4> barid;
  let Inst{43-40} = barid;
  bit mode;
  let Inst{80} = mode;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def B2R_RESULT_X : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins ),
    "b2r_result ${rd}, ${pu}"> {
  let Inst{11-0} = 0x8f;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def BAR_I : XYGPUPGuardInst<
    (outs ),
    (ins UImm4Opr:$barid, UImm12Opr:$cnt, BARModeIMOpr:$mode),
    "bar${mode} ${barid}, ${cnt}"> {
  let Inst{11-0} = 0x38c;
  bits<4> barid;
  let Inst{43-40} = barid;
  bits<12> cnt;
  let Inst{55-44} = cnt;
  bit mode;
  let Inst{80} = mode;
}

def BAR_RED_I : XYGPUPGuardInst<
    (outs ),
    (ins UImm4Opr:$barid, UImm12Opr:$cnt, PModiOMOpr:$pp_not, PredOpr:$pp, BARREDOpIMOpr:$redop),
    "bar_red${redop} ${barid}, ${cnt}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x38d;
  bits<4> barid;
  let Inst{43-40} = barid;
  bits<12> cnt;
  let Inst{55-44} = cnt;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<2> redop;
  let Inst{81-80} = redop;
  bit pp_not;
  let Inst{101} = pp_not;
}

def BAR_RED_R : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, BARREDOpIMOpr:$redop),
    "bar_red${redop} ${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x18d;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<2> redop;
  let Inst{81-80} = redop;
  bit pp_not;
  let Inst{101} = pp_not;
}

def BAR_RED_RIR : XYGPUPGuardInst<
    (outs ),
    (ins UImm4Opr:$barid, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, BARREDOpIMOpr:$redop),
    "bar_red${redop} ${barid}, ${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xd8d;
  bits<4> barid;
  let Inst{43-40} = barid;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> rc;
  let Inst{39-32} = rc;
  bits<2> redop;
  let Inst{81-80} = redop;
  bit pp_not;
  let Inst{101} = pp_not;
}

def BAR_RED_RRI : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$rb, UImm12Opr:$cnt, PModiOMOpr:$pp_not, PredOpr:$pp, BARREDOpIMOpr:$redop),
    "bar_red${redop} ${rb}, ${cnt}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xc8d;
  bits<12> cnt;
  let Inst{55-44} = cnt;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<2> redop;
  let Inst{81-80} = redop;
  bit pp_not;
  let Inst{101} = pp_not;
}

def BAR_RIR : XYGPUPGuardInst<
    (outs ),
    (ins UImm4Opr:$barid, RegOpr:$rc, BARModeIMOpr:$mode),
    "bar${mode} ${barid}, ${rc}"> {
  let Inst{11-0} = 0xd8c;
  bits<4> barid;
  let Inst{43-40} = barid;
  bit mode;
  let Inst{80} = mode;
  bits<8> rc;
  let Inst{39-32} = rc;
}

def BAR_RR : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, RegOpr:$rb, BARModeIMOpr:$mode),
    "bar${mode} ${ra}, ${rb}"> {
  let Inst{11-0} = 0x18c;
  bit mode;
  let Inst{80} = mode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
}

def BAR_RRI : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$rb, UImm12Opr:$cnt, BARModeIMOpr:$mode),
    "bar${mode} ${rb}, ${cnt}"> {
  let Inst{11-0} = 0xc8c;
  bits<12> cnt;
  let Inst{55-44} = cnt;
  bit mode;
  let Inst{80} = mode;
  bits<8> rb;
  let Inst{39-32} = rb;
}

def BMMA_RRR__168128 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc),
    "bmma.168128 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x988;
  let Inst{81-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def BMMA_RRR__168256 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc),
    "bmma.168256 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x988;
  let Inst{81-80} = 0x2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def BMMA_RRR__88128 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc),
    "bmma.88128 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x988;
  let Inst{81-80} = 0x0;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def BMOV_R : XYGPUPGuardInst<
    (outs BRegOpr:$breg),
    (ins RegOpr:$ra),
    "bmov ${breg}, ${ra}"> {
  let Inst{11-0} = 0x15a;
  bits<4> breg;
  let Inst{87-84} = breg;
  bits<8> ra;
  let Inst{31-24} = ra;
}

def BMOV_X : XYGPUPGuardInst<
    (outs RegOpr:$rd, BRegOpr:$breg),
    (ins BRegOpr:$breg_in, BRClearIMOpr:$clear),
    "bmov${clear} ${rd}, ${breg}"> {
  let Constraints = "$breg = $breg_in";
  let Inst{11-0} = 0x5a;
  bits<4> breg;
  let Inst{87-84} = breg;
  bit clear;
  let Inst{82} = clear;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def BMSK_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, CWModeIMOpr:$cwmode),
    "bmsk${cwmode} ${rd}, ${ra}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x852;
  bit cwmode;
  let Inst{81} = cwmode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def BMSK_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, CWModeIMOpr:$cwmode),
    "bmsk${cwmode} ${rd}, ${ra}, ${vb}"> {
  let Inst{11-0} = 0x752;
  bit cwmode;
  let Inst{81} = cwmode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def BMSK_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, CWModeIMOpr:$cwmode),
    "bmsk${cwmode} ${rd}, ${ra}, ${rb}"> {
  let Inst{11-0} = 0x552;
  bit cwmode;
  let Inst{81} = cwmode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def BMSK_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, CWModeIMOpr:$cwmode),
    "bmsk${cwmode} ${rd}, ${ra}, ${urb}"> {
  let Inst{11-0} = 0x652;
  bit cwmode;
  let Inst{81} = cwmode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def BRA_U : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, SignModiOMOpr:$ura_bitnot, URegOpr:$ura, SImm50Opr:$offset, BRACondIMOpr:$cond),
    "bra${cond} ${pp_not}${pp}, ${ura_bitnot}${ura}, ${offset}"> {
  let Inst{11-0} = 0x254;
  bits<2> cond;
  let Inst{83-82} = cond;
  bits<50> offset;
  let Inst{81-32} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bit pp_not;
  let Inst{101} = pp_not;
  bit ura_bitnot;
  let Inst{84} = ura_bitnot;
}

def BRA_X : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, SImm50Opr:$offset, BRACondIMOpr:$cond),
    "bra${cond} ${pp_not}${pp}, ${offset}"> {
  let Inst{11-0} = 0x54;
  bits<2> cond;
  let Inst{83-82} = cond;
  bits<50> offset;
  let Inst{81-32} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
}

def BREAK_X : XYGPUPGuardInst<
    (outs BRegOpr:$breg),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, BRegOpr:$breg_in),
    "break ${pp_not}${pp}, ${breg}"> {
  let Constraints = "$breg = $breg_in";
  let Inst{11-0} = 0x5e;
  bits<4> breg;
  let Inst{87-84} = breg;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
}

def BREV_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "brev ${rd}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x451;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def BREV_I : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SImm32Opr:$vb),
    "brev ${rd}, ${vb}"> {
  let Inst{11-0} = 0x351;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def BREV_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$rb),
    "brev ${rd}, ${rb}"> {
  let Inst{11-0} = 0x151;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def BREV_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins URegOpr:$urb),
    "brev ${rd}, ${urb}"> {
  let Inst{11-0} = 0x251;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def BRX_C : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "brx ${pp_not}${pp}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x455;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def BRX_R : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, RegOpr:$ra, SImm50Opr:$offset),
    "brx ${pp_not}${pp}, ${ra}, ${offset}"> {
  let Inst{11-0} = 0x155;
  bits<50> offset;
  let Inst{81-32} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bit pp_not;
  let Inst{101} = pp_not;
}

def BRX_U : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, URegOpr:$ura, SImm50Opr:$offset),
    "brx ${pp_not}${pp}, ${ura}, ${offset}"> {
  let Inst{11-0} = 0x255;
  bits<50> offset;
  let Inst{81-32} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bit pp_not;
  let Inst{101} = pp_not;
}

def BSSY_I : XYGPUPGuardInst<
    (outs BRegOpr:$breg),
    (ins BRegOpr:$breg_in, SImm32Opr:$syncpoint),
    "bssy ${breg}, ${syncpoint}"> {
  let Constraints = "$breg = $breg_in";
  let Inst{11-0} = 0x35b;
  bits<4> breg;
  let Inst{87-84} = breg;
  bits<32> syncpoint;
  let Inst{63-32} = syncpoint;
}

def BSYNC_X : XYGPUPGuardInst<
    (outs BRegOpr:$breg),
    (ins BRegOpr:$breg_in),
    "bsync ${breg}"> {
  let Constraints = "$breg = $breg_in";
  let Inst{11-0} = 0x5c;
  bits<4> breg;
  let Inst{87-84} = breg;
}

def CALL_C : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, BasePCModeIMOpr:$mode),
    "call${mode} ${pp_not}${pp}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x456;
  bit mode;
  let Inst{82} = mode;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def CALL_R : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, RegDOpr:$ra, SImm50Opr:$offset, BasePCModeIMOpr:$mode),
    "call${mode} ${pp_not}${pp}, ${ra}, ${offset}"> {
  let Inst{11-0} = 0x156;
  bit mode;
  let Inst{82} = mode;
  bits<50> offset;
  let Inst{81-32} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bit pp_not;
  let Inst{101} = pp_not;
}

def CALL_U : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, URegDOpr:$ura, SImm50Opr:$offset, BasePCModeIMOpr:$mode),
    "call${mode} ${pp_not}${pp}, ${ura}, ${offset}"> {
  let Inst{11-0} = 0x256;
  bit mode;
  let Inst{82} = mode;
  bits<50> offset;
  let Inst{81-32} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bit pp_not;
  let Inst{101} = pp_not;
}

def CCTLL_RU__S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, CCTLOpIMOpr:$cop),
    "cctll${cop} ${ra}${urb}${offset}"> {
  let Inst{11-0} = 0x677;
  let Inst{91-90} = 0x2;
  bits<3> cop;
  let Inst{82-80} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def CCTLL_RU__U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, CCTLOpIMOpr:$cop),
    "cctll${cop} ${ra}${urb}${offset}"> {
  let Inst{11-0} = 0x677;
  let Inst{91-90} = 0x1;
  bits<3> cop;
  let Inst{82-80} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def CCTLL_RU__U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, CCTLOpIMOpr:$cop),
    "cctll${cop} ${ra}${urb}${offset}"> {
  let Inst{11-0} = 0x677;
  let Inst{91-90} = 0x3;
  bits<3> cop;
  let Inst{82-80} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def CCTLL_X : XYGPUPGuardInst<
    (outs ),
    (ins CCTLAllOpIMOpr:$cop),
    "cctll${cop}"> {
  let Inst{11-0} = 0x77;
  bit cop;
  let Inst{80} = cop;
}

def CCTL_RU__S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, CCTLOpIMOpr:$cop),
    "cctl${cop} ${ra}${urb}${offset}"> {
  let Inst{11-0} = 0x676;
  let Inst{91-90} = 0x2;
  bits<3> cop;
  let Inst{82-80} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def CCTL_RU__U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, CCTLOpIMOpr:$cop),
    "cctl${cop} ${ra}${urb}${offset}"> {
  let Inst{11-0} = 0x676;
  let Inst{91-90} = 0x1;
  bits<3> cop;
  let Inst{82-80} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def CCTL_RU__U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, CCTLOpIMOpr:$cop),
    "cctl${cop} ${ra}${urb}${offset}"> {
  let Inst{11-0} = 0x676;
  let Inst{91-90} = 0x3;
  bits<3> cop;
  let Inst{82-80} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def CCTL_X : XYGPUPGuardInst<
    (outs ),
    (ins CCTLAllOpIMOpr:$cop),
    "cctl${cop}"> {
  let Inst{11-0} = 0x76;
  bit cop;
  let Inst{80} = cop;
}

def CS2R_I : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SRegOpr:$sreg),
    "cs2r ${rd}, ${sreg}"> {
  let Inst{11-0} = 0x393;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> sreg;
  let Inst{39-32} = sreg;
}

def DADD_RC : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "dadd${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x80e;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def DADD_RI : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, F64ImmOpr:$vb, FPRoundIMOpr:$rnd),
    "dadd${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}"> {
  let Inst{11-0} = 0x70e;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
}

def DADD_RR : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "dadd${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x50e;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def DADD_RU : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "dadd${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x60e;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def DEPBAR_I : XYGPUPGuardInst<
    (outs ),
    (ins UImm3Opr:$sbid, UImm8Opr:$cnt),
    "depbar ${sbid}, ${cnt}"> {
  let Inst{11-0} = 0x398;
  bits<8> cnt;
  let Inst{43-36} = cnt;
  bits<3> sbid;
  let Inst{34-32} = sbid;
}

def DFMA_RCR : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, SignModiOMOpr:$rc_abs, SignModiOMOpr:$rc_neg, RegDOpr:$rc, FPRoundIMOpr:$rnd),
    "dfma${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}, ${rc_abs}${rc_neg}${rc}"> {
  let Inst{11-0} = 0xf10;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def DFMA_RIR : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, F64ImmOpr:$vb, SignModiOMOpr:$rc_abs, SignModiOMOpr:$rc_neg, RegDOpr:$rc, FPRoundIMOpr:$rnd),
    "dfma${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}, ${rc_abs}${rc_neg}${rc}"> {
  let Inst{11-0} = 0xd10;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bit rc_neg;
  let Inst{74} = rc_neg;
}

def DFMA_RRC : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegDOpr:$rb, SignModiOMOpr:$vc_abs, SignModiOMOpr:$vc_neg, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, FPRoundIMOpr:$rnd),
    "dfma${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${vc_abs}${vc_neg}${vc_bank}${vc_offset}"> {
  let Inst{11-0} = 0xe10;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{75} = rb_abs;
  bit rb_neg;
  let Inst{74} = rb_neg;
  bit vc_abs;
  let Inst{97} = vc_abs;
  bit vc_neg;
  let Inst{96} = vc_neg;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def DFMA_RRI : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegDOpr:$rb, F64ImmOpr:$vc, FPRoundIMOpr:$rnd),
    "dfma${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${vc}"> {
  let Inst{11-0} = 0xc10;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<32> vc;
  let Inst{63-32} = vc;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{75} = rb_abs;
  bit rb_neg;
  let Inst{74} = rb_neg;
}

def DFMA_RRR : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegDOpr:$rb, SignModiOMOpr:$rc_abs, SignModiOMOpr:$rc_neg, RegDOpr:$rc, FPRoundIMOpr:$rnd),
    "dfma${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${rc_abs}${rc_neg}${rc}"> {
  let Inst{11-0} = 0x910;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bit rc_neg;
  let Inst{74} = rc_neg;
}

def DFMA_RRU : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegDOpr:$rb, SignModiOMOpr:$urc_abs, SignModiOMOpr:$urc_neg, URegDOpr:$urc, FPRoundIMOpr:$rnd),
    "dfma${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${urc_abs}${urc_neg}${urc}"> {
  let Inst{11-0} = 0xa10;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urc;
  let Inst{37-32} = urc;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{75} = rb_abs;
  bit rb_neg;
  let Inst{74} = rb_neg;
  bit urc_abs;
  let Inst{97} = urc_abs;
  bit urc_neg;
  let Inst{96} = urc_neg;
}

def DFMA_RUR : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegDOpr:$urb, SignModiOMOpr:$rc_abs, SignModiOMOpr:$rc_neg, RegDOpr:$rc, FPRoundIMOpr:$rnd),
    "dfma${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}, ${rc_abs}${rc_neg}${rc}"> {
  let Inst{11-0} = 0xb10;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bit rc_neg;
  let Inst{74} = rc_neg;
}

def DMNMX_RC : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp),
    "dmnmx ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x811;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def DMNMX_RI : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, F64ImmOpr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp),
    "dmnmx ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x711;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def DMNMX_RR : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegDOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp),
    "dmnmx ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x511;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def DMNMX_RU : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegDOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp),
    "dmnmx ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x611;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def DMUL_RC : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "dmul${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x80f;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def DMUL_RI : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, F64ImmOpr:$vb, FPRoundIMOpr:$rnd),
    "dmul${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}"> {
  let Inst{11-0} = 0x70f;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
}

def DMUL_RR : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "dmul${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x50f;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def DMUL_RU : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "dmul${rnd} ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x60f;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def DSETP_RC : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, LOPOpIMOpr:$lop),
    "dsetp${cmp}${lop} ${pu}, ${pv}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x812;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def DSETP_RI : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, F64ImmOpr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, LOPOpIMOpr:$lop),
    "dsetp${cmp}${lop} ${pu}, ${pv}, ${ra_abs}${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x712;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def DSETP_RR : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegDOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, LOPOpIMOpr:$lop),
    "dsetp${cmp}${lop} ${pu}, ${pv}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x512;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def DSETP_RU : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegDOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegDOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, LOPOpIMOpr:$lop),
    "dsetp${cmp}${lop} ${pu}, ${pv}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x612;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def ELECTU_U : XYGPUPGuardInst<
    (outs PredOpr:$pu, URegOpr:$urd),
    (ins SignModiOMOpr:$urb_bitnot, URegOpr:$urb),
    "electu ${pu}, ${urd}, ${urb_bitnot}${urb}"> {
  let Inst{11-0} = 0x283;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit urb_bitnot;
  let Inst{97} = urb_bitnot;
}

def ELECTU_X : XYGPUPGuardInst<
    (outs PredOpr:$pu, URegOpr:$urd),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp),
    "electu ${pu}, ${urd}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x83;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit pp_not;
  let Inst{101} = pp_not;
}

def ELECT_U : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins SignModiOMOpr:$urb_bitnot, URegOpr:$urb),
    "elect ${pu}, ${rd}, ${urb_bitnot}${urb}"> {
  let Inst{11-0} = 0x282;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_bitnot;
  let Inst{97} = urb_bitnot;
}

def ELECT_X : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp),
    "elect ${pu}, ${rd}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x82;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
}

def ERRBAR_X : XYGPUPGuardInst<
    (outs ),
    (ins ),
    "errbar"> {
  let Inst{11-0} = 0x7a;
}

def EXIT_X : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp),
    "exit ${pp_not}${pp}"> {
  let Inst{11-0} = 0x58;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
}

def F2FP_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, HSelOMOpr:$rc_hsel, RegOpr:$rc, F2FPDstTypeIMOpr:$dsttype, F2FPSrcTypeIMOpr:$srctype, RELUIMOpr:$relu, SATFINITEIMOpr:$satf),
    "f2fp${dsttype}${srctype}${relu}${satf} ${rd}, ${ra}, ${vb_vsel}${vb_bank}${vb_offset}, ${rc_hsel}${rc}"> {
  let Inst{11-0} = 0xf35;
  bits<4> dsttype;
  let Inst{91-88} = dsttype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{81} = relu;
  bit satf;
  let Inst{80} = satf;
  bits<4> srctype;
  let Inst{95-92} = srctype;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bit rc_hsel;
  let Inst{84} = rc_hsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2FP_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, F32ImmOpr:$vb, HSelOMOpr:$rc_hsel, RegOpr:$rc, F2FPDstTypeIMOpr:$dsttype, F2FPSrcTypeIMOpr:$srctype, RELUIMOpr:$relu, SATFINITEIMOpr:$satf),
    "f2fp${dsttype}${srctype}${relu}${satf} ${rd}, ${ra}, ${vb}, ${rc_hsel}${rc}"> {
  let Inst{11-0} = 0xd35;
  bits<4> dsttype;
  let Inst{91-88} = dsttype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{81} = relu;
  bit satf;
  let Inst{80} = satf;
  bits<4> srctype;
  let Inst{95-92} = srctype;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit rc_hsel;
  let Inst{84} = rc_hsel;
}

def F2FP_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, VSelOMOpr:$rb_vsel, RegOpr:$rb, HSelOMOpr:$rc_hsel, RegOpr:$rc, F2FPDstTypeIMOpr:$dsttype, F2FPSrcTypeIMOpr:$srctype, RELUIMOpr:$relu, SATFINITEIMOpr:$satf),
    "f2fp${dsttype}${srctype}${relu}${satf} ${rd}, ${ra}, ${rb_vsel}${rb}, ${rc_hsel}${rc}"> {
  let Inst{11-0} = 0x935;
  bits<4> dsttype;
  let Inst{91-88} = dsttype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{81} = relu;
  bit satf;
  let Inst{80} = satf;
  bits<4> srctype;
  let Inst{95-92} = srctype;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
  bit rc_hsel;
  let Inst{84} = rc_hsel;
}

def F2FP_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, VSelOMOpr:$urb_vsel, URegOpr:$urb, HSelOMOpr:$rc_hsel, RegOpr:$rc, F2FPDstTypeIMOpr:$dsttype, F2FPSrcTypeIMOpr:$srctype, RELUIMOpr:$relu, SATFINITEIMOpr:$satf),
    "f2fp${dsttype}${srctype}${relu}${satf} ${rd}, ${ra}, ${urb_vsel}${urb}, ${rc_hsel}${rc}"> {
  let Inst{11-0} = 0xb35;
  bits<4> dsttype;
  let Inst{91-88} = dsttype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{81} = relu;
  bit satf;
  let Inst{80} = satf;
  bits<4> srctype;
  let Inst{95-92} = srctype;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
  bit rc_hsel;
  let Inst{84} = rc_hsel;
}

def F2F_64_C__BF16_F64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "f2f_64.bf16.f64${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x413;
  let Inst{89-88} = 0x3;
  let Inst{93-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2F_64_C__F16_F64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "f2f_64.f16.f64${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x413;
  let Inst{89-88} = 0x2;
  let Inst{93-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2F_64_C__F32_F64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "f2f_64.f32.f64${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x413;
  let Inst{89-88} = 0x1;
  let Inst{93-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2F_64_C__F64_BF16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "f2f_64.f64.bf16${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x413;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x3;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2F_64_C__F64_F16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "f2f_64.f64.f16${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x413;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x2;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2F_64_C__F64_F32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "f2f_64.f64.f32${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x413;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x1;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2F_64_C__F64_F64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "f2f_64.f64.f64${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x413;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2F_64_R__BF16_F64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "f2f_64.bf16.f64${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x113;
  let Inst{89-88} = 0x3;
  let Inst{93-92} = 0x0;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2F_64_R__F16_F64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "f2f_64.f16.f64${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x113;
  let Inst{89-88} = 0x2;
  let Inst{93-92} = 0x0;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2F_64_R__F32_F64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "f2f_64.f32.f64${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x113;
  let Inst{89-88} = 0x1;
  let Inst{93-92} = 0x0;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2F_64_R__F64_BF16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, FPRoundIMOpr:$rnd),
    "f2f_64.f64.bf16${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x113;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x3;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2F_64_R__F64_F16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, FPRoundIMOpr:$rnd),
    "f2f_64.f64.f16${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x113;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x2;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2F_64_R__F64_F32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, FPRoundIMOpr:$rnd),
    "f2f_64.f64.f32${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x113;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x1;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2F_64_R__F64_F64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "f2f_64.f64.f64${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x113;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x0;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2F_64_U__BF16_F64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "f2f_64.bf16.f64${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x213;
  let Inst{89-88} = 0x3;
  let Inst{93-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2F_64_U__F16_F64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "f2f_64.f16.f64${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x213;
  let Inst{89-88} = 0x2;
  let Inst{93-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2F_64_U__F32_F64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "f2f_64.f32.f64${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x213;
  let Inst{89-88} = 0x1;
  let Inst{93-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2F_64_U__F64_BF16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, FPRoundIMOpr:$rnd),
    "f2f_64.f64.bf16${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x213;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x3;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2F_64_U__F64_F16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, FPRoundIMOpr:$rnd),
    "f2f_64.f64.f16${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x213;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x2;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2F_64_U__F64_F32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, FPRoundIMOpr:$rnd),
    "f2f_64.f64.f32${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x213;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x1;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2F_64_U__F64_F64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "f2f_64.f64.f64${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x213;
  let Inst{89-88} = 0x0;
  let Inst{93-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2F_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FTypesNoF64IMOpr:$dsttype, FTypesNoF64IMOpr:$srctype, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd),
    "f2f${dsttype}${srctype}${ftz}${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x430;
  bits<2> dsttype;
  let Inst{89-88} = dsttype;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> srctype;
  let Inst{93-92} = srctype;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2F_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, FTypesNoF64IMOpr:$dsttype, FTypesNoF64IMOpr:$srctype, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd),
    "f2f${dsttype}${srctype}${ftz}${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x130;
  bits<2> dsttype;
  let Inst{89-88} = dsttype;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> srctype;
  let Inst{93-92} = srctype;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2F_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, FTypesNoF64IMOpr:$dsttype, FTypesNoF64IMOpr:$srctype, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd),
    "f2f${dsttype}${srctype}${ftz}${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x230;
  bits<2> dsttype;
  let Inst{89-88} = dsttype;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> srctype;
  let Inst{93-92} = srctype;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2IP_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, HSelOMOpr:$rc_hsel, RegOpr:$rc, I8TypesIMOpr:$i8type, F2INTZIMOpr:$ntz, RELUIMOpr:$relu, F2IRndIMOpr:$rnd),
    "f2ip${i8type}${ntz}${relu}${rnd} ${rd}, ${ra}, ${vb_bank}${vb_offset}, ${rc_hsel}${rc}"> {
  let Inst{11-0} = 0xf34;
  let Inst{93-92} = 0x1;
  bit i8type;
  let Inst{88} = i8type;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{81} = relu;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rc_hsel;
  let Inst{84} = rc_hsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2IP_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, F32ImmOpr:$vb, HSelOMOpr:$rc_hsel, RegOpr:$rc, I8TypesIMOpr:$i8type, F2INTZIMOpr:$ntz, RELUIMOpr:$relu, F2IRndIMOpr:$rnd),
    "f2ip${i8type}${ntz}${relu}${rnd} ${rd}, ${ra}, ${vb}, ${rc_hsel}${rc}"> {
  let Inst{11-0} = 0xd34;
  let Inst{93-92} = 0x1;
  bit i8type;
  let Inst{88} = i8type;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{81} = relu;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit rc_hsel;
  let Inst{84} = rc_hsel;
}

def F2IP_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, HSelOMOpr:$rc_hsel, RegOpr:$rc, I8TypesIMOpr:$i8type, F2INTZIMOpr:$ntz, RELUIMOpr:$relu, F2IRndIMOpr:$rnd),
    "f2ip${i8type}${ntz}${relu}${rnd} ${rd}, ${ra}, ${rb}, ${rc_hsel}${rc}"> {
  let Inst{11-0} = 0x934;
  let Inst{93-92} = 0x1;
  bit i8type;
  let Inst{88} = i8type;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{81} = relu;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rc_hsel;
  let Inst{84} = rc_hsel;
}

def F2IP_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, HSelOMOpr:$rc_hsel, RegOpr:$rc, I8TypesIMOpr:$i8type, F2INTZIMOpr:$ntz, RELUIMOpr:$relu, F2IRndIMOpr:$rnd),
    "f2ip${i8type}${ntz}${relu}${rnd} ${rd}, ${ra}, ${urb}, ${rc_hsel}${rc}"> {
  let Inst{11-0} = 0xb34;
  let Inst{93-92} = 0x1;
  bit i8type;
  let Inst{88} = i8type;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{81} = relu;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit rc_hsel;
  let Inst{84} = rc_hsel;
}

def F2I_64_C__BF16_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.bf16.s64${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x3;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__BF16_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.bf16.u64${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x3;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F16_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f16.s64${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x2;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F16_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f16.u64${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x2;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F32_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f32.s64${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x1;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f32.u64${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x1;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F64_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s64${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u64${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F64_S16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s16${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x2;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s32${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x4;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F64_S8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s8${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x0;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F64_U16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u16${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x3;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F64_U32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u32${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x5;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_C__F64_U8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u8${ntz}${rnd}${sat} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x414;
  let Inst{90-88} = 0x1;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_64_R__BF16_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.bf16.s64${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x3;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__BF16_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.bf16.u64${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x3;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F16_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f16.s64${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x2;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F16_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f16.u64${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x2;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F32_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f32.s64${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x1;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f32.u64${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x1;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F64_S16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s16${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x2;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s32${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x4;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F64_S8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s8${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x0;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F64_U16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u16${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x3;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F64_U32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u32${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x5;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F64_U8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u8${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x1;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F64_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s64${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_R__F64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegDOpr:$rb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u64${ntz}${rnd}${sat} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x114;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_64_U__BF16_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.bf16.s64${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x3;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__BF16_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.bf16.u64${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x3;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F16_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f16.s64${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x2;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F16_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f16.u64${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x2;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F32_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f32.s64${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x1;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f32.u64${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x1;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F64_S16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s16${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x2;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s32${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x4;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F64_S8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s8${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x0;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F64_U16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u16${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x3;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F64_U32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u32${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x5;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F64_U8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u8${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x1;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F64_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.s64${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x6;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_64_U__F64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegDOpr:$urb, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd, FPSatIMOpr:$sat),
    "f2i_64.f64.u64${ntz}${rnd}${sat} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x214;
  let Inst{90-88} = 0x7;
  let Inst{93-92} = 0x0;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{80} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def F2I_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FTypesNoF64IMOpr:$ftype, FPFtzIMOpr:$ftz, FullITypesNoI64IMOpr:$itype, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd),
    "f2i${ftype}${ftz}${itype}${ntz}${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x431;
  bits<2> ftype;
  let Inst{93-92} = ftype;
  bit ftz;
  let Inst{76} = ftz;
  bits<3> itype;
  let Inst{90-88} = itype;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def F2I_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, FTypesNoF64IMOpr:$ftype, FPFtzIMOpr:$ftz, FullITypesNoI64IMOpr:$itype, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd),
    "f2i${ftype}${ftz}${itype}${ntz}${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x131;
  bits<2> ftype;
  let Inst{93-92} = ftype;
  bit ftz;
  let Inst{76} = ftz;
  bits<3> itype;
  let Inst{90-88} = itype;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def F2I_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, FTypesNoF64IMOpr:$ftype, FPFtzIMOpr:$ftz, FullITypesNoI64IMOpr:$itype, F2INTZIMOpr:$ntz, F2IRndIMOpr:$rnd),
    "f2i${ftype}${ftz}${itype}${ntz}${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x231;
  bits<2> ftype;
  let Inst{93-92} = ftype;
  bit ftz;
  let Inst{76} = ftz;
  bits<3> itype;
  let Inst{90-88} = itype;
  bit ntz;
  let Inst{77} = ntz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def FADD_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "fadd${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x800;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FADD_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, F32ImmOpr:$vb, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "fadd${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}"> {
  let Inst{11-0} = 0x700;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
}

def FADD_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "fadd${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x500;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def FADD_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegOpr:$urb, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "fadd${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x600;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def FCHK_RC : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "fchk ${pu}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x807;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FCHK_RI : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, F32ImmOpr:$vb),
    "fchk ${pu}, ${ra_abs}${ra_neg}${ra}, ${vb}"> {
  let Inst{11-0} = 0x707;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
}

def FCHK_RR : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb),
    "fchk ${pu}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x507;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def FCHK_RU : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegOpr:$urb),
    "fchk ${pu}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x607;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def FFMA_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, SignModiOMOpr:$rc_abs, SignModiOMOpr:$rc_neg, RegOpr:$rc, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "ffma${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}, ${rc_abs}${rc_neg}${rc}"> {
  let Inst{11-0} = 0xf02;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FFMA_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, F32ImmOpr:$vb, SignModiOMOpr:$rc_abs, SignModiOMOpr:$rc_neg, RegOpr:$rc, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "ffma${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}, ${rc_abs}${rc_neg}${rc}"> {
  let Inst{11-0} = 0xd02;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bit rc_neg;
  let Inst{74} = rc_neg;
}

def FFMA_RRC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, SignModiOMOpr:$vc_abs, SignModiOMOpr:$vc_neg, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "ffma${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${vc_abs}${vc_neg}${vc_bank}${vc_offset}"> {
  let Inst{11-0} = 0xe02;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{75} = rb_abs;
  bit rb_neg;
  let Inst{74} = rb_neg;
  bit vc_abs;
  let Inst{97} = vc_abs;
  bit vc_neg;
  let Inst{96} = vc_neg;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def FFMA_RRI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, F32ImmOpr:$vc, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "ffma${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${vc}"> {
  let Inst{11-0} = 0xc02;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<32> vc;
  let Inst{63-32} = vc;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{75} = rb_abs;
  bit rb_neg;
  let Inst{74} = rb_neg;
}

def FFMA_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, SignModiOMOpr:$rc_abs, SignModiOMOpr:$rc_neg, RegOpr:$rc, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "ffma${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${rc_abs}${rc_neg}${rc}"> {
  let Inst{11-0} = 0x902;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bit rc_neg;
  let Inst{74} = rc_neg;
}

def FFMA_RRU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, SignModiOMOpr:$urc_abs, SignModiOMOpr:$urc_neg, URegOpr:$urc, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "ffma${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${urc_abs}${urc_neg}${urc}"> {
  let Inst{11-0} = 0xa02;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<6> urc;
  let Inst{37-32} = urc;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{75} = rb_abs;
  bit rb_neg;
  let Inst{74} = rb_neg;
  bit urc_abs;
  let Inst{97} = urc_abs;
  bit urc_neg;
  let Inst{96} = urc_neg;
}

def FFMA_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegOpr:$urb, SignModiOMOpr:$rc_abs, SignModiOMOpr:$rc_neg, RegOpr:$rc, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat),
    "ffma${ftz}${rnd}${sat} ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}, ${rc_abs}${rc_neg}${rc}"> {
  let Inst{11-0} = 0xb02;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bit rc_neg;
  let Inst{74} = rc_neg;
}

def FLO_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_bitnot, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, ITypeIMOpr:$itype, FLOSHIMOpr:$sh),
    "flo${itype}${sh} ${rd}, ${vb_bitnot}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x450;
  bit itype;
  let Inst{80} = itype;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sh;
  let Inst{81} = sh;
  bit vb_bitnot;
  let Inst{97} = vb_bitnot;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FLO_I : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SImm32Opr:$vb, ITypeIMOpr:$itype, FLOSHIMOpr:$sh),
    "flo${itype}${sh} ${rd}, ${vb}"> {
  let Inst{11-0} = 0x350;
  bit itype;
  let Inst{80} = itype;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sh;
  let Inst{81} = sh;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def FLO_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_bitnot, RegOpr:$rb, ITypeIMOpr:$itype, FLOSHIMOpr:$sh),
    "flo${itype}${sh} ${rd}, ${rb_bitnot}${rb}"> {
  let Inst{11-0} = 0x150;
  bit itype;
  let Inst{80} = itype;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sh;
  let Inst{81} = sh;
  bit rb_bitnot;
  let Inst{97} = rb_bitnot;
}

def FLO_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_bitnot, URegOpr:$urb, ITypeIMOpr:$itype, FLOSHIMOpr:$sh),
    "flo${itype}${sh} ${rd}, ${urb_bitnot}${urb}"> {
  let Inst{11-0} = 0x250;
  bit itype;
  let Inst{80} = itype;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sh;
  let Inst{81} = sh;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_bitnot;
  let Inst{97} = urb_bitnot;
}

def FMNMX_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz, NanIMOpr:$nan),
    "fmnmx${ftz}${nan} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x803;
  bit ftz;
  let Inst{76} = ftz;
  bit nan;
  let Inst{83} = nan;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FMNMX_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, F32ImmOpr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz, NanIMOpr:$nan),
    "fmnmx${ftz}${nan} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x703;
  bit ftz;
  let Inst{76} = ftz;
  bit nan;
  let Inst{83} = nan;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FMNMX_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz, NanIMOpr:$nan),
    "fmnmx${ftz}${nan} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x503;
  bit ftz;
  let Inst{76} = ftz;
  bit nan;
  let Inst{83} = nan;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FMNMX_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz, NanIMOpr:$nan),
    "fmnmx${ftz}${nan} ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x603;
  bit ftz;
  let Inst{76} = ftz;
  bit nan;
  let Inst{83} = nan;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FMUL_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat, FMULScaleIMOpr:$scl),
    "fmul${ftz}${rnd}${sat}${scl} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x801;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<3> scl;
  let Inst{82-80} = scl;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FMUL_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, F32ImmOpr:$vb, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat, FMULScaleIMOpr:$scl),
    "fmul${ftz}${rnd}${sat}${scl} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}"> {
  let Inst{11-0} = 0x701;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<3> scl;
  let Inst{82-80} = scl;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
}

def FMUL_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat, FMULScaleIMOpr:$scl),
    "fmul${ftz}${rnd}${sat}${scl} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x501;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<3> scl;
  let Inst{82-80} = scl;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def FMUL_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegOpr:$urb, FPFtzIMOpr:$ftz, FPRoundIMOpr:$rnd, FPSatIMOpr:$sat, FMULScaleIMOpr:$scl),
    "fmul${ftz}${rnd}${sat}${scl} ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x601;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit sat;
  let Inst{77} = sat;
  bits<3> scl;
  let Inst{82-80} = scl;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def FRND_64_C : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPFtzIMOpr:$ftz, F2IRndIMOpr:$rnd),
    "frnd_64${ftz}${rnd} ${rd}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x416;
  let Inst{89-88} = 0x2;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FRND_64_R : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegDOpr:$rb, FPFtzIMOpr:$ftz, F2IRndIMOpr:$rnd),
    "frnd_64${ftz}${rnd} ${rd}, ${rb_abs}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x116;
  let Inst{89-88} = 0x2;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def FRND_64_U : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegDOpr:$urb, FPFtzIMOpr:$ftz, F2IRndIMOpr:$rnd),
    "frnd_64${ftz}${rnd} ${rd}, ${urb_abs}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x216;
  let Inst{89-88} = 0x2;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def FRND_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, F32F16IMOpr:$ftype, FPFtzIMOpr:$ftz, F2IRndIMOpr:$rnd),
    "frnd${ftype}${ftz}${rnd} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x433;
  bits<2> ftype;
  let Inst{89-88} = ftype;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{82} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FRND_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, F32F16IMOpr:$ftype, FPFtzIMOpr:$ftz, F2IRndIMOpr:$rnd),
    "frnd${ftype}${ftz}${rnd} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x133;
  bits<2> ftype;
  let Inst{89-88} = ftype;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{82} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def FRND_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, F32F16IMOpr:$ftype, FPFtzIMOpr:$ftz, F2IRndIMOpr:$rnd),
    "frnd${ftype}${ftz}${rnd} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x233;
  bits<2> ftype;
  let Inst{89-88} = ftype;
  bit ftz;
  let Inst{76} = ftz;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{82} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def FSEL_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz),
    "fsel${ftz} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x806;
  bit ftz;
  let Inst{76} = ftz;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FSEL_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, F32ImmOpr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz),
    "fsel${ftz} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x706;
  bit ftz;
  let Inst{76} = ftz;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FSEL_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz),
    "fsel${ftz} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x506;
  bit ftz;
  let Inst{76} = ftz;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FSEL_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz),
    "fsel${ftz} ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x606;
  bit ftz;
  let Inst{76} = ftz;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FSETP_RC : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, LOPOpIMOpr:$lop),
    "fsetp${cmp}${ftz}${lop} ${pu}, ${pv}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x804;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FSETP_RI : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, F32ImmOpr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, LOPOpIMOpr:$lop),
    "fsetp${cmp}${ftz}${lop} ${pu}, ${pv}, ${ra_abs}${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x704;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FSETP_RR : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, LOPOpIMOpr:$lop),
    "fsetp${cmp}${ftz}${lop} ${pu}, ${pv}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x504;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FSETP_RU : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, LOPOpIMOpr:$lop),
    "fsetp${cmp}${ftz}${lop} ${pu}, ${pv}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x604;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FSET_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, BValIMOpr:$bval, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, LOPOpIMOpr:$lop),
    "fset${bval}${cmp}${ftz}${lop} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb_abs}${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x805;
  bit bval;
  let Inst{90} = bval;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def FSET_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, F32ImmOpr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, BValIMOpr:$bval, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, LOPOpIMOpr:$lop),
    "fset${bval}${cmp}${ftz}${lop} ${rd}, ${ra_abs}${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x705;
  bit bval;
  let Inst{90} = bval;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FSET_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, SignModiOMOpr:$rb_neg, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, BValIMOpr:$bval, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, LOPOpIMOpr:$lop),
    "fset${bval}${cmp}${ftz}${lop} ${rd}, ${ra_abs}${ra_neg}${ra}, ${rb_abs}${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x505;
  bit bval;
  let Inst{90} = bval;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def FSET_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, SignModiOMOpr:$urb_neg, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, BValIMOpr:$bval, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, LOPOpIMOpr:$lop),
    "fset${bval}${cmp}${ftz}${lop} ${rd}, ${ra_abs}${ra_neg}${ra}, ${urb_abs}${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x605;
  bit bval;
  let Inst{90} = bval;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def GETGPR_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins URegOpr:$urb, SImm9Opr:$ridx),
    "getgpr ${rd}, ${urb}${ridx}"> {
  let Inst{11-0} = 0x22e;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<9> ridx;
  let Inst{40-32} = ridx;
  bits<6> urb;
  let Inst{69-64} = urb;
}

def GETREG_I : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins UImm32Opr:$regaddr),
    "getreg ${rd}, ${regaddr}"> {
  let Inst{11-0} = 0x395;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> regaddr;
  let Inst{63-32} = regaddr;
}

def GETREG_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$rb),
    "getreg ${rd}, ${rb}"> {
  let Inst{11-0} = 0x195;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def GETREG_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins URegOpr:$urb),
    "getreg ${rd}, ${urb}"> {
  let Inst{11-0} = 0x295;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def GETUGPR_UI : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$urb, SImm7Opr:$uridx),
    "getugpr ${urd}, ${urb}${uridx}"> {
  let Inst{11-0} = 0x74d;
  bits<6> urb;
  let Inst{69-64} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<7> uridx;
  let Inst{38-32} = uridx;
}

def HADD2_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, HSel2OMOpr:$vb_hsel2, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, FPSatIMOpr:$sat),
    "hadd2${ftz}${hfmt_v2}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb_abs}${vb_hsel2}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x808;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bits<2> vb_hsel2;
  let Inst{83-82} = vb_hsel2;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def HADD2_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, F16ImmX2Opr:$vb, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, FPSatIMOpr:$sat),
    "hadd2${ftz}${hfmt_v2}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb}"> {
  let Inst{11-0} = 0x708;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{77} = sat;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
}

def HADD2_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, HSel2OMOpr:$rb_hsel2, SignModiOMOpr:$rb_neg, RegOpr:$rb, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, FPSatIMOpr:$sat),
    "hadd2${ftz}${hfmt_v2}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${rb_abs}${rb_hsel2}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x508;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bits<2> rb_hsel2;
  let Inst{83-82} = rb_hsel2;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def HADD2_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, HSel2OMOpr:$urb_hsel2, SignModiOMOpr:$urb_neg, URegOpr:$urb, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, FPSatIMOpr:$sat),
    "hadd2${ftz}${hfmt_v2}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${urb_abs}${urb_hsel2}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x608;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{77} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bits<2> urb_hsel2;
  let Inst{83-82} = urb_hsel2;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def HFMA2_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, HSel2OMOpr:$vb_hsel2, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, SignModiOMOpr:$rc_abs, HSel2OMOpr:$rc_hsel2, SignModiOMOpr:$rc_neg, RegOpr:$rc, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, RELUIMOpr:$relu, FPSatIMOpr:$sat),
    "hfma2${ftz}${hfmt_v2}${relu}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb_abs}${vb_hsel2}${vb_neg}${vb_bank}${vb_offset}, ${rc_abs}${rc_hsel2}${rc_neg}${rc}"> {
  let Inst{11-0} = 0xf0a;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{92} = relu;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bits<2> vb_hsel2;
  let Inst{83-82} = vb_hsel2;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bits<2> rc_hsel2;
  let Inst{85-84} = rc_hsel2;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def HFMA2_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, F16ImmX2Opr:$vb, SignModiOMOpr:$rc_abs, HSel2OMOpr:$rc_hsel2, SignModiOMOpr:$rc_neg, RegOpr:$rc, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, RELUIMOpr:$relu, FPSatIMOpr:$sat),
    "hfma2${ftz}${hfmt_v2}${relu}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb}, ${rc_abs}${rc_hsel2}${rc_neg}${rc}"> {
  let Inst{11-0} = 0xd0a;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{92} = relu;
  bit sat;
  let Inst{77} = sat;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bits<2> rc_hsel2;
  let Inst{85-84} = rc_hsel2;
  bit rc_neg;
  let Inst{74} = rc_neg;
}

def HFMA2_RRC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, HSel2OMOpr:$rb_hsel2, SignModiOMOpr:$rb_neg, RegOpr:$rb, SignModiOMOpr:$vc_abs, HSel2OMOpr:$vc_hsel2, SignModiOMOpr:$vc_neg, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, RELUIMOpr:$relu, FPSatIMOpr:$sat),
    "hfma2${ftz}${hfmt_v2}${relu}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${rb_abs}${rb_hsel2}${rb_neg}${rb}, ${vc_abs}${vc_hsel2}${vc_neg}${vc_bank}${vc_offset}"> {
  let Inst{11-0} = 0xe0a;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{92} = relu;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{75} = rb_abs;
  bits<2> rb_hsel2;
  let Inst{83-82} = rb_hsel2;
  bit rb_neg;
  let Inst{74} = rb_neg;
  bit vc_abs;
  let Inst{97} = vc_abs;
  bits<2> vc_hsel2;
  let Inst{85-84} = vc_hsel2;
  bit vc_neg;
  let Inst{96} = vc_neg;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def HFMA2_RRI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, HSel2OMOpr:$rb_hsel2, SignModiOMOpr:$rb_neg, RegOpr:$rb, F16ImmX2Opr:$vc, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, RELUIMOpr:$relu, FPSatIMOpr:$sat),
    "hfma2${ftz}${hfmt_v2}${relu}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${rb_abs}${rb_hsel2}${rb_neg}${rb}, ${vc}"> {
  let Inst{11-0} = 0xc0a;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{92} = relu;
  bit sat;
  let Inst{77} = sat;
  bits<32> vc;
  let Inst{63-32} = vc;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{75} = rb_abs;
  bits<2> rb_hsel2;
  let Inst{83-82} = rb_hsel2;
  bit rb_neg;
  let Inst{74} = rb_neg;
}

def HFMA2_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, HSel2OMOpr:$rb_hsel2, SignModiOMOpr:$rb_neg, RegOpr:$rb, SignModiOMOpr:$rc_abs, HSel2OMOpr:$rc_hsel2, SignModiOMOpr:$rc_neg, RegOpr:$rc, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, RELUIMOpr:$relu, FPSatIMOpr:$sat),
    "hfma2${ftz}${hfmt_v2}${relu}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${rb_abs}${rb_hsel2}${rb_neg}${rb}, ${rc_abs}${rc_hsel2}${rc_neg}${rc}"> {
  let Inst{11-0} = 0x90a;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{92} = relu;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bits<2> rb_hsel2;
  let Inst{83-82} = rb_hsel2;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bits<2> rc_hsel2;
  let Inst{85-84} = rc_hsel2;
  bit rc_neg;
  let Inst{74} = rc_neg;
}

def HFMA2_RRU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, HSel2OMOpr:$rb_hsel2, SignModiOMOpr:$rb_neg, RegOpr:$rb, SignModiOMOpr:$urc_abs, HSel2OMOpr:$urc_hsel2, SignModiOMOpr:$urc_neg, URegOpr:$urc, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, RELUIMOpr:$relu, FPSatIMOpr:$sat),
    "hfma2${ftz}${hfmt_v2}${relu}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${rb_abs}${rb_hsel2}${rb_neg}${rb}, ${urc_abs}${urc_hsel2}${urc_neg}${urc}"> {
  let Inst{11-0} = 0xa0a;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{92} = relu;
  bit sat;
  let Inst{77} = sat;
  bits<6> urc;
  let Inst{37-32} = urc;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{75} = rb_abs;
  bits<2> rb_hsel2;
  let Inst{83-82} = rb_hsel2;
  bit rb_neg;
  let Inst{74} = rb_neg;
  bit urc_abs;
  let Inst{97} = urc_abs;
  bits<2> urc_hsel2;
  let Inst{85-84} = urc_hsel2;
  bit urc_neg;
  let Inst{96} = urc_neg;
}

def HFMA2_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, HSel2OMOpr:$urb_hsel2, SignModiOMOpr:$urb_neg, URegOpr:$urb, SignModiOMOpr:$rc_abs, HSel2OMOpr:$rc_hsel2, SignModiOMOpr:$rc_neg, RegOpr:$rc, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, RELUIMOpr:$relu, FPSatIMOpr:$sat),
    "hfma2${ftz}${hfmt_v2}${relu}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${urb_abs}${urb_hsel2}${urb_neg}${urb}, ${rc_abs}${rc_hsel2}${rc_neg}${rc}"> {
  let Inst{11-0} = 0xb0a;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit relu;
  let Inst{92} = relu;
  bit sat;
  let Inst{77} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bits<2> urb_hsel2;
  let Inst{83-82} = urb_hsel2;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit rc_abs;
  let Inst{75} = rc_abs;
  bits<2> rc_hsel2;
  let Inst{85-84} = rc_hsel2;
  bit rc_neg;
  let Inst{74} = rc_neg;
}

def HMMA_RRR__BF16_F32_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc),
    "hmma.f32.bf16.16816 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x984;
  let Inst{73-72} = 0x1;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def HMMA_RRR__F16_F32_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc),
    "hmma.f32.f16.16816 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x984;
  let Inst{73-72} = 0x2;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def HMMA_RRR__TF32_F32_1688 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc),
    "hmma.f32.tf32.1688 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x984;
  let Inst{73-72} = 0x0;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def HMMA_RRR__BF16_F32_1688 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc),
    "hmma.f32.bf16.1688 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x984;
  let Inst{73-72} = 0x1;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def HMMA_RRR__F16_F32_1688 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc),
    "hmma.f32.f16.1688 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x984;
  let Inst{73-72} = 0x2;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def HMMA_RRR__TF32_F32_1684 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc),
    "hmma.f32.tf32.1684 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x984;
  let Inst{73-72} = 0x0;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x0;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def HMMA_RRR__F16_F16_16816 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegDOpr:$rc),
    "hmma.f16.f16.16816 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x984;
  let Inst{73-72} = 0x2;
  let Inst{77-76} = 0x0;
  let Inst{81-80} = 0x2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def HMMA_RRR__F16_F16_1688 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc),
    "hmma.f16.f16.1688 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x984;
  let Inst{73-72} = 0x2;
  let Inst{77-76} = 0x0;
  let Inst{81-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def HMMA_SP_RRR__BF16_F32_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "hmma_sp.f32.bf16.16816 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x985;
  let Inst{73-72} = 0x1;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def HMMA_SP_RRR__F16_F32_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "hmma_sp.f32.f16.16816 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x985;
  let Inst{73-72} = 0x2;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def HMMA_SP_RRR__TF32_F32_1688 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "hmma_sp.f32.tf32.1688 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x985;
  let Inst{73-72} = 0x0;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x0;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def HMMA_SP_RRR__BF16_F32_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "hmma_sp.f32.bf16.16832 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x985;
  let Inst{73-72} = 0x1;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x2;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def HMMA_SP_RRR__F16_F32_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "hmma_sp.f32.f16.16832 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x985;
  let Inst{73-72} = 0x2;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x2;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def HMMA_SP_RRR__TF32_F32_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "hmma_sp.f32.tf32.16816 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x985;
  let Inst{73-72} = 0x0;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def HMMA_SP_RRR__F16_F16_16816 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegDOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "hmma_sp.f16.f16.16816 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x985;
  let Inst{73-72} = 0x2;
  let Inst{77-76} = 0x0;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def HMMA_SP_RRR__F16_F16_16832 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegDOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "hmma_sp.f16.f16.16832 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x985;
  let Inst{73-72} = 0x2;
  let Inst{77-76} = 0x0;
  let Inst{81-80} = 0x2;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def HMNMX2_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, HSel2OMOpr:$vb_hsel2, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, NanIMOpr:$nan),
    "hmnmx2${ftz}${hfmt_v2}${nan} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb_abs}${vb_hsel2}${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x80b;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bit nan;
  let Inst{84} = nan;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bits<2> vb_hsel2;
  let Inst{83-82} = vb_hsel2;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def HMNMX2_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, F16ImmX2Opr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, NanIMOpr:$nan),
    "hmnmx2${ftz}${hfmt_v2}${nan} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x70b;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bit nan;
  let Inst{84} = nan;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def HMNMX2_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, HSel2OMOpr:$rb_hsel2, SignModiOMOpr:$rb_neg, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, NanIMOpr:$nan),
    "hmnmx2${ftz}${hfmt_v2}${nan} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${rb_abs}${rb_hsel2}${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x50b;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bit nan;
  let Inst{84} = nan;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bits<2> rb_hsel2;
  let Inst{83-82} = rb_hsel2;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def HMNMX2_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, HSel2OMOpr:$urb_hsel2, SignModiOMOpr:$urb_neg, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, NanIMOpr:$nan),
    "hmnmx2${ftz}${hfmt_v2}${nan} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${urb_abs}${urb_hsel2}${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x60b;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bit nan;
  let Inst{84} = nan;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bits<2> urb_hsel2;
  let Inst{83-82} = urb_hsel2;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def HMUL2_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, HSel2OMOpr:$vb_hsel2, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, FPSatIMOpr:$sat),
    "hmul2${ftz}${hfmt_v2}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb_abs}${vb_hsel2}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x809;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bits<2> vb_hsel2;
  let Inst{83-82} = vb_hsel2;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def HMUL2_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, F16ImmX2Opr:$vb, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, FPSatIMOpr:$sat),
    "hmul2${ftz}${hfmt_v2}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb}"> {
  let Inst{11-0} = 0x709;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{77} = sat;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
}

def HMUL2_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, HSel2OMOpr:$rb_hsel2, SignModiOMOpr:$rb_neg, RegOpr:$rb, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, FPSatIMOpr:$sat),
    "hmul2${ftz}${hfmt_v2}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${rb_abs}${rb_hsel2}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x509;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{77} = sat;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bits<2> rb_hsel2;
  let Inst{83-82} = rb_hsel2;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def HMUL2_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, HSel2OMOpr:$urb_hsel2, SignModiOMOpr:$urb_neg, URegOpr:$urb, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, FPSatIMOpr:$sat),
    "hmul2${ftz}${hfmt_v2}${sat} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${urb_abs}${urb_hsel2}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x609;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{77} = sat;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bits<2> urb_hsel2;
  let Inst{83-82} = urb_hsel2;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def HSET2_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, HSel2OMOpr:$vb_hsel2, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, BValIMOpr:$bval, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, LOPOpIMOpr:$lop),
    "hset2${bval}${cmp}${ftz}${hfmt_v2}${lop} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb_abs}${vb_hsel2}${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x80d;
  bit bval;
  let Inst{90} = bval;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bits<2> vb_hsel2;
  let Inst{83-82} = vb_hsel2;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def HSET2_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, F16ImmX2Opr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, BValIMOpr:$bval, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, LOPOpIMOpr:$lop),
    "hset2${bval}${cmp}${ftz}${hfmt_v2}${lop} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x70d;
  bit bval;
  let Inst{90} = bval;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def HSET2_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, HSel2OMOpr:$rb_hsel2, SignModiOMOpr:$rb_neg, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, BValIMOpr:$bval, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, LOPOpIMOpr:$lop),
    "hset2${bval}${cmp}${ftz}${hfmt_v2}${lop} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${rb_abs}${rb_hsel2}${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x50d;
  bit bval;
  let Inst{90} = bval;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bits<2> rb_hsel2;
  let Inst{83-82} = rb_hsel2;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def HSET2_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, HSel2OMOpr:$urb_hsel2, SignModiOMOpr:$urb_neg, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, BValIMOpr:$bval, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, LOPOpIMOpr:$lop),
    "hset2${bval}${cmp}${ftz}${hfmt_v2}${lop} ${rd}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${urb_abs}${urb_hsel2}${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x60d;
  bit bval;
  let Inst{90} = bval;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bits<2> urb_hsel2;
  let Inst{83-82} = urb_hsel2;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def HSETP2_RC : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_abs, HSel2OMOpr:$vb_hsel2, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, LOPOpIMOpr:$lop),
    "hsetp2${cmp}${ftz}${hfmt_v2}${lop} ${pu}, ${pv}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb_abs}${vb_hsel2}${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x80c;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bits<2> vb_hsel2;
  let Inst{83-82} = vb_hsel2;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def HSETP2_RI : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, F16ImmX2Opr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, LOPOpIMOpr:$lop),
    "hsetp2${cmp}${ftz}${hfmt_v2}${lop} ${pu}, ${pv}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x70c;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def HSETP2_RR : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_abs, HSel2OMOpr:$rb_hsel2, SignModiOMOpr:$rb_neg, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, LOPOpIMOpr:$lop),
    "hsetp2${cmp}${ftz}${hfmt_v2}${lop} ${pu}, ${pv}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${rb_abs}${rb_hsel2}${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x50c;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bits<2> rb_hsel2;
  let Inst{83-82} = rb_hsel2;
  bit rb_neg;
  let Inst{96} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def HSETP2_RU : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins SignModiOMOpr:$ra_abs, HSel2OMOpr:$ra_hsel2, SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_abs, HSel2OMOpr:$urb_hsel2, SignModiOMOpr:$urb_neg, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, FCMPOpIMOpr:$cmp, FPFtzIMOpr:$ftz, HFmtV2IMOpr:$hfmt_v2, LOPOpIMOpr:$lop),
    "hsetp2${cmp}${ftz}${hfmt_v2}${lop} ${pu}, ${pv}, ${ra_abs}${ra_hsel2}${ra_neg}${ra}, ${urb_abs}${urb_hsel2}${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x60c;
  bits<4> cmp;
  let Inst{89-86} = cmp;
  bit ftz;
  let Inst{76} = ftz;
  bit hfmt_v2;
  let Inst{94} = hfmt_v2;
  bits<2> lop;
  let Inst{85-84} = lop;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_abs;
  let Inst{73} = ra_abs;
  bits<2> ra_hsel2;
  let Inst{81-80} = ra_hsel2;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bits<2> urb_hsel2;
  let Inst{83-82} = urb_hsel2;
  bit urb_neg;
  let Inst{96} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def I2F_64_C__BF16_S64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.bf16.s64${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x3;
  let Inst{94-92} = 0x6;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__BF16_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.bf16.u64${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x3;
  let Inst{94-92} = 0x7;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F16_S64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f16.s64${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x2;
  let Inst{94-92} = 0x6;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F16_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f16.u64${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x2;
  let Inst{94-92} = 0x7;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F32_S64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f32.s64${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x1;
  let Inst{94-92} = 0x6;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f32.u64${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x1;
  let Inst{94-92} = 0x7;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F64_S16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s16${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x2;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s32${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x4;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F64_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s64${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x6;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F64_S8 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s8${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F64_U16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u16${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x3;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F64_U32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u32${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x5;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u64${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x7;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_C__F64_U8 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u8${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x415;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x1;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_64_R__BF16_S64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.bf16.s64${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x3;
  let Inst{94-92} = 0x6;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__BF16_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.bf16.u64${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x3;
  let Inst{94-92} = 0x7;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F16_S64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f16.s64${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x2;
  let Inst{94-92} = 0x6;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F16_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f16.u64${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x2;
  let Inst{94-92} = 0x7;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F32_S64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f32.s64${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x1;
  let Inst{94-92} = 0x6;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f32.u64${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x1;
  let Inst{94-92} = 0x7;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F64_S16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s16${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x2;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s32${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x4;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F64_S8 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s8${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x0;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F64_U16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u16${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x3;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F64_U32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u32${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x5;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F64_U8 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u8${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x1;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F64_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s64${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x6;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_R__F64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegDOpr:$rb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u64${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x115;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x7;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_64_U__BF16_S64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.bf16.s64${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x3;
  let Inst{94-92} = 0x6;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__BF16_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.bf16.u64${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x3;
  let Inst{94-92} = 0x7;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F16_S64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f16.s64${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x2;
  let Inst{94-92} = 0x6;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F16_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f16.u64${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x2;
  let Inst{94-92} = 0x7;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F32_S64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f32.s64${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x1;
  let Inst{94-92} = 0x6;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f32.u64${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x1;
  let Inst{94-92} = 0x7;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F64_S16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s16${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x2;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s32${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x4;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F64_S8 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s8${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F64_U16 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u16${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x3;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F64_U32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u32${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x5;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F64_U8 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u8${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x1;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F64_S64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.s64${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x6;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_64_U__F64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegDOpr:$urb, FPRoundIMOpr:$rnd),
    "i2f_64.f64.u64${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x215;
  let Inst{89-88} = 0x0;
  let Inst{94-92} = 0x7;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2F_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$vb_vsel, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, FTypesNoF64IMOpr:$ftype, FullITypesNoI64IMOpr:$itype, FPRoundIMOpr:$rnd),
    "i2f${ftype}${itype}${rnd} ${rd}, ${vb_vsel}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x432;
  bits<2> ftype;
  let Inst{89-88} = ftype;
  bits<3> itype;
  let Inst{94-92} = itype;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> vb_vsel;
  let Inst{83-82} = vb_vsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2F_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$rb_vsel, RegOpr:$rb, FTypesNoF64IMOpr:$ftype, FullITypesNoI64IMOpr:$itype, FPRoundIMOpr:$rnd),
    "i2f${ftype}${itype}${rnd} ${rd}, ${rb_vsel}${rb}"> {
  let Inst{11-0} = 0x132;
  bits<2> ftype;
  let Inst{89-88} = ftype;
  bits<3> itype;
  let Inst{94-92} = itype;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<2> rb_vsel;
  let Inst{83-82} = rb_vsel;
}

def I2F_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins VSelOMOpr:$urb_vsel, URegOpr:$urb, FTypesNoF64IMOpr:$ftype, FullITypesNoI64IMOpr:$itype, FPRoundIMOpr:$rnd),
    "i2f${ftype}${itype}${rnd} ${rd}, ${urb_vsel}${urb}"> {
  let Inst{11-0} = 0x232;
  bits<2> ftype;
  let Inst{89-88} = ftype;
  bits<3> itype;
  let Inst{94-92} = itype;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> rnd;
  let Inst{79-78} = rnd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> urb_vsel;
  let Inst{83-82} = urb_vsel;
}

def I2IP_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$rc, I2IPDTypeIMOpr:$dsttype),
    "i2ip${dsttype} ${rd}, ${ra}, ${vb_bank}${vb_offset}, ${rc}"> {
  let Inst{11-0} = 0xf2b;
  let Inst{75} = 0x0;
  bits<3> dsttype;
  let Inst{78-76} = dsttype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2IP_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, RegOpr:$rc, I2IPDTypeIMOpr:$dsttype),
    "i2ip${dsttype} ${rd}, ${ra}, ${vb}, ${rc}"> {
  let Inst{11-0} = 0xd2b;
  let Inst{75} = 0x0;
  bits<3> dsttype;
  let Inst{78-76} = dsttype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def I2IP_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, RegOpr:$rc, I2IPDTypeIMOpr:$dsttype),
    "i2ip${dsttype} ${rd}, ${ra}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x92b;
  let Inst{75} = 0x0;
  bits<3> dsttype;
  let Inst{78-76} = dsttype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def I2IP_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, RegOpr:$rc, I2IPDTypeIMOpr:$dsttype),
    "i2ip${dsttype} ${rd}, ${ra}, ${urb}, ${rc}"> {
  let Inst{11-0} = 0xb2b;
  let Inst{75} = 0x0;
  bits<3> dsttype;
  let Inst{78-76} = dsttype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def I2I_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, I2IDTypeIMOpr:$dtype),
    "i2i${dtype} ${rd}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x42a;
  bits<2> dtype;
  let Inst{77-76} = dtype;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def I2I_I : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SImm32Opr:$vb, I2IDTypeIMOpr:$dtype),
    "i2i${dtype} ${rd}, ${vb}"> {
  let Inst{11-0} = 0x32a;
  bits<2> dtype;
  let Inst{77-76} = dtype;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def I2I_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$rb, I2IDTypeIMOpr:$dtype),
    "i2i${dtype} ${rd}, ${rb}"> {
  let Inst{11-0} = 0x12a;
  bits<2> dtype;
  let Inst{77-76} = dtype;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def I2I_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins URegOpr:$urb, I2IDTypeIMOpr:$dtype),
    "i2i${dtype} ${rd}, ${urb}"> {
  let Inst{11-0} = 0x22a;
  bits<2> dtype;
  let Inst{77-76} = dtype;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def IABS_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "iabs ${rd}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x41e;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def IABS_I : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SImm32Opr:$vb),
    "iabs ${rd}, ${vb}"> {
  let Inst{11-0} = 0x31e;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def IABS_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$rb),
    "iabs ${rd}, ${rb}"> {
  let Inst{11-0} = 0x11e;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def IABS_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins URegOpr:$urb),
    "iabs ${rd}, ${urb}"> {
  let Inst{11-0} = 0x21e;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def IADD_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext),
    "iadd${ext} ${rd}, ${pu}, ${ra_neg}${ra}, ${vb_neg}${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x817;
  bit ext;
  let Inst{76} = ext;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_neg;
  let Inst{97} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def IADD_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins SignModiOMOpr:$ra_neg, RegOpr:$ra, SImm32Opr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext),
    "iadd${ext} ${rd}, ${pu}, ${ra_neg}${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x717;
  bit ext;
  let Inst{76} = ext;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IADD_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_neg, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext),
    "iadd${ext} ${rd}, ${pu}, ${ra_neg}${ra}, ${rb_neg}${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x517;
  bit ext;
  let Inst{76} = ext;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_neg;
  let Inst{97} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IADD_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_neg, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext),
    "iadd${ext} ${rd}, ${pu}, ${ra_neg}${ra}, ${urb_neg}${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x617;
  bit ext;
  let Inst{76} = ext;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_neg;
  let Inst{97} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IBBAR_X : XYGPUPGuardInst<
    (outs ),
    (ins ),
    "ibbar"> {
  let Inst{11-0} = 0x99;
}

def IDP2A_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, I16TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt, LOHIIMOpr:$lohi),
    "idp2a${afmt}${bfmt}${lohi} ${rd}, ${pu}, ${ra}, ${vb_bank}${vb_offset}, ${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xf1a;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def IDP2A_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm32Opr:$vb, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, I16TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt, LOHIIMOpr:$lohi),
    "idp2a${afmt}${bfmt}${lohi} ${rd}, ${pu}, ${ra}, ${vb}, ${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xd1a;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IDP2A_RRC : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, PModiOMOpr:$pp_not, PredOpr:$pp, I16TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt, LOHIIMOpr:$lohi),
    "idp2a${afmt}${bfmt}${lohi} ${rd}, ${pu}, ${ra}, ${rb}, ${vc_bank}${vc_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xe1a;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def IDP2A_RRI : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, SImm32Opr:$vc, PModiOMOpr:$pp_not, PredOpr:$pp, I16TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt, LOHIIMOpr:$lohi),
    "idp2a${afmt}${bfmt}${lohi} ${rd}, ${pu}, ${ra}, ${rb}, ${vc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xc1a;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vc;
  let Inst{63-32} = vc;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IDP2A_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, I16TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt, LOHIIMOpr:$lohi),
    "idp2a${afmt}${bfmt}${lohi} ${rd}, ${pu}, ${ra}, ${rb}, ${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x91a;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IDP2A_RRU : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, URegOpr:$urc, PModiOMOpr:$pp_not, PredOpr:$pp, I16TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt, LOHIIMOpr:$lohi),
    "idp2a${afmt}${bfmt}${lohi} ${rd}, ${pu}, ${ra}, ${rb}, ${urc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xa1a;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urc;
  let Inst{37-32} = urc;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IDP2A_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, I16TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt, LOHIIMOpr:$lohi),
    "idp2a${afmt}${bfmt}${lohi} ${rd}, ${pu}, ${ra}, ${urb}, ${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb1a;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IDP4A_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, I8TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt),
    "idp4a${afmt}${bfmt} ${rd}, ${pu}, ${ra}, ${vb_bank}${vb_offset}, ${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xf1b;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def IDP4A_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm32Opr:$vb, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, I8TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt),
    "idp4a${afmt}${bfmt} ${rd}, ${pu}, ${ra}, ${vb}, ${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xd1b;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IDP4A_RRC : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, PModiOMOpr:$pp_not, PredOpr:$pp, I8TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt),
    "idp4a${afmt}${bfmt} ${rd}, ${pu}, ${ra}, ${rb}, ${vc_bank}${vc_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xe1b;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def IDP4A_RRI : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, SImm32Opr:$vc, PModiOMOpr:$pp_not, PredOpr:$pp, I8TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt),
    "idp4a${afmt}${bfmt} ${rd}, ${pu}, ${ra}, ${rb}, ${vc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xc1b;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vc;
  let Inst{63-32} = vc;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IDP4A_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, I8TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt),
    "idp4a${afmt}${bfmt} ${rd}, ${pu}, ${ra}, ${rb}, ${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x91b;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IDP4A_RRU : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, URegOpr:$urc, PModiOMOpr:$pp_not, PredOpr:$pp, I8TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt),
    "idp4a${afmt}${bfmt} ${rd}, ${pu}, ${ra}, ${rb}, ${urc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xa1b;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urc;
  let Inst{37-32} = urc;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IDP4A_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, I8TypeIMOpr:$afmt, I8TypeIMOpr:$bfmt),
    "idp4a${afmt}${bfmt} ${rd}, ${pu}, ${ra}, ${urb}, ${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb1b;
  bit afmt;
  let Inst{77} = afmt;
  bit bfmt;
  let Inst{78} = bfmt;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMAD_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, SignModiOMOpr:$rc_neg, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imad${ext}${itype}${lohi} ${rd}, ${pu}, ${ra}, ${vb_bank}${vb_offset}, ${rc_neg}${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xf18;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def IMAD_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm32Opr:$vb, SignModiOMOpr:$rc_neg, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imad${ext}${itype}${lohi} ${rd}, ${pu}, ${ra}, ${vb}, ${rc_neg}${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xd18;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMAD_RRC : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, SignModiOMOpr:$vc_neg, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imad${ext}${itype}${lohi} ${rd}, ${pu}, ${ra}, ${rb}, ${vc_neg}${vc_bank}${vc_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xe18;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit vc_neg;
  let Inst{97} = vc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def IMAD_RRI : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, SImm32Opr:$vc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imad${ext}${itype}${lohi} ${rd}, ${pu}, ${ra}, ${rb}, ${vc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xc18;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vc;
  let Inst{63-32} = vc;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMAD_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, SignModiOMOpr:$rc_neg, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imad${ext}${itype}${lohi} ${rd}, ${pu}, ${ra}, ${rb}, ${rc_neg}${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x918;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMAD_RRU : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, SignModiOMOpr:$urc_neg, URegOpr:$urc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imad${ext}${itype}${lohi} ${rd}, ${pu}, ${ra}, ${rb}, ${urc_neg}${urc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xa18;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urc;
  let Inst{37-32} = urc;
  bit urc_neg;
  let Inst{97} = urc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMAD_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SignModiOMOpr:$rc_neg, RegOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imad${ext}${itype}${lohi} ${rd}, ${pu}, ${ra}, ${urb}, ${rc_neg}${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb18;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMAD_WIDE_RCR : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegDOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, SignModiOMOpr:$rc_neg, RegDOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "imad_wide${ext}${itype} ${pu}, ${rd}, ${ra}, ${vb_bank}${vb_offset}, ${rc_neg}${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xf19;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def IMAD_WIDE_RIR : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, SImm32Opr:$vb, SignModiOMOpr:$rc_neg, RegDOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "imad_wide${ext}${itype} ${rd}, ${pu}, ${ra}, ${vb}, ${rc_neg}${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xd19;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMAD_WIDE_RRC : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, SignModiOMOpr:$vc_neg, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "imad_wide${ext}${itype} ${rd}, ${pu}, ${ra}, ${rb}, ${vc_neg}${vc_bank}${vc_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xe19;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit vc_neg;
  let Inst{97} = vc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def IMAD_WIDE_RRR : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, SignModiOMOpr:$rc_neg, RegDOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "imad_wide${ext}${itype} ${rd}, ${pu}, ${ra}, ${rb}, ${rc_neg}${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x919;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMAD_WIDE_RRU : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, RegOpr:$rb, SignModiOMOpr:$urc_neg, URegDOpr:$urc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "imad_wide${ext}${itype} ${rd}, ${pu}, ${ra}, ${rb}, ${urc_neg}${urc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xa19;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urc;
  let Inst{37-32} = urc;
  bit urc_neg;
  let Inst{97} = urc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMAD_WIDE_RUR : XYGPUPGuardInst<
    (outs RegDOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, URegOpr:$urb, SignModiOMOpr:$rc_neg, RegDOpr:$rc, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "imad_wide${ext}${itype} ${rd}, ${pu}, ${ra}, ${urb}, ${rc_neg}${rc}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb19;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit rc_neg;
  let Inst{74} = rc_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMMA_RRR__S4_S4_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s4.s4.16832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x5;
  let Inst{82-80} = 0x3;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S4_U4_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s4.u4.16832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x1;
  let Inst{82-80} = 0x3;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S8_S8_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s8.s8.16816${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xf;
  let Inst{82-80} = 0x2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S8_U8_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s8.u8.16816${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xb;
  let Inst{82-80} = 0x2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U4_S4_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u4.s4.16832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x4;
  let Inst{82-80} = 0x3;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U4_U4_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u4.u4.16832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x0;
  let Inst{82-80} = 0x3;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U8_S8_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u8.s8.16816${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xe;
  let Inst{82-80} = 0x2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U8_U8_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u8.u8.16816${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xa;
  let Inst{82-80} = 0x2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S4_S4_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s4.s4.16864${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x5;
  let Inst{82-80} = 0x4;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S4_U4_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s4.u4.16864${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x1;
  let Inst{82-80} = 0x4;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S8_S8_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s8.s8.16832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xf;
  let Inst{82-80} = 0x3;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S8_U8_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s8.u8.16832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xb;
  let Inst{82-80} = 0x3;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U4_S4_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u4.s4.16864${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x4;
  let Inst{82-80} = 0x4;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U4_U4_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u4.u4.16864${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x0;
  let Inst{82-80} = 0x4;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U8_S8_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u8.s8.16832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xe;
  let Inst{82-80} = 0x3;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U8_U8_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u8.u8.16832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xa;
  let Inst{82-80} = 0x3;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S4_S4_8832 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s4.s4.8832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x5;
  let Inst{82-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S4_U4_8832 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s4.u4.8832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x1;
  let Inst{82-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S8_S8_8816 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s8.s8.8816${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xf;
  let Inst{82-80} = 0x0;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__S8_U8_8816 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.s8.u8.8816${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xb;
  let Inst{82-80} = 0x0;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U4_S4_8832 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u4.s4.8832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x4;
  let Inst{82-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U4_U4_8832 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u4.u4.8832${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0x0;
  let Inst{82-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U8_S8_8816 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u8.s8.8816${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xe;
  let Inst{82-80} = 0x0;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_RRR__U8_U8_8816 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc, IMMA_SATIMOpr:$sat),
    "imma.u8.u8.8816${sat} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x986;
  let Inst{75-72} = 0xa;
  let Inst{82-80} = 0x0;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sat;
  let Inst{90} = sat;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def IMMA_SP_RRR__S4_S4_168128 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.s4.s4.168128 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0x5;
  let Inst{81-80} = 0x2;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__S4_U4_168128 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.s4.u4.168128 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0x1;
  let Inst{81-80} = 0x2;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__S8_S8_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.s8.s8.16864 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0xf;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__S8_U8_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.s8.u8.16864 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0xb;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__U4_S4_168128 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.u4.s4.168128 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0x4;
  let Inst{81-80} = 0x2;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__U4_U4_168128 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.u4.u4.168128 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0x0;
  let Inst{81-80} = 0x2;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__U8_S8_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.u8.s8.16864 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0xe;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__U8_U8_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.u8.u8.16864 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0xa;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__S4_S4_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.s4.s4.16864 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0x5;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__S4_U4_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.s4.u4.16864 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0x1;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__S8_S8_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.s8.s8.16832 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0xf;
  let Inst{81-80} = 0x0;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__S8_U8_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.s8.u8.16832 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0xb;
  let Inst{81-80} = 0x0;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__U4_S4_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.u4.s4.16864 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0x4;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__U4_U4_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.u4.u4.16864 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0x0;
  let Inst{81-80} = 0x1;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__U8_S8_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.u8.s8.16832 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0xe;
  let Inst{81-80} = 0x0;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMMA_SP_RRR__U8_U8_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel),
    "imma_sp.u8.u8.16832 ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x987;
  let Inst{75-72} = 0xa;
  let Inst{81-80} = 0x0;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def IMNMX_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, ITypeIMOpr:$itype),
    "imnmx${itype} ${rd}, ${ra}, ${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x81f;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def IMNMX_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, ITypeIMOpr:$itype),
    "imnmx${itype} ${rd}, ${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x71f;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMNMX_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, ITypeIMOpr:$itype),
    "imnmx${itype} ${rd}, ${ra}, ${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x51f;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMNMX_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, ITypeIMOpr:$itype),
    "imnmx${itype} ${rd}, ${ra}, ${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x61f;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def IMUL_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imul${itype}${lohi} ${rd}, ${ra}, ${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x81c;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit vb_neg;
  let Inst{97} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def IMUL_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imul${itype}${lohi} ${rd}, ${ra}, ${vb}"> {
  let Inst{11-0} = 0x71c;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def IMUL_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SignModiOMOpr:$rb_neg, RegOpr:$rb, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imul${itype}${lohi} ${rd}, ${ra}, ${rb_neg}${rb}"> {
  let Inst{11-0} = 0x51c;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit rb_neg;
  let Inst{74} = rb_neg;
}

def IMUL_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SignModiOMOpr:$urb_neg, URegOpr:$urb, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "imul${itype}${lohi} ${rd}, ${ra}, ${urb_neg}${urb}"> {
  let Inst{11-0} = 0x61c;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_neg;
  let Inst{97} = urb_neg;
}

def ISETP_RC : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, PModiOMOpr:$pq_not, PredOpr:$pq, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "isetp${boolop}${compop}${ext}${itype} ${pu}, ${pv}, ${ra}, ${vb_bank}${vb_offset}, ${pp_not}${pp}, ${pq_not}${pq}"> {
  let Inst{11-0} = 0x822;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pq;
  let Inst{104-102} = pq;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bit pp_not;
  let Inst{101} = pp_not;
  bit pq_not;
  let Inst{105} = pq_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ISETP_RI : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins RegOpr:$ra, SImm32Opr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, PModiOMOpr:$pq_not, PredOpr:$pq, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "isetp${boolop}${compop}${ext}${itype} ${pu}, ${pv}, ${ra}, ${vb}, ${pp_not}${pp}, ${pq_not}${pq}"> {
  let Inst{11-0} = 0x722;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pq;
  let Inst{104-102} = pq;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit pp_not;
  let Inst{101} = pp_not;
  bit pq_not;
  let Inst{105} = pq_not;
}

def ISETP_RR : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins RegOpr:$ra, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, PModiOMOpr:$pq_not, PredOpr:$pq, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "isetp${boolop}${compop}${ext}${itype} ${pu}, ${pv}, ${ra}, ${rb}, ${pp_not}${pp}, ${pq_not}${pq}"> {
  let Inst{11-0} = 0x522;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pq;
  let Inst{104-102} = pq;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bit pp_not;
  let Inst{101} = pp_not;
  bit pq_not;
  let Inst{105} = pq_not;
}

def ISETP_RU : XYGPUPGuardInst<
    (outs PredOpr:$pu, PredOpr:$pv),
    (ins RegOpr:$ra, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, PModiOMOpr:$pq_not, PredOpr:$pq, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "isetp${boolop}${compop}${ext}${itype} ${pu}, ${pv}, ${ra}, ${urb}, ${pp_not}${pp}, ${pq_not}${pq}"> {
  let Inst{11-0} = 0x622;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pq;
  let Inst{104-102} = pq;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> pv;
  let Inst{111-109} = pv;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
  bit pq_not;
  let Inst{105} = pq_not;
}

def ISET_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp, PModiOMOpr:$pq_not, PredOpr:$pq, BMBFIMOpr:$bmbf, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "iset${bmbf}${boolop}${compop}${ext}${itype} ${rd}, ${ra}, ${vb_bank}${vb_offset}, ${pp_not}${pp}, ${pq_not}${pq}"> {
  let Inst{11-0} = 0x823;
  bit bmbf;
  let Inst{84} = bmbf;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pq;
  let Inst{104-102} = pq;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
  bit pq_not;
  let Inst{105} = pq_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ISET_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp, PModiOMOpr:$pq_not, PredOpr:$pq, BMBFIMOpr:$bmbf, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "iset${bmbf}${boolop}${compop}${ext}${itype} ${rd}, ${ra}, ${vb}, ${pp_not}${pp}, ${pq_not}${pq}"> {
  let Inst{11-0} = 0x723;
  bit bmbf;
  let Inst{84} = bmbf;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pq;
  let Inst{104-102} = pq;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit pp_not;
  let Inst{101} = pp_not;
  bit pq_not;
  let Inst{105} = pq_not;
}

def ISET_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp, PModiOMOpr:$pq_not, PredOpr:$pq, BMBFIMOpr:$bmbf, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "iset${bmbf}${boolop}${compop}${ext}${itype} ${rd}, ${ra}, ${rb}, ${pp_not}${pp}, ${pq_not}${pq}"> {
  let Inst{11-0} = 0x523;
  bit bmbf;
  let Inst{84} = bmbf;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pq;
  let Inst{104-102} = pq;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
  bit pq_not;
  let Inst{105} = pq_not;
}

def ISET_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp, PModiOMOpr:$pq_not, PredOpr:$pq, BMBFIMOpr:$bmbf, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "iset${bmbf}${boolop}${compop}${ext}${itype} ${rd}, ${ra}, ${urb}, ${pp_not}${pp}, ${pq_not}${pq}"> {
  let Inst{11-0} = 0x623;
  bit bmbf;
  let Inst{84} = bmbf;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pq;
  let Inst{104-102} = pq;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
  bit pq_not;
  let Inst{105} = pq_not;
}

let mayLoad = 1 in
def LDC_RC__32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$ra),
    "ldc.32 ${rd}, ${vb_bank}${vb_offset}${ra}"> {
  let Inst{11-0} = 0x864;
  let Inst{82-80} = 0x4;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_RC__S16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$ra),
    "ldc.s16 ${rd}, ${vb_bank}${vb_offset}${ra}"> {
  let Inst{11-0} = 0x864;
  let Inst{82-80} = 0x2;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_RC__S8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$ra),
    "ldc.s8 ${rd}, ${vb_bank}${vb_offset}${ra}"> {
  let Inst{11-0} = 0x864;
  let Inst{82-80} = 0x0;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_RC__U16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$ra),
    "ldc.u16 ${rd}, ${vb_bank}${vb_offset}${ra}"> {
  let Inst{11-0} = 0x864;
  let Inst{82-80} = 0x3;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_RC__U8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$ra),
    "ldc.u8 ${rd}, ${vb_bank}${vb_offset}${ra}"> {
  let Inst{11-0} = 0x864;
  let Inst{82-80} = 0x1;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_RC__64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$ra),
    "ldc.64 ${rd}, ${vb_bank}${vb_offset}${ra}"> {
  let Inst{11-0} = 0x864;
  let Inst{82-80} = 0x5;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_U__32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "ldc.32 ${rd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x264;
  let Inst{82-80} = 0x4;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_U__S16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "ldc.s16 ${rd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x264;
  let Inst{82-80} = 0x2;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_U__S8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "ldc.s8 ${rd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x264;
  let Inst{82-80} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_U__U16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "ldc.u16 ${rd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x264;
  let Inst{82-80} = 0x3;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_U__U8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "ldc.u8 ${rd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x264;
  let Inst{82-80} = 0x1;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDC_U__64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "ldc.64 ${rd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x264;
  let Inst{82-80} = 0x5;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

let mayLoad = 1 in
def LDGDEPBAR_X : XYGPUPGuardInst<
    (outs ),
    (ins ),
    "ldgdepbar"> {
  let Inst{11-0} = 0x78;
}

let mayLoad = 1 in
def LDGSTS_RUR__S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$rs, SImm16Opr:$soffset, RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, LDGSTSCacheOpIMOpr:$cop, LDGSTSSizeIMOpr:$size, LDGSTSFILLIMOpr:$zfill),
    "ldgsts${cop}${size}${zfill} ${rs}${soffset}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb70;
  let Inst{91-90} = 0x2;
  bit cop;
  let Inst{88} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rs;
  let Inst{71-64} = rs;
  bits<2> size;
  let Inst{93-92} = size;
  bits<16> soffset;
  let Inst{87-72} = soffset;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit zfill;
  let Inst{94} = zfill;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDGSTS_RUR__U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$rs, SImm16Opr:$soffset, RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, LDGSTSCacheOpIMOpr:$cop, LDGSTSSizeIMOpr:$size, LDGSTSFILLIMOpr:$zfill),
    "ldgsts${cop}${size}${zfill} ${rs}${soffset}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb70;
  let Inst{91-90} = 0x1;
  bit cop;
  let Inst{88} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rs;
  let Inst{71-64} = rs;
  bits<2> size;
  let Inst{93-92} = size;
  bits<16> soffset;
  let Inst{87-72} = soffset;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit zfill;
  let Inst{94} = zfill;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDGSTS_RUR__U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$rs, SImm16Opr:$soffset, RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, LDGSTSCacheOpIMOpr:$cop, LDGSTSSizeIMOpr:$size, LDGSTSFILLIMOpr:$zfill),
    "ldgsts${cop}${size}${zfill} ${rs}${soffset}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb70;
  let Inst{91-90} = 0x3;
  bit cop;
  let Inst{88} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rs;
  let Inst{71-64} = rs;
  bits<2> size;
  let Inst{93-92} = size;
  bits<16> soffset;
  let Inst{87-72} = soffset;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit zfill;
  let Inst{94} = zfill;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__128_S32_U64 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.128${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__128_U64_S32 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.128${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__128_U64_U64 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.128${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__32_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.32${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__S16_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.s16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__S8_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.s8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__U16_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.u16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__U8_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.u8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__32_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.32${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__S16_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.s16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__S8_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.s8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__U16_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.u16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__U8_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.u8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__32_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.32${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__S16_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.s16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__S8_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.s8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__U16_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.u16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__U8_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.u8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__64_S32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.64${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__64_U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.64${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDG_RU__64_U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ldg.64${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x666;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDL_RU__128 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio),
    "ldl.128${l1prio} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x669;
  let Inst{82-80} = 0x6;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDL_RU__32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio),
    "ldl.32${l1prio} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x669;
  let Inst{82-80} = 0x4;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDL_RU__S16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio),
    "ldl.s16${l1prio} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x669;
  let Inst{82-80} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDL_RU__S8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio),
    "ldl.s8${l1prio} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x669;
  let Inst{82-80} = 0x0;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDL_RU__U16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio),
    "ldl.u16${l1prio} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x669;
  let Inst{82-80} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDL_RU__U8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio),
    "ldl.u8${l1prio} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x669;
  let Inst{82-80} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDL_RU__64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio),
    "ldl.64${l1prio} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x669;
  let Inst{82-80} = 0x5;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDSM_RU__1 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, LDSMModeIMOpr:$mode, LDSMSizeIMOpr:$size),
    "ldsm.1${mode}${size} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x668;
  let Inst{85-84} = 0x0;
  bits<2> mode;
  let Inst{83-82} = mode;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> size;
  let Inst{81-80} = size;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDSM_RU__2 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, LDSMModeIMOpr:$mode, LDSMSizeIMOpr:$size),
    "ldsm.2${mode}${size} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x668;
  let Inst{85-84} = 0x1;
  bits<2> mode;
  let Inst{83-82} = mode;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> size;
  let Inst{81-80} = size;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDSM_RU__4 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, LDSMModeIMOpr:$mode, LDSMSizeIMOpr:$size),
    "ldsm.4${mode}${size} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x668;
  let Inst{85-84} = 0x2;
  bits<2> mode;
  let Inst{83-82} = mode;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> size;
  let Inst{81-80} = size;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDSSTG_RUR__S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rs, SImm16Opr:$soffset, PModiOMOpr:$pp_not, PredOpr:$pp, LDGSTSCacheOpIMOpr:$cop, LDGSTSSizeIMOpr:$size, LDGSTSFILLIMOpr:$zfill),
    "ldsstg${cop}${size}${zfill} ${ra}${urb}${offset}, ${rs}${soffset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb71;
  let Inst{91-90} = 0x2;
  bit cop;
  let Inst{88} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rs;
  let Inst{71-64} = rs;
  bits<2> size;
  let Inst{93-92} = size;
  bits<16> soffset;
  let Inst{87-72} = soffset;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit zfill;
  let Inst{94} = zfill;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDSSTG_RUR__U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rs, SImm16Opr:$soffset, PModiOMOpr:$pp_not, PredOpr:$pp, LDGSTSCacheOpIMOpr:$cop, LDGSTSSizeIMOpr:$size, LDGSTSFILLIMOpr:$zfill),
    "ldsstg${cop}${size}${zfill} ${ra}${urb}${offset}, ${rs}${soffset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb71;
  let Inst{91-90} = 0x1;
  bit cop;
  let Inst{88} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rs;
  let Inst{71-64} = rs;
  bits<2> size;
  let Inst{93-92} = size;
  bits<16> soffset;
  let Inst{87-72} = soffset;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit zfill;
  let Inst{94} = zfill;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDSSTG_RUR__U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rs, SImm16Opr:$soffset, PModiOMOpr:$pp_not, PredOpr:$pp, LDGSTSCacheOpIMOpr:$cop, LDGSTSSizeIMOpr:$size, LDGSTSFILLIMOpr:$zfill),
    "ldsstg${cop}${size}${zfill} ${ra}${urb}${offset}, ${rs}${soffset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb71;
  let Inst{91-90} = 0x3;
  bit cop;
  let Inst{88} = cop;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rs;
  let Inst{71-64} = rs;
  bits<2> size;
  let Inst{93-92} = size;
  bits<16> soffset;
  let Inst{87-72} = soffset;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit zfill;
  let Inst{94} = zfill;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDS_RU__128 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp),
    "lds.128 ${rd}, ${ra_rstride}${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x667;
  let Inst{82-80} = 0x6;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDS_RU__32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp),
    "lds.32 ${rd}, ${ra_rstride}${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x667;
  let Inst{82-80} = 0x4;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDS_RU__S16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp),
    "lds.s16 ${rd}, ${ra_rstride}${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x667;
  let Inst{82-80} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDS_RU__S8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp),
    "lds.s8 ${rd}, ${ra_rstride}${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x667;
  let Inst{82-80} = 0x0;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDS_RU__U16 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp),
    "lds.u16 ${rd}, ${ra_rstride}${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x667;
  let Inst{82-80} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDS_RU__U8 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp),
    "lds.u8 ${rd}, ${ra_rstride}${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x667;
  let Inst{82-80} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LDS_RU__64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp),
    "lds.64 ${rd}, ${ra_rstride}${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x667;
  let Inst{82-80} = 0x5;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__128_S32_U64 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.128${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__128_U64_S32 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.128${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__128_U64_U64 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.128${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__32_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.32${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__S16_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.s16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__S8_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.s8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__U16_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.u16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__U8_S32_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.u8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__32_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.32${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__S16_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.s16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__S8_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.s8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__U16_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.u16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__U8_U64_S32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.u8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__32_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.32${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__S16_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.s16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__S8_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.s8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__U16_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.u16${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__U8_U64_U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.u8${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__64_S32_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.64${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__64_U64_S32 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.64${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

let mayLoad = 1 in
def LD_RU__64_U64_U64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, PModiOMOpr:$pp_not, PredOpr:$pp, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "ld.64${l1prio}${ord}${sco} ${rd}, ${ra}${urb}${offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x66a;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def LEA_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$rc, UImm5Opr:$shiftamt, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, LOHIIMOpr:$lohi, LEASX32IMOpr:$sx32),
    "lea${ext}${lohi}${sx32} ${rd}, ${pu}, ${ra_neg}${ra}, ${vb_neg}${vb_bank}${vb_offset}, ${rc}, ${shiftamt}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xf1d;
  bit ext;
  let Inst{76} = ext;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> shiftamt;
  let Inst{86-82} = shiftamt;
  bit sx32;
  let Inst{80} = sx32;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit vb_neg;
  let Inst{97} = vb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def LEA_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins SignModiOMOpr:$ra_neg, RegOpr:$ra, SImm32Opr:$vb, RegOpr:$rc, UImm5Opr:$shiftamt, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, LOHIIMOpr:$lohi, LEASX32IMOpr:$sx32),
    "lea${ext}${lohi}${sx32} ${rd}, ${pu}, ${ra_neg}${ra}, ${vb}, ${rc}, ${shiftamt}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xd1d;
  bit ext;
  let Inst{76} = ext;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> shiftamt;
  let Inst{86-82} = shiftamt;
  bit sx32;
  let Inst{80} = sx32;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def LEA_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$rb_neg, RegOpr:$rb, RegOpr:$rc, UImm5Opr:$shiftamt, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, LOHIIMOpr:$lohi, LEASX32IMOpr:$sx32),
    "lea${ext}${lohi}${sx32} ${rd}, ${pu}, ${ra_neg}${ra}, ${rb_neg}${rb}, ${rc}, ${shiftamt}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x91d;
  bit ext;
  let Inst{76} = ext;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> shiftamt;
  let Inst{86-82} = shiftamt;
  bit sx32;
  let Inst{80} = sx32;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit rb_neg;
  let Inst{97} = rb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def LEA_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins SignModiOMOpr:$ra_neg, RegOpr:$ra, SignModiOMOpr:$urb_neg, URegOpr:$urb, RegOpr:$rc, UImm5Opr:$shiftamt, PModiOMOpr:$pp_not, PredOpr:$pp, IExtIMOpr:$ext, LOHIIMOpr:$lohi, LEASX32IMOpr:$sx32),
    "lea${ext}${lohi}${sx32} ${rd}, ${pu}, ${ra_neg}${ra}, ${urb_neg}${urb}, ${rc}, ${shiftamt}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb1d;
  bit ext;
  let Inst{76} = ext;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> shiftamt;
  let Inst{86-82} = shiftamt;
  bit sx32;
  let Inst{80} = sx32;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit ra_neg;
  let Inst{72} = ra_neg;
  bit urb_neg;
  let Inst{97} = urb_neg;
  bit pp_not;
  let Inst{101} = pp_not;
}

def LEPC_I : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins SImm50Opr:$offset),
    "lepc ${rd}, ${offset}"> {
  let Inst{11-0} = 0x359;
  bits<50> offset;
  let Inst{81-32} = offset;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def LOP3_RCR : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$rc, UImm8Opr:$lut, PModiOMOpr:$pp_not, PredOpr:$pp, EXBoolIMOpr:$exbool),
    "lop3${exbool} ${pu}, ${rd}, ${ra}, ${vb_bank}${vb_offset}, ${rc}, ${lut}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xf25;
  bits<2> exbool;
  let Inst{80-79} = exbool;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def LOP3_RIR : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, RegOpr:$rc, UImm8Opr:$lut, PModiOMOpr:$pp_not, PredOpr:$pp, EXBoolIMOpr:$exbool),
    "lop3${exbool} ${pu}, ${rd}, ${ra}, ${vb}, ${rc}, ${lut}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xd25;
  bits<2> exbool;
  let Inst{80-79} = exbool;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def LOP3_RRR : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, RegOpr:$rc, UImm8Opr:$lut, PModiOMOpr:$pp_not, PredOpr:$pp, EXBoolIMOpr:$exbool),
    "lop3${exbool} ${pu}, ${rd}, ${ra}, ${rb}, ${rc}, ${lut}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x925;
  bits<2> exbool;
  let Inst{80-79} = exbool;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
}

def LOP3_RUR : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, RegOpr:$rc, UImm8Opr:$lut, PModiOMOpr:$pp_not, PredOpr:$pp, EXBoolIMOpr:$exbool),
    "lop3${exbool} ${pu}, ${rd}, ${ra}, ${urb}, ${rc}, ${lut}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0xb25;
  bits<2> exbool;
  let Inst{80-79} = exbool;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def MATCH_R__U32 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegOpr:$ra, MATCHOpIMOpr:$matchop),
    "match.u32${matchop} ${rd}, ${pu}, ${ra}"> {
  let Inst{11-0} = 0x17f;
  let Inst{81} = 0x0;
  bit matchop;
  let Inst{80} = matchop;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def MATCH_R__U64 : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins RegDOpr:$ra, MATCHOpIMOpr:$matchop),
    "match.u64${matchop} ${rd}, ${pu}, ${ra}"> {
  let Inst{11-0} = 0x17f;
  let Inst{81} = 0x1;
  bit matchop;
  let Inst{80} = matchop;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def MEMBAR_X : XYGPUPGuardInst<
    (outs ),
    (ins MEMBARModeIMOpr:$mode, MEMScopeIMOpr:$sp),
    "membar${mode}${sp}"> {
  let Inst{11-0} = 0x79;
  bit mode;
  let Inst{82} = mode;
  bit sp;
  let Inst{80} = sp;
}

def MOVM_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra),
    "movm ${rd}, ${ra}"> {
  let Inst{11-0} = 0x12f;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def MOV_C__32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "mov.32 ${rd}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x428;
  let Inst{80} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def MOV_C__64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "mov.64 ${rd}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x428;
  let Inst{80} = 0x1;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def MOV_I__32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SImm32Opr:$vb),
    "mov.32 ${rd}, ${vb}"> {
  let Inst{11-0} = 0x328;
  let Inst{80} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def MOV_R__32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$rb),
    "mov.32 ${rd}, ${rb}"> {
  let Inst{11-0} = 0x128;
  let Inst{80} = 0x0;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def MOV_R__64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegDOpr:$rb),
    "mov.64 ${rd}, ${rb}"> {
  let Inst{11-0} = 0x128;
  let Inst{80} = 0x1;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def MOV_U__32 : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins URegOpr:$urb),
    "mov.32 ${rd}, ${urb}"> {
  let Inst{11-0} = 0x228;
  let Inst{80} = 0x0;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def MOV_U__64 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins URegDOpr:$urb),
    "mov.64 ${rd}, ${urb}"> {
  let Inst{11-0} = 0x228;
  let Inst{80} = 0x1;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def MUFU_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_abs, HSelOMOpr:$vb_hsel, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, MUFUDTypeIMOpr:$dtype, MUFUOpIMOpr:$mufuop),
    "mufu${dtype}${mufuop} ${rd}, ${vb_abs}${vb_hsel}${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x44e;
  bits<3> dtype;
  let Inst{83-81} = dtype;
  bits<3> mufuop;
  let Inst{80-78} = mufuop;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit vb_abs;
  let Inst{97} = vb_abs;
  bit vb_hsel;
  let Inst{72} = vb_hsel;
  bit vb_neg;
  let Inst{96} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def MUFU_I : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins F32ImmOpr:$vb, MUFUDTypeIMOpr:$dtype, MUFUOpIMOpr:$mufuop),
    "mufu${dtype}${mufuop} ${rd}, ${vb}"> {
  let Inst{11-0} = 0x34e;
  bits<3> dtype;
  let Inst{83-81} = dtype;
  bits<3> mufuop;
  let Inst{80-78} = mufuop;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def MUFU_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_abs, HSelOMOpr:$rb_hsel, SignModiOMOpr:$rb_neg, RegOpr:$rb, MUFUDTypeIMOpr:$dtype, MUFUOpIMOpr:$mufuop),
    "mufu${dtype}${mufuop} ${rd}, ${rb_abs}${rb_hsel}${rb_neg}${rb}"> {
  let Inst{11-0} = 0x14e;
  bits<3> dtype;
  let Inst{83-81} = dtype;
  bits<3> mufuop;
  let Inst{80-78} = mufuop;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit rb_abs;
  let Inst{97} = rb_abs;
  bit rb_hsel;
  let Inst{72} = rb_hsel;
  bit rb_neg;
  let Inst{96} = rb_neg;
}

def MUFU_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_abs, HSelOMOpr:$urb_hsel, SignModiOMOpr:$urb_neg, URegOpr:$urb, MUFUDTypeIMOpr:$dtype, MUFUOpIMOpr:$mufuop),
    "mufu${dtype}${mufuop} ${rd}, ${urb_abs}${urb_hsel}${urb_neg}${urb}"> {
  let Inst{11-0} = 0x64e;
  bits<3> dtype;
  let Inst{83-81} = dtype;
  bits<3> mufuop;
  let Inst{80-78} = mufuop;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_abs;
  let Inst{97} = urb_abs;
  bit urb_hsel;
  let Inst{72} = urb_hsel;
  bit urb_neg;
  let Inst{96} = urb_neg;
}

def NANOSLEEP_C : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "nanosleep ${pp_not}${pp}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x460;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def NANOSLEEP_I : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, UImm32Opr:$vb),
    "nanosleep ${pp_not}${pp}, ${vb}"> {
  let Inst{11-0} = 0x360;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def NANOSLEEP_R : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, RegOpr:$rb),
    "nanosleep ${pp_not}${pp}, ${rb}"> {
  let Inst{11-0} = 0x160;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> rb;
  let Inst{39-32} = rb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def NANOSLEEP_U : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, URegOpr:$urb),
    "nanosleep ${pp_not}${pp}, ${urb}"> {
  let Inst{11-0} = 0x260;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def NOP_X : XYGPUPGuardInst<
    (outs ),
    (ins ),
    "nop"> {
  let Inst{11-0} = 0x9a;
}

def OMMA_RRR__F16_16864 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins RegQOpr:$ra, RegDOpr:$rb, RegDOpr:$rc, OMMA_ABTypeIMOpr:$atype, OMMA_ABTypeIMOpr:$btype),
    "omma.f16.16864${atype}${btype} ${rd}, ${ra}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x98b;
  let Inst{77-76} = 0x0;
  let Inst{81-80} = 0x0;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def OMMA_RRR__F32_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins RegQOpr:$ra, RegDOpr:$rb, RegQOpr:$rc, OMMA_ABTypeIMOpr:$atype, OMMA_ABTypeIMOpr:$btype),
    "omma.f32.16864${atype}${btype} ${rd}, ${ra}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x98b;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x0;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def P2R_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins PredAllOpr:$PR, RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, BSelIMOpr:$bsel),
    "p2r${bsel} ${rd}, ${PR}, ${ra}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x820;
  bits<2> bsel;
  let Inst{80-79} = bsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def P2R_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins PredAllOpr:$PR, RegOpr:$ra, SImm32Opr:$vb, BSelIMOpr:$bsel),
    "p2r${bsel} ${rd}, ${PR}, ${ra}, ${vb}"> {
  let Inst{11-0} = 0x720;
  bits<2> bsel;
  let Inst{80-79} = bsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def P2R_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins PredAllOpr:$PR, RegOpr:$ra, RegOpr:$rb, BSelIMOpr:$bsel),
    "p2r${bsel} ${rd}, ${PR}, ${ra}, ${rb}"> {
  let Inst{11-0} = 0x520;
  bits<2> bsel;
  let Inst{80-79} = bsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def P2R_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins PredAllOpr:$PR, RegOpr:$ra, URegOpr:$urb, BSelIMOpr:$bsel),
    "p2r${bsel} ${rd}, ${PR}, ${ra}, ${urb}"> {
  let Inst{11-0} = 0x620;
  bits<2> bsel;
  let Inst{80-79} = bsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def PLOP3_U : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins PModiOMOpr:$pa_not, PredOpr:$pa, PModiOMOpr:$pb_not, PredOpr:$pb, PModiOMOpr:$upc_not, UPredOpr:$upc, UImm8Opr:$lut),
    "plop3 ${pu}, ${pa_not}${pa}, ${pb_not}${pb}, ${upc_not}${upc}, ${lut}"> {
  let Inst{11-0} = 0x226;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> pa;
  let Inst{26-24} = pa;
  bits<3> pb;
  let Inst{34-32} = pb;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<3> upc;
  let Inst{66-64} = upc;
  bit pa_not;
  let Inst{27} = pa_not;
  bit pb_not;
  let Inst{35} = pb_not;
  bit upc_not;
  let Inst{67} = upc_not;
}

def PLOP3_X : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins PModiOMOpr:$pa_not, PredOpr:$pa, PModiOMOpr:$pb_not, PredOpr:$pb, PModiOMOpr:$pc_not, PredOpr:$pc, UImm8Opr:$lut),
    "plop3 ${pu}, ${pa_not}${pa}, ${pb_not}${pb}, ${pc_not}${pc}, ${lut}"> {
  let Inst{11-0} = 0x26;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> pa;
  let Inst{26-24} = pa;
  bits<3> pb;
  let Inst{34-32} = pb;
  bits<3> pc;
  let Inst{66-64} = pc;
  bits<3> pu;
  let Inst{108-106} = pu;
  bit pa_not;
  let Inst{27} = pa_not;
  bit pb_not;
  let Inst{35} = pb_not;
  bit pc_not;
  let Inst{67} = pc_not;
}

def PMTRIG_I : XYGPUPGuardInst<
    (outs ),
    (ins UImm16Opr:$vb),
    "pmtrig ${vb}"> {
  let Inst{11-0} = 0x396;
  bits<16> vb;
  let Inst{47-32} = vb;
}

def POPC_C : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$vb_bitnot, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "popc ${rd}, ${vb_bitnot}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x44f;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit vb_bitnot;
  let Inst{97} = vb_bitnot;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def POPC_I : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SImm32Opr:$vb),
    "popc ${rd}, ${vb}"> {
  let Inst{11-0} = 0x34f;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def POPC_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$rb_bitnot, RegOpr:$rb),
    "popc ${rd}, ${rb_bitnot}${rb}"> {
  let Inst{11-0} = 0x14f;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit rb_bitnot;
  let Inst{97} = rb_bitnot;
}

def POPC_U : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SignModiOMOpr:$urb_bitnot, URegOpr:$urb),
    "popc ${rd}, ${urb_bitnot}${urb}"> {
  let Inst{11-0} = 0x24f;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit urb_bitnot;
  let Inst{97} = urb_bitnot;
}

def PRMT_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$rc, PRMTModeIMOpr:$mode),
    "prmt${mode} ${rd}, ${ra}, ${vb_bank}${vb_offset}, ${rc}"> {
  let Inst{11-0} = 0xf29;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def PRMT_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, RegOpr:$rc, PRMTModeIMOpr:$mode),
    "prmt${mode} ${rd}, ${ra}, ${vb}, ${rc}"> {
  let Inst{11-0} = 0xd29;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def PRMT_RRC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, PRMTModeIMOpr:$mode),
    "prmt${mode} ${rd}, ${ra}, ${rb}, ${vc_bank}${vc_offset}"> {
  let Inst{11-0} = 0xe29;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def PRMT_RRI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, SImm32Opr:$vc, PRMTModeIMOpr:$mode),
    "prmt${mode} ${rd}, ${ra}, ${rb}, ${vc}"> {
  let Inst{11-0} = 0xc29;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vc;
  let Inst{63-32} = vc;
}

def PRMT_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, RegOpr:$rc, PRMTModeIMOpr:$mode),
    "prmt${mode} ${rd}, ${ra}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x929;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def PRMT_RRU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, URegOpr:$urc, PRMTModeIMOpr:$mode),
    "prmt${mode} ${rd}, ${ra}, ${rb}, ${urc}"> {
  let Inst{11-0} = 0xa29;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urc;
  let Inst{37-32} = urc;
}

def PRMT_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, RegOpr:$rc, PRMTModeIMOpr:$mode),
    "prmt${mode} ${rd}, ${ra}, ${urb}, ${rc}"> {
  let Inst{11-0} = 0xb29;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def QMMA_RRR__F16_16816 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegDOpr:$rc, QMMA_ABTypeIMOpr:$atype, QMMA_ABTypeIMOpr:$btype),
    "qmma.f16.16816${atype}${btype} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x989;
  let Inst{77-76} = 0x0;
  let Inst{81-80} = 0x0;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def QMMA_RRR__F16_16832 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegDOpr:$rc, QMMA_ABTypeIMOpr:$atype, QMMA_ABTypeIMOpr:$btype),
    "qmma.f16.16832${atype}${btype} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x989;
  let Inst{77-76} = 0x0;
  let Inst{81-80} = 0x1;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def QMMA_RRR__F32_16816 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegOpr:$rb, RegQOpr:$rc, QMMA_ABTypeIMOpr:$atype, QMMA_ABTypeIMOpr:$btype),
    "qmma.f32.16816${atype}${btype} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x989;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x0;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def QMMA_RRR__F32_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, QMMA_ABTypeIMOpr:$atype, QMMA_ABTypeIMOpr:$btype),
    "qmma.f32.16832${atype}${btype} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}"> {
  let Inst{11-0} = 0x989;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x1;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
}

def QMMA_SP_RRR__F16_16832 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegDOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel, QMMA_ABTypeIMOpr:$atype, QMMA_ABTypeIMOpr:$btype),
    "qmma_sp.f16.16832${atype}${btype} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x98a;
  let Inst{77-76} = 0x0;
  let Inst{81-80} = 0x0;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def QMMA_SP_RRR__F16_16864 : XYGPUPGuardInst<
    (outs RegDOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegDOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel, QMMA_ABTypeIMOpr:$atype, QMMA_ABTypeIMOpr:$btype),
    "qmma_sp.f16.16864${atype}${btype} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x98a;
  let Inst{77-76} = 0x0;
  let Inst{81-80} = 0x1;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def QMMA_SP_RRR__F32_16832 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegDOpr:$ra, BufOMOpr:$rb_buf, RegDOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel, QMMA_ABTypeIMOpr:$atype, QMMA_ABTypeIMOpr:$btype),
    "qmma_sp.f32.16832${atype}${btype} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x98a;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x0;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def QMMA_SP_RRR__F32_16864 : XYGPUPGuardInst<
    (outs RegQOpr:$rd),
    (ins BufOMOpr:$ra_buf, RegQOpr:$ra, BufOMOpr:$rb_buf, RegQOpr:$rb, RegQOpr:$rc, BufOMOpr:$re_buf, RegOpr:$re, UImm2Opr:$mdsel, QMMA_ABTypeIMOpr:$atype, QMMA_ABTypeIMOpr:$btype),
    "qmma_sp.f32.16864${atype}${btype} ${rd}, ${ra_buf}${ra}, ${rb_buf}${rb}, ${rc}, ${re_buf}${re}, ${mdsel}"> {
  let Inst{11-0} = 0x98a;
  let Inst{77-76} = 0x1;
  let Inst{81-80} = 0x1;
  bits<2> atype;
  let Inst{73-72} = atype;
  bits<2> btype;
  let Inst{75-74} = btype;
  bits<2> mdsel;
  let Inst{89-88} = mdsel;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> re;
  let Inst{47-40} = re;
  bit ra_buf;
  let Inst{84} = ra_buf;
  bit rb_buf;
  let Inst{85} = rb_buf;
  bit re_buf;
  let Inst{86} = re_buf;
}

def QSPC_RU__S32_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, MEMSpaceIMOpr:$sp),
    "qspc${sp} ${pu}, ${ra}${urb}${offset}"> {
  let Inst{11-0} = 0x67b;
  let Inst{91-90} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<2> sp;
  let Inst{81-80} = sp;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def QSPC_RU__U64_S32 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, MEMSpaceIMOpr:$sp),
    "qspc${sp} ${pu}, ${ra}${urb}${offset}"> {
  let Inst{11-0} = 0x67b;
  let Inst{91-90} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<2> sp;
  let Inst{81-80} = sp;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def QSPC_RU__U64_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, MEMSpaceIMOpr:$sp),
    "qspc${sp} ${pu}, ${ra}${urb}${offset}"> {
  let Inst{11-0} = 0x67b;
  let Inst{91-90} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<2> sp;
  let Inst{81-80} = sp;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def R2B_RI : XYGPUPGuardInst<
    (outs ),
    (ins UImm4Opr:$barid, RegOpr:$ra, B2RModeIMOpr:$mode),
    "r2b${mode} ${barid}, ${ra}"> {
  let Inst{11-0} = 0x790;
  bits<4> barid;
  let Inst{43-40} = barid;
  bit mode;
  let Inst{80} = mode;
  bits<8> ra;
  let Inst{31-24} = ra;
}

def R2P_RC : XYGPUPGuardInst<
    (outs PredAllOpr:$PR),
    (ins BSelOMOpr:$ra_bsel, RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "r2p ${PR}, ${ra_bsel}${ra}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x821;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<2> ra_bsel;
  let Inst{80-79} = ra_bsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def R2P_RI : XYGPUPGuardInst<
    (outs PredAllOpr:$PR),
    (ins BSelOMOpr:$ra_bsel, RegOpr:$ra, SImm32Opr:$vb),
    "r2p ${PR}, ${ra_bsel}${ra}, ${vb}"> {
  let Inst{11-0} = 0x721;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<32> vb;
  let Inst{63-32} = vb;
  bits<2> ra_bsel;
  let Inst{80-79} = ra_bsel;
}

def R2P_RR : XYGPUPGuardInst<
    (outs PredAllOpr:$PR),
    (ins BSelOMOpr:$ra_bsel, RegOpr:$ra, RegOpr:$rb),
    "r2p ${PR}, ${ra_bsel}${ra}, ${rb}"> {
  let Inst{11-0} = 0x521;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<2> ra_bsel;
  let Inst{80-79} = ra_bsel;
}

def R2P_RU : XYGPUPGuardInst<
    (outs PredAllOpr:$PR),
    (ins BSelOMOpr:$ra_bsel, RegOpr:$ra, URegOpr:$urb),
    "r2p ${PR}, ${ra_bsel}${ra}, ${urb}"> {
  let Inst{11-0} = 0x621;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_bsel;
  let Inst{80-79} = ra_bsel;
}

def R2UR_R : XYGPUPGuardInst<
    (outs URegOpr:$urd),
    (ins RegOpr:$rb),
    "r2ur ${urd}, ${rb}"> {
  let Inst{11-0} = 0x12c;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def REDUXU_R : XYGPUPGuardInst<
    (outs URegOpr:$urd),
    (ins RegOpr:$ra, REDUXDTypeIMOpr:$dtype, REDUXOpIMOpr:$reduxop),
    "reduxu${dtype}${reduxop} ${urd}, ${ra}"> {
  let Inst{11-0} = 0x181;
  bits<2> dtype;
  let Inst{84-83} = dtype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<3> reduxop;
  let Inst{82-80} = reduxop;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def REDUX_R : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, REDUXDTypeIMOpr:$dtype, REDUXOpIMOpr:$reduxop),
    "redux${dtype}${reduxop} ${rd}, ${ra}"> {
  let Inst{11-0} = 0x180;
  bits<2> dtype;
  let Inst{84-83} = dtype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<3> reduxop;
  let Inst{82-80} = reduxop;
}

def RED_RUR__BF16X2_S32_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.bf16x2${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x6;
  let Inst{91-90} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__F16X2_S32_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.f16x2${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x5;
  let Inst{91-90} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__F32_S32_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.f32${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x4;
  let Inst{91-90} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__S32_S32_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.s32${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x1;
  let Inst{91-90} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__U32_S32_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.u32${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x0;
  let Inst{91-90} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__BF16X2_U64_S32 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.bf16x2${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x6;
  let Inst{91-90} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__F16X2_U64_S32 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.f16x2${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x5;
  let Inst{91-90} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__F32_U64_S32 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.f32${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x4;
  let Inst{91-90} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__S32_U64_S32 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.s32${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x1;
  let Inst{91-90} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__U32_U64_S32 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.u32${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x0;
  let Inst{91-90} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__BF16X2_U64_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.bf16x2${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x6;
  let Inst{91-90} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__F16X2_U64_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.f16x2${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x5;
  let Inst{91-90} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__F32_U64_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.f32${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x4;
  let Inst{91-90} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__S32_U64_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.s32${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x1;
  let Inst{91-90} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__U32_U64_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, REDOpIMOpr:$redop),
    "red.u32${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x0;
  let Inst{91-90} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__F64_S32_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, REDOpIMOpr:$redop),
    "red.f64${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x7;
  let Inst{91-90} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__S64_S32_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, REDOpIMOpr:$redop),
    "red.s64${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x3;
  let Inst{91-90} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__U64_S32_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, REDOpIMOpr:$redop),
    "red.u64${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x2;
  let Inst{91-90} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__F64_U64_S32 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, REDOpIMOpr:$redop),
    "red.f64${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x7;
  let Inst{91-90} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__S64_U64_S32 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, REDOpIMOpr:$redop),
    "red.s64${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x3;
  let Inst{91-90} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__U64_U64_S32 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, REDOpIMOpr:$redop),
    "red.u64${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x2;
  let Inst{91-90} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__F64_U64_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, REDOpIMOpr:$redop),
    "red.f64${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x7;
  let Inst{91-90} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__S64_U64_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, REDOpIMOpr:$redop),
    "red.s64${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x3;
  let Inst{91-90} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RED_RUR__U64_U64_U64 : XYGPUPGuardInst<
    (outs PredOpr:$pu),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, REDOpIMOpr:$redop),
    "red.u64${redop} ${pu}, ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb75;
  let Inst{85-83} = 0x2;
  let Inst{91-90} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<3> redop;
  let Inst{82-80} = redop;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def RET_C : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, BasePCModeIMOpr:$mode),
    "ret${mode} ${pp_not}${pp}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x457;
  bit mode;
  let Inst{82} = mode;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def RET_R : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, RegDOpr:$ra, SImm50Opr:$offset, BasePCModeIMOpr:$mode),
    "ret${mode} ${pp_not}${pp}, ${ra}, ${offset}"> {
  let Inst{11-0} = 0x157;
  bit mode;
  let Inst{82} = mode;
  bits<50> offset;
  let Inst{81-32} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bit pp_not;
  let Inst{101} = pp_not;
}

def RET_U : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, URegDOpr:$ura, SImm50Opr:$offset, BasePCModeIMOpr:$mode),
    "ret${mode} ${pp_not}${pp}, ${ura}, ${offset}"> {
  let Inst{11-0} = 0x257;
  bit mode;
  let Inst{82} = mode;
  bits<50> offset;
  let Inst{81-32} = offset;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bit pp_not;
  let Inst{101} = pp_not;
}

def RTT_X : XYGPUPGuardInst<
    (outs ),
    (ins ),
    "rtt"> {
  let Inst{11-0} = 0x62;
}

def S2R_I : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins SRegOpr:$sreg),
    "s2r ${rd}, ${sreg}"> {
  let Inst{11-0} = 0x391;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<8> sreg;
  let Inst{39-32} = sreg;
}

def S2UR_I : XYGPUPGuardInst<
    (outs URegOpr:$urd),
    (ins SRegOpr:$sreg),
    "s2ur ${urd}, ${sreg}"> {
  let Inst{11-0} = 0x392;
  bits<8> sreg;
  let Inst{39-32} = sreg;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def SEL_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$pp_not, PredOpr:$pp),
    "sel ${rd}, ${ra}, ${vb_bank}${vb_offset}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x824;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def SEL_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, PModiOMOpr:$pp_not, PredOpr:$pp),
    "sel ${rd}, ${ra}, ${vb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x724;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def SEL_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, PModiOMOpr:$pp_not, PredOpr:$pp),
    "sel ${rd}, ${ra}, ${rb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x524;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bit pp_not;
  let Inst{101} = pp_not;
}

def SEL_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, PModiOMOpr:$pp_not, PredOpr:$pp),
    "sel ${rd}, ${ra}, ${urb}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x624;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
}

def SETGPR_U : XYGPUPGuardInst<
    (outs ),
    (ins URegOpr:$urb, SImm9Opr:$ridx, RegOpr:$ra),
    "setgpr ${urb}${ridx}, ${ra}"> {
  let Inst{11-0} = 0x22d;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<9> ridx;
  let Inst{40-32} = ridx;
  bits<6> urb;
  let Inst{69-64} = urb;
}

def SETREG_RI : XYGPUPGuardInst<
    (outs ),
    (ins UImm32Opr:$regaddr, RegOpr:$ra),
    "setreg ${regaddr}, ${ra}"> {
  let Inst{11-0} = 0x794;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<32> regaddr;
  let Inst{63-32} = regaddr;
}

def SETREG_RR : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$rb, RegOpr:$ra),
    "setreg ${rb}, ${ra}"> {
  let Inst{11-0} = 0x594;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
}

def SETREG_RU : XYGPUPGuardInst<
    (outs ),
    (ins URegOpr:$urb, RegOpr:$ra),
    "setreg ${urb}, ${ra}"> {
  let Inst{11-0} = 0x694;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def SETUGPR_UIU : XYGPUUPGuardInst<
    (outs ),
    (ins URegOpr:$urb, SImm7Opr:$uridx, URegOpr:$ura),
    "setugpr ${urb}${uridx}, ${ura}"> {
  let Inst{11-0} = 0xc4c;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{69-64} = urb;
  bits<7> uridx;
  let Inst{38-32} = uridx;
}

def SGXT_RC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, CWModeIMOpr:$cwmode, ITypeIMOpr:$itype),
    "sgxt${cwmode}${itype} ${rd}, ${ra}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x853;
  bit cwmode;
  let Inst{81} = cwmode;
  bit itype;
  let Inst{80} = itype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def SGXT_RI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, CWModeIMOpr:$cwmode, ITypeIMOpr:$itype),
    "sgxt${cwmode}${itype} ${rd}, ${ra}, ${vb}"> {
  let Inst{11-0} = 0x753;
  bit cwmode;
  let Inst{81} = cwmode;
  bit itype;
  let Inst{80} = itype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def SGXT_RR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, CWModeIMOpr:$cwmode, ITypeIMOpr:$itype),
    "sgxt${cwmode}${itype} ${rd}, ${ra}, ${rb}"> {
  let Inst{11-0} = 0x553;
  bit cwmode;
  let Inst{81} = cwmode;
  bit itype;
  let Inst{80} = itype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def SGXT_RU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, CWModeIMOpr:$cwmode, ITypeIMOpr:$itype),
    "sgxt${cwmode}${itype} ${rd}, ${ra}, ${urb}"> {
  let Inst{11-0} = 0x653;
  bit cwmode;
  let Inst{81} = cwmode;
  bit itype;
  let Inst{80} = itype;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def SHFL_RI : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins RegOpr:$ra, UImm5Opr:$vb, UImm13Opr:$vc, SHFLModeIMOpr:$mode),
    "shfl${mode} ${pu}, ${rd}, ${ra}, ${vb}, ${vc}"> {
  let Inst{11-0} = 0x77c;
  bits<2> mode;
  let Inst{81-80} = mode;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb;
  let Inst{57-53} = vb;
  bits<13> vc;
  let Inst{52-40} = vc;
}

def SHFL_RIR : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins RegOpr:$ra, UImm5Opr:$vb, RegOpr:$rc, SHFLModeIMOpr:$mode),
    "shfl${mode} ${pu}, ${rd}, ${ra}, ${vb}, ${rc}"> {
  let Inst{11-0} = 0xd7c;
  bits<2> mode;
  let Inst{81-80} = mode;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb;
  let Inst{57-53} = vb;
}

def SHFL_RRI : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, UImm13Opr:$vc, SHFLModeIMOpr:$mode),
    "shfl${mode} ${pu}, ${rd}, ${ra}, ${rb}, ${vc}"> {
  let Inst{11-0} = 0xc7c;
  bits<2> mode;
  let Inst{81-80} = mode;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<13> vc;
  let Inst{52-40} = vc;
}

def SHFL_RRR : XYGPUPGuardInst<
    (outs PredOpr:$pu, RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, RegOpr:$rc, SHFLModeIMOpr:$mode),
    "shfl${mode} ${pu}, ${rd}, ${ra}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x97c;
  bits<2> mode;
  let Inst{81-80} = mode;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def SHF_RCR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, RegOpr:$rc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "shf${cwmod}${direction}${itype}${lohi} ${rd}, ${ra}, ${vb_bank}${vb_offset}, ${rc}"> {
  let Inst{11-0} = 0xf27;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def SHF_RIR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, SImm32Opr:$vb, RegOpr:$rc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "shf${cwmod}${direction}${itype}${lohi} ${rd}, ${ra}, ${vb}, ${rc}"> {
  let Inst{11-0} = 0xd27;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def SHF_RRC : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "shf${cwmod}${direction}${itype}${lohi} ${rd}, ${ra}, ${rb}, ${vc_bank}${vc_offset}"> {
  let Inst{11-0} = 0xe27;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def SHF_RRI : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, SImm32Opr:$vc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "shf${cwmod}${direction}${itype}${lohi} ${rd}, ${ra}, ${rb}, ${vc}"> {
  let Inst{11-0} = 0xc27;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<32> vc;
  let Inst{63-32} = vc;
}

def SHF_RRR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, RegOpr:$rc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "shf${cwmod}${direction}${itype}${lohi} ${rd}, ${ra}, ${rb}, ${rc}"> {
  let Inst{11-0} = 0x927;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{39-32} = rb;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
}

def SHF_RRU : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, RegOpr:$rb, URegOpr:$urc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "shf${cwmod}${direction}${itype}${lohi} ${rd}, ${ra}, ${rb}, ${urc}"> {
  let Inst{11-0} = 0xa27;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rb;
  let Inst{71-64} = rb;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urc;
  let Inst{37-32} = urc;
}

def SHF_RUR : XYGPUPGuardInst<
    (outs RegOpr:$rd),
    (ins RegOpr:$ra, URegOpr:$urb, RegOpr:$rc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "shf${cwmod}${direction}${itype}${lohi} ${rd}, ${ra}, ${urb}, ${rc}"> {
  let Inst{11-0} = 0xb27;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__128_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegQOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.128${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__128_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegQOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.128${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__128_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegQOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.128${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__32_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.32${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__S16_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.s16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__S8_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.s8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__U16_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.u16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__U8_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.u8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__32_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.32${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__S16_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.s16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__S8_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.s8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__U16_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.u16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__U8_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.u8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__32_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.32${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__S16_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.s16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__S8_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.s8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__U16_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.u16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__U8_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.u8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__64_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.64${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__64_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.64${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STG_RUR__64_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "stg.64${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6b;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STL_RUR__128 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegQOpr:$rc, L1EvictPriorityIMOpr:$l1prio),
    "stl.128${l1prio} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6e;
  let Inst{82-80} = 0x6;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STL_RUR__32 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio),
    "stl.32${l1prio} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6e;
  let Inst{82-80} = 0x4;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STL_RUR__S16 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio),
    "stl.s16${l1prio} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6e;
  let Inst{82-80} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STL_RUR__S8 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio),
    "stl.s8${l1prio} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6e;
  let Inst{82-80} = 0x0;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STL_RUR__U16 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio),
    "stl.u16${l1prio} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6e;
  let Inst{82-80} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STL_RUR__U8 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio),
    "stl.u8${l1prio} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6e;
  let Inst{82-80} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STL_RUR__64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, L1EvictPriorityIMOpr:$l1prio),
    "stl.64${l1prio} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6e;
  let Inst{82-80} = 0x5;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STSM_RUR__1 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, LDSMModeIMOpr:$mode, LDSMSizeIMOpr:$size),
    "stsm.1${mode}${size} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6d;
  let Inst{85-84} = 0x0;
  bits<2> mode;
  let Inst{83-82} = mode;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<2> size;
  let Inst{81-80} = size;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STSM_RUR__2 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, LDSMModeIMOpr:$mode, LDSMSizeIMOpr:$size),
    "stsm.2${mode}${size} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6d;
  let Inst{85-84} = 0x1;
  bits<2> mode;
  let Inst{83-82} = mode;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<2> size;
  let Inst{81-80} = size;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STSM_RUR__4 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegQOpr:$rc, LDSMModeIMOpr:$mode, LDSMSizeIMOpr:$size),
    "stsm.4${mode}${size} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6d;
  let Inst{85-84} = 0x2;
  bits<2> mode;
  let Inst{83-82} = mode;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<2> size;
  let Inst{81-80} = size;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def STS_RUR__128 : XYGPUPGuardInst<
    (outs ),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegQOpr:$rc),
    "sts.128 ${ra_rstride}${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6c;
  let Inst{82-80} = 0x6;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
}

let mayStore = 1 in
def STS_RUR__32 : XYGPUPGuardInst<
    (outs ),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc),
    "sts.32 ${ra_rstride}${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6c;
  let Inst{82-80} = 0x4;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
}

let mayStore = 1 in
def STS_RUR__S16 : XYGPUPGuardInst<
    (outs ),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc),
    "sts.s16 ${ra_rstride}${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6c;
  let Inst{82-80} = 0x2;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
}

let mayStore = 1 in
def STS_RUR__S8 : XYGPUPGuardInst<
    (outs ),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc),
    "sts.s8 ${ra_rstride}${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6c;
  let Inst{82-80} = 0x0;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
}

let mayStore = 1 in
def STS_RUR__U16 : XYGPUPGuardInst<
    (outs ),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc),
    "sts.u16 ${ra_rstride}${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6c;
  let Inst{82-80} = 0x3;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
}

let mayStore = 1 in
def STS_RUR__U8 : XYGPUPGuardInst<
    (outs ),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc),
    "sts.u8 ${ra_rstride}${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6c;
  let Inst{82-80} = 0x1;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
}

let mayStore = 1 in
def STS_RUR__64 : XYGPUPGuardInst<
    (outs ),
    (ins RStrideOMOpr:$ra_rstride, RegOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc),
    "sts.64 ${ra_rstride}${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6c;
  let Inst{82-80} = 0x5;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ra_rstride;
  let Inst{91-90} = ra_rstride;
}

let mayStore = 1 in
def ST_RUR__128_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegQOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.128${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__128_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegQOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.128${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__128_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegQOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.128${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x6;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__32_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.32${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__S16_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.s16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__S8_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.s8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__U16_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.u16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__U8_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.u8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__32_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.32${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__S16_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.s16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__S8_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.s8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__U16_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.u16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__U8_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.u8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__32_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.32${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x4;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__S16_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.s16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x2;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__S8_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.s8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x0;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__U16_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.u16${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x3;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__U8_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.u8${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x1;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__64_S32_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.64${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x2;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__64_U64_S32 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.64${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x1;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

let mayStore = 1 in
def ST_RUR__64_U64_U64 : XYGPUPGuardInst<
    (outs ),
    (ins RegDOpr:$ra, URegDOpr:$urb, SImm24Opr:$offset, RegDOpr:$rc, L1EvictPriorityIMOpr:$l1prio, MEMOrderIMOpr:$ord, MEMScopeIMOpr:$sco),
    "st.64${l1prio}${ord}${sco} ${ra}${urb}${offset}, ${rc}"> {
  let Inst{11-0} = 0xb6f;
  let Inst{82-80} = 0x5;
  let Inst{91-90} = 0x3;
  bits<3> l1prio;
  let Inst{88-86} = l1prio;
  bits<24> offset;
  let Inst{63-40} = offset;
  bits<2> ord;
  let Inst{84-83} = ord;
  bits<8> ra;
  let Inst{31-24} = ra;
  bits<8> rc;
  let Inst{71-64} = rc;
  bit sco;
  let Inst{85} = sco;
  bits<6> urb;
  let Inst{37-32} = urb;
}

def SWITCH_C : XYGPUPGuardInst<
    (outs ),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "switch ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x497;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def SWITCH_I : XYGPUPGuardInst<
    (outs ),
    (ins UImm32Opr:$hidx),
    "switch ${hidx}"> {
  let Inst{11-0} = 0x397;
  bits<32> hidx;
  let Inst{63-32} = hidx;
}

def SWITCH_R : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$rb),
    "switch ${rb}"> {
  let Inst{11-0} = 0x197;
  bits<8> rb;
  let Inst{39-32} = rb;
}

def SYSCALL_X : XYGPUPGuardInst<
    (outs ),
    (ins ),
    "syscall"> {
  let Inst{11-0} = 0x163;
}

def TRAP_C : XYGPUPGuardInst<
    (outs ),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "trap ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x461;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def TRAP_I : XYGPUPGuardInst<
    (outs ),
    (ins UImm32Opr:$hidx),
    "trap ${hidx}"> {
  let Inst{11-0} = 0x361;
  bits<32> hidx;
  let Inst{63-32} = hidx;
}

def TRAP_R : XYGPUPGuardInst<
    (outs ),
    (ins RegOpr:$rb),
    "trap ${rb}"> {
  let Inst{11-0} = 0x161;
  bits<8> rb;
  let Inst{39-32} = rb;
}

def UBMSK_UC : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, CWModeIMOpr:$cwmode),
    "ubmsk${cwmode} ${urd}, ${ura}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x849;
  bit cwmode;
  let Inst{81} = cwmode;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UBMSK_UI : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, SImm32Opr:$vb, CWModeIMOpr:$cwmode),
    "ubmsk${cwmode} ${urd}, ${ura}, ${vb}"> {
  let Inst{11-0} = 0x749;
  bit cwmode;
  let Inst{81} = cwmode;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def UBMSK_UU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, CWModeIMOpr:$cwmode),
    "ubmsk${cwmode} ${urd}, ${ura}, ${urb}"> {
  let Inst{11-0} = 0x649;
  bit cwmode;
  let Inst{81} = cwmode;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def UBREV_C : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "ubrev ${urd}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x448;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UBREV_I : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins SImm32Opr:$vb),
    "ubrev ${urd}, ${vb}"> {
  let Inst{11-0} = 0x348;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def UBREV_U : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$urb),
    "ubrev ${urd}, ${urb}"> {
  let Inst{11-0} = 0x248;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def UF2FP_UCU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$urc),
    "uf2fp ${urd}, ${ura}, ${vb_bank}${vb_offset}, ${urc}"> {
  let Inst{11-0} = 0xe4b;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UF2FP_UUU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, URegOpr:$urc),
    "uf2fp ${urd}, ${ura}, ${urb}, ${urc}"> {
  let Inst{11-0} = 0xa4b;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def UFLO_C : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins SignModiOMOpr:$vb_bitnot, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, ITypeIMOpr:$itype, FLOSHIMOpr:$sh),
    "uflo${itype}${sh} ${urd}, ${vb_bitnot}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x447;
  bit itype;
  let Inst{80} = itype;
  bit sh;
  let Inst{81} = sh;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit vb_bitnot;
  let Inst{97} = vb_bitnot;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UFLO_I : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins SImm32Opr:$vb, ITypeIMOpr:$itype, FLOSHIMOpr:$sh),
    "uflo${itype}${sh} ${urd}, ${vb}"> {
  let Inst{11-0} = 0x347;
  bit itype;
  let Inst{80} = itype;
  bit sh;
  let Inst{81} = sh;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def UFLO_U : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins SignModiOMOpr:$urb_bitnot, URegOpr:$urb, ITypeIMOpr:$itype, FLOSHIMOpr:$sh),
    "uflo${itype}${sh} ${urd}, ${urb_bitnot}${urb}"> {
  let Inst{11-0} = 0x247;
  bit itype;
  let Inst{80} = itype;
  bit sh;
  let Inst{81} = sh;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit urb_bitnot;
  let Inst{97} = urb_bitnot;
}

def UIABS_C : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "uiabs ${urd}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x43b;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UIABS_I : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins SImm32Opr:$vb),
    "uiabs ${urd}, ${vb}"> {
  let Inst{11-0} = 0x33b;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def UIABS_U : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$urb),
    "uiabs ${urd}, ${urb}"> {
  let Inst{11-0} = 0x23b;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def UIADD_UC : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins SignModiOMOpr:$ura_neg, URegOpr:$ura, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext),
    "uiadd${ext} ${urd}, ${upu}, ${ura_neg}${ura}, ${vb_neg}${vb_bank}${vb_offset}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0x836;
  bit ext;
  let Inst{76} = ext;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit ura_neg;
  let Inst{72} = ura_neg;
  bit vb_neg;
  let Inst{97} = vb_neg;
  bit upp_not;
  let Inst{101} = upp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UIADD_UI : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins SignModiOMOpr:$ura_neg, URegOpr:$ura, SImm32Opr:$vb, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext),
    "uiadd${ext} ${urd}, ${upu}, ${ura_neg}${ura}, ${vb}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0x736;
  bit ext;
  let Inst{76} = ext;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ura_neg;
  let Inst{72} = ura_neg;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UIADD_UU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins SignModiOMOpr:$ura_neg, URegOpr:$ura, SignModiOMOpr:$urb_neg, URegOpr:$urb, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext),
    "uiadd${ext} ${urd}, ${upu}, ${ura_neg}${ura}, ${urb_neg}${urb}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0x636;
  bit ext;
  let Inst{76} = ext;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit ura_neg;
  let Inst{72} = ura_neg;
  bit urb_neg;
  let Inst{97} = urb_neg;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UIMAD_UCU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, SignModiOMOpr:$urc_neg, URegOpr:$urc, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "uimad${ext}${itype}${lohi} ${urd}, ${upu}, ${ura}, ${vb_bank}${vb_offset}, ${urc_neg}${urc}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xe37;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit urc_neg;
  let Inst{74} = urc_neg;
  bit upp_not;
  let Inst{101} = upp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UIMAD_UIU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, SImm32Opr:$vb, SignModiOMOpr:$urc_neg, URegOpr:$urc, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "uimad${ext}${itype}${lohi} ${urd}, ${upu}, ${ura}, ${vb}, ${urc_neg}${urc}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xc37;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit urc_neg;
  let Inst{74} = urc_neg;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UIMAD_UUC : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, URegOpr:$urb, SignModiOMOpr:$vc_neg, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "uimad${ext}${itype}${lohi} ${urd}, ${upu}, ${ura}, ${urb}, ${vc_neg}${vc_bank}${vc_offset}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xd37;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{69-64} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit vc_neg;
  let Inst{97} = vc_neg;
  bit upp_not;
  let Inst{101} = upp_not;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def UIMAD_UUI : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, URegOpr:$urb, SImm32Opr:$vc, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "uimad${ext}${itype}${lohi} ${urd}, ${upu}, ${ura}, ${urb}, ${vc}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xb37;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{69-64} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vc;
  let Inst{63-32} = vc;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UIMAD_UUU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, URegOpr:$urb, SignModiOMOpr:$urc_neg, URegOpr:$urc, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "uimad${ext}${itype}${lohi} ${urd}, ${upu}, ${ura}, ${urb}, ${urc_neg}${urc}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xa37;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit urc_neg;
  let Inst{74} = urc_neg;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UIMAD_WIDE_UCU : XYGPUUPGuardInst<
    (outs URegDOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, SignModiOMOpr:$urc_neg, URegDOpr:$urc, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "uimad_wide${ext}${itype} ${urd}, ${upu}, ${ura}, ${vb_bank}${vb_offset}, ${urc_neg}${urc}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xe38;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit urc_neg;
  let Inst{74} = urc_neg;
  bit upp_not;
  let Inst{101} = upp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UIMAD_WIDE_UIU : XYGPUUPGuardInst<
    (outs URegDOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, SImm32Opr:$vb, SignModiOMOpr:$urc_neg, URegDOpr:$urc, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "uimad_wide${ext}${itype} ${urd}, ${upu}, ${ura}, ${vb}, ${urc_neg}${urc}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xc38;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit urc_neg;
  let Inst{74} = urc_neg;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UIMAD_WIDE_UUC : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, URegOpr:$urb, SignModiOMOpr:$vc_neg, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "uimad_wide${ext}${itype} ${urd}, ${upu}, ${ura}, ${urb}, ${vc_neg}${vc_bank}${vc_offset}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xd38;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{69-64} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit vc_neg;
  let Inst{97} = vc_neg;
  bit upp_not;
  let Inst{101} = upp_not;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def UIMAD_WIDE_UUU : XYGPUUPGuardInst<
    (outs URegDOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, URegOpr:$urb, SignModiOMOpr:$urc_neg, URegDOpr:$urc, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "uimad_wide${ext}${itype} ${urd}, ${upu}, ${ura}, ${urb}, ${urc_neg}${urc}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xa38;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit urc_neg;
  let Inst{74} = urc_neg;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UIMNMX_UC : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$upp_not, UPredOpr:$upp, ITypeIMOpr:$itype),
    "uimnmx${itype} ${urd}, ${ura}, ${vb_bank}${vb_offset}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0x83c;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit upp_not;
  let Inst{101} = upp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UIMNMX_UI : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, SImm32Opr:$vb, PModiOMOpr:$upp_not, UPredOpr:$upp, ITypeIMOpr:$itype),
    "uimnmx${itype} ${urd}, ${ura}, ${vb}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0x73c;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UIMNMX_UU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, PModiOMOpr:$upp_not, UPredOpr:$upp, ITypeIMOpr:$itype),
    "uimnmx${itype} ${urd}, ${ura}, ${urb}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0x63c;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UIMUL_UC : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "uimul${itype}${lohi} ${urd}, ${ura}, ${vb_neg}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x839;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit vb_neg;
  let Inst{97} = vb_neg;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UIMUL_UI : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, SImm32Opr:$vb, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "uimul${itype}${lohi} ${urd}, ${ura}, ${vb}"> {
  let Inst{11-0} = 0x739;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def UIMUL_UU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, SignModiOMOpr:$urb_neg, URegOpr:$urb, ITypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "uimul${itype}${lohi} ${urd}, ${ura}, ${urb_neg}${urb}"> {
  let Inst{11-0} = 0x639;
  bit itype;
  let Inst{77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit urb_neg;
  let Inst{97} = urb_neg;
}

def UISETP_UC : XYGPUUPGuardInst<
    (outs UPredOpr:$upu, UPredOpr:$upv),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$upp_not, UPredOpr:$upp, PModiOMOpr:$upq_not, UPredOpr:$upq, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "uisetp${boolop}${compop}${ext}${itype} ${upu}, ${upv}, ${ura}, ${vb_bank}${vb_offset}, ${upp_not}${upp}, ${upq_not}${upq}"> {
  let Inst{11-0} = 0x83f;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upq;
  let Inst{104-102} = upq;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<3> upv;
  let Inst{111-109} = upv;
  bits<6> ura;
  let Inst{29-24} = ura;
  bit upp_not;
  let Inst{101} = upp_not;
  bit upq_not;
  let Inst{105} = upq_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UISETP_UI : XYGPUUPGuardInst<
    (outs UPredOpr:$upu, UPredOpr:$upv),
    (ins URegOpr:$ura, SImm32Opr:$vb, PModiOMOpr:$upp_not, UPredOpr:$upp, PModiOMOpr:$upq_not, UPredOpr:$upq, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "uisetp${boolop}${compop}${ext}${itype} ${upu}, ${upv}, ${ura}, ${vb}, ${upp_not}${upp}, ${upq_not}${upq}"> {
  let Inst{11-0} = 0x73f;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upq;
  let Inst{104-102} = upq;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<3> upv;
  let Inst{111-109} = upv;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit upp_not;
  let Inst{101} = upp_not;
  bit upq_not;
  let Inst{105} = upq_not;
}

def UISETP_UU : XYGPUUPGuardInst<
    (outs UPredOpr:$upu, UPredOpr:$upv),
    (ins URegOpr:$ura, URegOpr:$urb, PModiOMOpr:$upp_not, UPredOpr:$upp, PModiOMOpr:$upq_not, UPredOpr:$upq, BoolOpIMOpr:$boolop, CompOpIMOpr:$compop, IExtIMOpr:$ext, ITypeIMOpr:$itype),
    "uisetp${boolop}${compop}${ext}${itype} ${upu}, ${upv}, ${ura}, ${urb}, ${upp_not}${upp}, ${upq_not}${upq}"> {
  let Inst{11-0} = 0x63f;
  bits<2> boolop;
  let Inst{83-82} = boolop;
  bits<3> compop;
  let Inst{81-79} = compop;
  bit ext;
  let Inst{76} = ext;
  bit itype;
  let Inst{77} = itype;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upq;
  let Inst{104-102} = upq;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<3> upv;
  let Inst{111-109} = upv;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit upp_not;
  let Inst{101} = upp_not;
  bit upq_not;
  let Inst{105} = upq_not;
}

def ULDC_U__128 : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "uldc.128 ${urd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x265;
  let Inst{82-80} = 0x6;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ULDC_U__32 : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "uldc.32 ${urd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x265;
  let Inst{82-80} = 0x4;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ULDC_U__S16 : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "uldc.s16 ${urd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x265;
  let Inst{82-80} = 0x2;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ULDC_U__S8 : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "uldc.s8 ${urd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x265;
  let Inst{82-80} = 0x0;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ULDC_U__U16 : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "uldc.u16 ${urd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x265;
  let Inst{82-80} = 0x3;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ULDC_U__U8 : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "uldc.u8 ${urd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x265;
  let Inst{82-80} = 0x1;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ULDC_U__64 : XYGPUUPGuardInst<
    (outs URegDOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$ura),
    "uldc.64 ${urd}, ${vb_bank}${vb_offset}${ura}"> {
  let Inst{11-0} = 0x265;
  let Inst{82-80} = 0x5;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ULEA_UCU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins SignModiOMOpr:$ura_neg, URegOpr:$ura, SignModiOMOpr:$vb_neg, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$urc, UImm5Opr:$shiftamt, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, LOHIIMOpr:$lohi, LEASX32IMOpr:$sx32),
    "ulea${ext}${lohi}${sx32} ${urd}, ${upu}, ${ura_neg}${ura}, ${vb_neg}${vb_bank}${vb_offset}, ${urc}, ${shiftamt}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xe3a;
  bit ext;
  let Inst{76} = ext;
  bit lohi;
  let Inst{75} = lohi;
  bits<5> shiftamt;
  let Inst{86-82} = shiftamt;
  bit sx32;
  let Inst{80} = sx32;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit ura_neg;
  let Inst{72} = ura_neg;
  bit vb_neg;
  let Inst{97} = vb_neg;
  bit upp_not;
  let Inst{101} = upp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ULEA_UIU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins SignModiOMOpr:$ura_neg, URegOpr:$ura, SImm32Opr:$vb, URegOpr:$urc, UImm5Opr:$shiftamt, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, LOHIIMOpr:$lohi, LEASX32IMOpr:$sx32),
    "ulea${ext}${lohi}${sx32} ${urd}, ${upu}, ${ura_neg}${ura}, ${vb}, ${urc}, ${shiftamt}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xc3a;
  bit ext;
  let Inst{76} = ext;
  bit lohi;
  let Inst{75} = lohi;
  bits<5> shiftamt;
  let Inst{86-82} = shiftamt;
  bit sx32;
  let Inst{80} = sx32;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit ura_neg;
  let Inst{72} = ura_neg;
  bit upp_not;
  let Inst{101} = upp_not;
}

def ULEA_UUU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins SignModiOMOpr:$ura_neg, URegOpr:$ura, SignModiOMOpr:$urb_neg, URegOpr:$urb, URegOpr:$urc, UImm5Opr:$shiftamt, PModiOMOpr:$upp_not, UPredOpr:$upp, IExtIMOpr:$ext, LOHIIMOpr:$lohi, LEASX32IMOpr:$sx32),
    "ulea${ext}${lohi}${sx32} ${urd}, ${upu}, ${ura_neg}${ura}, ${urb_neg}${urb}, ${urc}, ${shiftamt}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xa3a;
  bit ext;
  let Inst{76} = ext;
  bit lohi;
  let Inst{75} = lohi;
  bits<5> shiftamt;
  let Inst{86-82} = shiftamt;
  bit sx32;
  let Inst{80} = sx32;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit ura_neg;
  let Inst{72} = ura_neg;
  bit urb_neg;
  let Inst{97} = urb_neg;
  bit upp_not;
  let Inst{101} = upp_not;
}

def ULOP3_UCU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$urc, UImm8Opr:$lut, PModiOMOpr:$upp_not, UPredOpr:$upp, EXBoolIMOpr:$exbool),
    "ulop3${exbool} ${urd}, ${upu}, ${ura}, ${vb_bank}${vb_offset}, ${urc}, ${lut}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xe41;
  bits<2> exbool;
  let Inst{80-79} = exbool;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit upp_not;
  let Inst{101} = upp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def ULOP3_UIU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, SImm32Opr:$vb, URegOpr:$urc, UImm8Opr:$lut, PModiOMOpr:$upp_not, UPredOpr:$upp, EXBoolIMOpr:$exbool),
    "ulop3${exbool} ${urd}, ${upu}, ${ura}, ${vb}, ${urc}, ${lut}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xc41;
  bits<2> exbool;
  let Inst{80-79} = exbool;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit upp_not;
  let Inst{101} = upp_not;
}

def ULOP3_UUU : XYGPUUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins URegOpr:$ura, URegOpr:$urb, URegOpr:$urc, UImm8Opr:$lut, PModiOMOpr:$upp_not, UPredOpr:$upp, EXBoolIMOpr:$exbool),
    "ulop3${exbool} ${urd}, ${upu}, ${ura}, ${urb}, ${urc}, ${lut}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0xa41;
  bits<2> exbool;
  let Inst{80-79} = exbool;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit upp_not;
  let Inst{101} = upp_not;
}

def UMOV_C__32 : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "umov.32 ${urd}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x444;
  let Inst{80} = 0x0;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UMOV_C__64 : XYGPUUPGuardInst<
    (outs URegDOpr:$urd),
    (ins CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "umov.64 ${urd}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x444;
  let Inst{80} = 0x1;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UMOV_I__32 : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins SImm32Opr:$vb),
    "umov.32 ${urd}, ${vb}"> {
  let Inst{11-0} = 0x344;
  let Inst{80} = 0x0;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def UMOV_U__32 : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$urb),
    "umov.32 ${urd}, ${urb}"> {
  let Inst{11-0} = 0x244;
  let Inst{80} = 0x0;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def UMOV_U__64 : XYGPUUPGuardInst<
    (outs URegDOpr:$urd),
    (ins URegDOpr:$urb),
    "umov.64 ${urd}, ${urb}"> {
  let Inst{11-0} = 0x244;
  let Inst{80} = 0x1;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def UP2UR_UC : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins UPredAllOpr:$UPR, URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, BSelIMOpr:$bsel),
    "up2ur${bsel} ${urd}, ${UPR}, ${ura}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x83d;
  bits<2> bsel;
  let Inst{80-79} = bsel;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UP2UR_UI : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins UPredAllOpr:$UPR, URegOpr:$ura, SImm32Opr:$vb, BSelIMOpr:$bsel),
    "up2ur${bsel} ${urd}, ${UPR}, ${ura}, ${vb}"> {
  let Inst{11-0} = 0x73d;
  bits<2> bsel;
  let Inst{80-79} = bsel;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def UP2UR_UU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins UPredAllOpr:$UPR, URegOpr:$ura, URegOpr:$urb, BSelIMOpr:$bsel),
    "up2ur${bsel} ${urd}, ${UPR}, ${ura}, ${urb}"> {
  let Inst{11-0} = 0x63d;
  bits<2> bsel;
  let Inst{80-79} = bsel;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def UPLOP3_X : XYGPUUPGuardInst<
    (outs UPredOpr:$upu),
    (ins PModiOMOpr:$upa_not, UPredOpr:$upa, PModiOMOpr:$upb_not, UPredOpr:$upb, PModiOMOpr:$upc_not, UPredOpr:$upc, UImm8Opr:$lut),
    "uplop3 ${upu}, ${upa_not}${upa}, ${upb_not}${upb}, ${upc_not}${upc}, ${lut}"> {
  let Inst{11-0} = 0x42;
  bits<8> lut;
  let Inst{89-82} = lut;
  bits<3> upa;
  let Inst{26-24} = upa;
  bits<3> upb;
  let Inst{34-32} = upb;
  bits<3> upc;
  let Inst{66-64} = upc;
  bits<3> upu;
  let Inst{108-106} = upu;
  bit upa_not;
  let Inst{27} = upa_not;
  bit upb_not;
  let Inst{35} = upb_not;
  bit upc_not;
  let Inst{67} = upc_not;
}

def UPOPC_C : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins SignModiOMOpr:$vb_bitnot, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "upopc ${urd}, ${vb_bitnot}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x446;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit vb_bitnot;
  let Inst{97} = vb_bitnot;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UPOPC_I : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins SImm32Opr:$vb),
    "upopc ${urd}, ${vb}"> {
  let Inst{11-0} = 0x346;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def UPOPC_U : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins SignModiOMOpr:$urb_bitnot, URegOpr:$urb),
    "upopc ${urd}, ${urb_bitnot}${urb}"> {
  let Inst{11-0} = 0x246;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit urb_bitnot;
  let Inst{97} = urb_bitnot;
}

def UPRMT_UCU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$urc, PRMTModeIMOpr:$mode),
    "uprmt${mode} ${urd}, ${ura}, ${vb_bank}${vb_offset}, ${urc}"> {
  let Inst{11-0} = 0xe45;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UPRMT_UIU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, SImm32Opr:$vb, URegOpr:$urc, PRMTModeIMOpr:$mode),
    "uprmt${mode} ${urd}, ${ura}, ${vb}, ${urc}"> {
  let Inst{11-0} = 0xc45;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def UPRMT_UUC : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, PRMTModeIMOpr:$mode),
    "uprmt${mode} ${urd}, ${ura}, ${urb}, ${vc_bank}${vc_offset}"> {
  let Inst{11-0} = 0xd45;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{69-64} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def UPRMT_UUI : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, SImm32Opr:$vc, PRMTModeIMOpr:$mode),
    "uprmt${mode} ${urd}, ${ura}, ${urb}, ${vc}"> {
  let Inst{11-0} = 0xb45;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{69-64} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vc;
  let Inst{63-32} = vc;
}

def UPRMT_UUU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, URegOpr:$urc, PRMTModeIMOpr:$mode),
    "uprmt${mode} ${urd}, ${ura}, ${urb}, ${urc}"> {
  let Inst{11-0} = 0xa45;
  bits<3> mode;
  let Inst{78-76} = mode;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def UR2UP_UC : XYGPUUPGuardInst<
    (outs UPredAllOpr:$UPR),
    (ins BSelOMOpr:$ura_bsel, URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "ur2up ${UPR}, ${ura_bsel}${ura}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x83e;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<2> ura_bsel;
  let Inst{80-79} = ura_bsel;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def UR2UP_UI : XYGPUUPGuardInst<
    (outs UPredAllOpr:$UPR),
    (ins BSelOMOpr:$ura_bsel, URegOpr:$ura, SImm32Opr:$vb),
    "ur2up ${UPR}, ${ura_bsel}${ura}, ${vb}"> {
  let Inst{11-0} = 0x73e;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<32> vb;
  let Inst{63-32} = vb;
  bits<2> ura_bsel;
  let Inst{80-79} = ura_bsel;
}

def UR2UP_UU : XYGPUUPGuardInst<
    (outs UPredAllOpr:$UPR),
    (ins BSelOMOpr:$ura_bsel, URegOpr:$ura, URegOpr:$urb),
    "ur2up ${UPR}, ${ura_bsel}${ura}, ${urb}"> {
  let Inst{11-0} = 0x63e;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<2> ura_bsel;
  let Inst{80-79} = ura_bsel;
}

def USEL_UC : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, PModiOMOpr:$upp_not, UPredOpr:$upp),
    "usel ${urd}, ${ura}, ${vb_bank}${vb_offset}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0x840;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit upp_not;
  let Inst{101} = upp_not;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def USEL_UI : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, SImm32Opr:$vb, PModiOMOpr:$upp_not, UPredOpr:$upp),
    "usel ${urd}, ${ura}, ${vb}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0x740;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
  bit upp_not;
  let Inst{101} = upp_not;
}

def USEL_UU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, PModiOMOpr:$upp_not, UPredOpr:$upp),
    "usel ${urd}, ${ura}, ${urb}, ${upp_not}${upp}"> {
  let Inst{11-0} = 0x640;
  bits<3> upp;
  let Inst{100-98} = upp;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bit upp_not;
  let Inst{101} = upp_not;
}

def USGXT_UC : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, CWModeIMOpr:$cwmode, ITypeIMOpr:$itype),
    "usgxt${cwmode}${itype} ${urd}, ${ura}, ${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x84a;
  bit cwmode;
  let Inst{81} = cwmode;
  bit itype;
  let Inst{80} = itype;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def USGXT_UI : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, SImm32Opr:$vb, CWModeIMOpr:$cwmode, ITypeIMOpr:$itype),
    "usgxt${cwmode}${itype} ${urd}, ${ura}, ${vb}"> {
  let Inst{11-0} = 0x74a;
  bit cwmode;
  let Inst{81} = cwmode;
  bit itype;
  let Inst{80} = itype;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def USGXT_UU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, CWModeIMOpr:$cwmode, ITypeIMOpr:$itype),
    "usgxt${cwmode}${itype} ${urd}, ${ura}, ${urb}"> {
  let Inst{11-0} = 0x64a;
  bit cwmode;
  let Inst{81} = cwmode;
  bit itype;
  let Inst{80} = itype;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def USHF_UCU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset, URegOpr:$urc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "ushf${cwmod}${direction}${itype}${lohi} ${urd}, ${ura}, ${vb_bank}${vb_offset}, ${urc}"> {
  let Inst{11-0} = 0xe43;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def USHF_UIU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, SImm32Opr:$vb, URegOpr:$urc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "ushf${cwmod}${direction}${itype}${lohi} ${urd}, ${ura}, ${vb}, ${urc}"> {
  let Inst{11-0} = 0xc43;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vb;
  let Inst{63-32} = vb;
}

def USHF_UUC : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, CMemBankOpr:$vc_bank, CMemOffsetOpr:$vc_offset, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "ushf${cwmod}${direction}${itype}${lohi} ${urd}, ${ura}, ${urb}, ${vc_bank}${vc_offset}"> {
  let Inst{11-0} = 0xd43;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{69-64} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<5> vc_bank;
  let Inst{53-49} = vc_bank;
  bits<17> vc_offset;
  let Inst{48-32} = vc_offset;
}

def USHF_UUI : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, SImm32Opr:$vc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "ushf${cwmod}${direction}${itype}${lohi} ${urd}, ${ura}, ${urb}, ${vc}"> {
  let Inst{11-0} = 0xb43;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{69-64} = urb;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<32> vc;
  let Inst{63-32} = vc;
}

def USHF_UUU : XYGPUUPGuardInst<
    (outs URegOpr:$urd),
    (ins URegOpr:$ura, URegOpr:$urb, URegOpr:$urc, CWModeIMOpr:$cwmod, SHFDirIMOpr:$direction, SHFDTypeIMOpr:$itype, LOHIIMOpr:$lohi),
    "ushf${cwmod}${direction}${itype}${lohi} ${urd}, ${ura}, ${urb}, ${urc}"> {
  let Inst{11-0} = 0xa43;
  bit cwmod;
  let Inst{80} = cwmod;
  bit direction;
  let Inst{81} = direction;
  bits<2> itype;
  let Inst{78-77} = itype;
  bit lohi;
  let Inst{75} = lohi;
  bits<6> ura;
  let Inst{29-24} = ura;
  bits<6> urb;
  let Inst{37-32} = urb;
  bits<6> urc;
  let Inst{69-64} = urc;
  bits<6> urd;
  let Inst{21-16} = urd;
}

def VOTEU_X : XYGPUPGuardInst<
    (outs URegOpr:$urd, UPredOpr:$upu),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, VOTEOpIMOpr:$voteop),
    "voteu${voteop} ${urd}, ${upu}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x7e;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> upu;
  let Inst{108-106} = upu;
  bits<6> urd;
  let Inst{21-16} = urd;
  bits<2> voteop;
  let Inst{81-80} = voteop;
  bit pp_not;
  let Inst{101} = pp_not;
}

def VOTE_X : XYGPUPGuardInst<
    (outs RegOpr:$rd, PredOpr:$pu),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, VOTEOpIMOpr:$voteop),
    "vote${voteop} ${rd}, ${pu}, ${pp_not}${pp}"> {
  let Inst{11-0} = 0x7d;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<3> pu;
  let Inst{108-106} = pu;
  bits<8> rd;
  let Inst{23-16} = rd;
  bits<2> voteop;
  let Inst{81-80} = voteop;
  bit pp_not;
  let Inst{101} = pp_not;
}

def WARPSYNC_C : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, SignModiOMOpr:$vb_bitnot, CMemBankOpr:$vb_bank, CMemOffsetOpr:$vb_offset),
    "warpsync ${pp_not}${pp}, ${vb_bitnot}${vb_bank}${vb_offset}"> {
  let Inst{11-0} = 0x45f;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
  bit vb_bitnot;
  let Inst{97} = vb_bitnot;
  bits<5> vb_bank;
  let Inst{53-49} = vb_bank;
  bits<17> vb_offset;
  let Inst{48-32} = vb_offset;
}

def WARPSYNC_I : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, UImm32Opr:$membermask),
    "warpsync ${pp_not}${pp}, ${membermask}"> {
  let Inst{11-0} = 0x35f;
  bits<32> membermask;
  let Inst{63-32} = membermask;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
}

def WARPSYNC_R : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, SignModiOMOpr:$rb_bitnot, RegOpr:$rb),
    "warpsync ${pp_not}${pp}, ${rb_bitnot}${rb}"> {
  let Inst{11-0} = 0x15f;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<8> rb;
  let Inst{39-32} = rb;
  bit pp_not;
  let Inst{101} = pp_not;
  bit rb_bitnot;
  let Inst{97} = rb_bitnot;
}

def WARPSYNC_U : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp, SignModiOMOpr:$urb_bitnot, URegOpr:$urb),
    "warpsync ${pp_not}${pp}, ${urb_bitnot}${urb}"> {
  let Inst{11-0} = 0x25f;
  bits<3> pp;
  let Inst{100-98} = pp;
  bits<6> urb;
  let Inst{37-32} = urb;
  bit pp_not;
  let Inst{101} = pp_not;
  bit urb_bitnot;
  let Inst{97} = urb_bitnot;
}

def YIELD_X : XYGPUPGuardInst<
    (outs ),
    (ins PModiOMOpr:$pp_not, PredOpr:$pp),
    "yield ${pp_not}${pp}"> {
  let Inst{11-0} = 0x5d;
  bits<3> pp;
  let Inst{100-98} = pp;
  bit pp_not;
  let Inst{101} = pp_not;
}

