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
  fixup_xygpu_invalid = FirstTargetFixupKind,

  // Marker
  LastTargetFixupKind,
  NumTargetFixupKinds = LastTargetFixupKind - FirstTargetFixupKind
};
}
} // end namespace llvm

#endif