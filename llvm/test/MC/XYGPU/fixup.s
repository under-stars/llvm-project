// RUN: llvm-mc -triple=xygpu -mcpu=pb100 -filetype=obj < %s | llvm-objdump -rd - | FileCheck %s

	.file	"<stdin>"
	.text
	.globl	test_fixup
	.type	test_fixup,@function
test_fixup:                 // @test_inline_modifier_L
// %bb.0:
	ld.32 r0, [r[2:3].u64 + :shared24:intI], !p3 $W5
	ld.32 r0, [r[2:3].u64 + :shared24:intJ], !p3 $W5
	mov r0, :abshi:intI $W5
	mov r1, :abslo:intI $W5
	ldc r16, c[1][r3 + :const24:intJ] $W5
	call.rel r[16:17], test_call $W5
.Ltmp0:
	.size	test_fixup, .Ltmp0-test_fixup
// CHECK: ld r0, [r[2:3]+urz+0x0], !p3
// CHECK: R_XYGPU_SHARED_24 intI
// CHECK: ld r0, [r[2:3]+urz+0x0], !p3
// CHECK: R_XYGPU_SHARED_24 intJ
// CHECK: mov r0, 0x0
// CHECK: R_XYGPU_ABS32_HI intI
// CHECK: mov r1, 0x0
// CHECK: R_XYGPU_ABS32_LO intI
// CHECK: ldc r16, c[0x1][r3+0x0]
// CHECK: R_XYGPU_CONST_24 intJ
// CHECK: call.rel pt, r[16:17], 0x0
// CHECK: R_XYGPU_JUMP test_call

	.globl	test_call
	.type	test_call,@function
test_call:                 // @test_call
// %bb.0:
	bra .L01 $W5
	iadd r2, r3, r4 $W5
	.L01:
	bra .L01 $W5
	iadd r2, r3, r4 $W5
.Ltmp1:
	.size	test_call, .Ltmp1-test_call

// CHECK: bra pt, 0x10
// CHECK: iadd r2, pt, r3, r4, !pt
// CHECK: bra pt, -0x10
// CHECK: iadd r2, pt, r3, r4, !pt

.section .data
.global intI
intI:
.long  0x0
.global intJ
intJ:
.long  0x0