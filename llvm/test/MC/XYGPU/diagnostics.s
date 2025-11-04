// RUN: not llvm-mc -triple=xygpu -mcpu=pb100 %s 2>&1 | FileCheck -strict-whitespace %s

@p5 aaaaa r0, r1, r2
// CHECK:      :[[@LINE-1]]:{{[0-9]+}}: error: unknown instruction
// CHECK-NEXT: {{^}}@p5 aaaaa r0, r1, r2
// CHECK-NEXT: {{^}}    ^

LEPC R[6:7], 0
// CHECK:      :[[@LINE-1]]:{{[0-9]+}}: error: sched not set
// CHECK-NEXT: {{^}}LEPC R[6:7], 0
// CHECK-NEXT: {{^}}              ^

LEPC R[6:7], 0 $WSB0
// CHECK:      :[[@LINE-1]]:{{[0-9]+}}: error: sched not set
// CHECK-NEXT: {{^}}LEPC R[6:7], 0 $WSB0
// CHECK-NEXT: {{^}}                    ^

