//===-- XYGPUFixupKinds.h - XYGPU Specific Fixup Entries --------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_XYGPU_MCTARGETDESC_XYGPUFIXUPKINDS_H
#define LLVM_LIB_TARGET_XYGPU_MCTARGETDESC_XYGPUFIXUPKINDS_H

#include "llvm/MC/MCFixup.h"

namespace llvm {
namespace XYGPU {
enum Fixups {
  fixup_xygpu_abs16 = FirstTargetFixupKind,
  fixup_xygpu_abs24,
  fixup_xygpu_abs32,
  fixup_xygpu_abs32_hi,
  fixup_xygpu_abs32_lo,
  fixup_xygpu_abs64,

  fixup_xygpu_pcrel16,
  fixup_xygpu_pcrel24,
  fixup_xygpu_pcrel32,
  fixup_xygpu_pcrel50,
  fixup_xygpu_pcrel64,

  fixup_xygpu_shared16,
  fixup_xygpu_shared24,
  fixup_xygpu_shared32,

  fixup_xygpu_const16,
  fixup_xygpu_const24,

  fixup_xygpu_gotpcrel,
  fixup_xygpu_gotcall,

  fixup_xygpu_call,
  fixup_xygpu_branch,

  // Marker
  LastTargetFixupKind,
  NumTargetFixupKinds = LastTargetFixupKind - FirstTargetFixupKind
};
}
} // end namespace llvm

#endif