// RUN: llvm-mc -triple=xygpu -mcpu=pb100 -filetype=obj < %s | llvm-objdump -d - | FileCheck %s

        .section        .text._Z9vectorAddPKfS0_Pfi,"ax",@progbits
        .align  128
        .global         _Z9vectorAddPKfS0_Pfi
        .type           _Z9vectorAddPKfS0_Pfi,@function
        .size           _Z9vectorAddPKfS0_Pfi,(.L_x_1 - _Z9vectorAddPKfS0_Pfi)
_Z9vectorAddPKfS0_Pfi:
     MOV R1, c[0x0][0x28] $W5
     S2R R6, sr_warpid $W5  // warp id
     S2R R3, sr_laneid $W5  // lane
     IMAD R3, R6, 32, R3 $w4 // warp id * 32 + lane id = tid
     ISETP.GE.AND P0, PT, R6, c[0x0][0x178], PT $w4
@!P0 BRA _Z1kPii$_Z3fibi $W5
     // CHECK: bra pt, 0x10
     EXIT $W5
.type           _Z1kPii$_Z3fibi,@function
.size           _Z1kPii$_Z3fibi,(.L_x_1 - _Z1kPii$_Z3fibi)
_Z1kPii$_Z3fibi:
     MOV R7, 0x4 $W5
     ULDC.64 UR[4:5], c[0x0][urz+0x118] $W5
     IMAD_WIDE R[4:5], R6, R7, c[0x0][0x168] $w4
     IMAD_WIDE R[2:3], R6, R7, c[0x0][0x160] $w3
     LDG.32 R4, [R[4:5].U64] $wsb0 $w3
     LDG.32 R3, [R[2:3].U64] $wsb1 $w3
     IMAD_WIDE R[6:7], R6, R7, c[0x0][0x170] $w3
     FADD R9, R4, R3 $req{0,1} $W5
     STG.32 [R[6:7].U64], R9 $w8
     EXIT $W5
.L_x_0:
     BRA .L_x_0 $W5 // infinite loop
     // CHECK bra pt, -0x10
.L_x_1:
