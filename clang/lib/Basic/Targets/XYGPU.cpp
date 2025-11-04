//===--- XYGPU.cpp - Implement XYGPU target feature support ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements XYGPU TargetInfo objects.
//
//===----------------------------------------------------------------------===//

#include "XYGPU.h"
#include "Targets.h"
#include "clang/Basic/Builtins.h"
#include "clang/Basic/MacroBuilder.h"
#include "clang/Basic/TargetBuiltins.h"
#include "llvm/ADT/StringSwitch.h"

using namespace clang;
using namespace clang::targets;

static constexpr Builtin::Info BuiltinInfo[] = {
#define BUILTIN(ID, TYPE, ATTRS)                                               \
  {#ID, TYPE, ATTRS, nullptr, HeaderDesc::NO_HEADER, ALL_LANGUAGES},
#define LIBBUILTIN(ID, TYPE, ATTRS, HEADER)                                    \
  {#ID, TYPE, ATTRS, nullptr, HeaderDesc::HEADER, ALL_LANGUAGES},
#include "clang/Basic/BuiltinsXYGPU.def"
};

const char *const XYGPUTargetInfo::GCCRegNames[] = {"r0"};

XYGPUTargetInfo::XYGPUTargetInfo(const llvm::Triple &Triple,
                                 const TargetOptions &Opts,
                                 unsigned TargetPointerWidth)
    : TargetInfo(Triple) {
  assert((TargetPointerWidth == 32 || TargetPointerWidth == 64) &&
         "XYGPU only supports 32- and 64-bit modes.");

  PTXVersion = 32;
  for (const StringRef Feature : Opts.FeaturesAsWritten) {
    int PTXV;
    if (!Feature.starts_with("+ptx") ||
        Feature.drop_front(4).getAsInteger(10, PTXV))
      continue;
    PTXVersion = PTXV; // TODO: should it be max(PTXVersion, PTXV)?
  }

  TLSSupported = false;
  VLASupported = false;
  AddrSpaceMap = &XYGPUAddrSpaceMap;
  UseAddrSpaceMapMangling = true;
  // __bf16 is always available as a load/store only type.
  BFloat16Width = BFloat16Align = 16;
  BFloat16Format = &llvm::APFloat::BFloat();

  // Define available target features
  // These must be defined in sorted order!
  NoAsmVariants = true;
  GPU = OffloadArch::SM_20;

  resetDataLayout("e-i64:64-i128:128-v16:16-v32:32-n16:32:64");

  // If possible, get a TargetInfo for our host triple, so we can match its
  // types.
  llvm::Triple HostTriple(Opts.HostTriple);
  if (!HostTriple.isXYGPU())
    HostTarget = AllocateTarget(llvm::Triple(Opts.HostTriple), Opts);

  // If no host target, make some guesses about the data layout and return.
  if (!HostTarget) {
    LongWidth = LongAlign = TargetPointerWidth;
    PointerWidth = PointerAlign = TargetPointerWidth;
    switch (TargetPointerWidth) {
    case 32:
      SizeType = TargetInfo::UnsignedInt;
      PtrDiffType = TargetInfo::SignedInt;
      IntPtrType = TargetInfo::SignedInt;
      break;
    case 64:
      SizeType = TargetInfo::UnsignedLong;
      PtrDiffType = TargetInfo::SignedLong;
      IntPtrType = TargetInfo::SignedLong;
      break;
    default:
      llvm_unreachable("TargetPointerWidth must be 32 or 64");
    }

    MaxAtomicInlineWidth = TargetPointerWidth;
    return;
  }

  // Copy properties from host target.
  PointerWidth = HostTarget->getPointerWidth(LangAS::Default);
  PointerAlign = HostTarget->getPointerAlign(LangAS::Default);
  BoolWidth = HostTarget->getBoolWidth();
  BoolAlign = HostTarget->getBoolAlign();
  IntWidth = HostTarget->getIntWidth();
  IntAlign = HostTarget->getIntAlign();
  HalfWidth = HostTarget->getHalfWidth();
  HalfAlign = HostTarget->getHalfAlign();
  FloatWidth = HostTarget->getFloatWidth();
  FloatAlign = HostTarget->getFloatAlign();
  DoubleWidth = HostTarget->getDoubleWidth();
  DoubleAlign = HostTarget->getDoubleAlign();
  LongWidth = HostTarget->getLongWidth();
  LongAlign = HostTarget->getLongAlign();
  LongLongWidth = HostTarget->getLongLongWidth();
  LongLongAlign = HostTarget->getLongLongAlign();
  MinGlobalAlign = HostTarget->getMinGlobalAlign(/* TypeSize = */ 0,
                                                 /* HasNonWeakDef = */ true);
  NewAlign = HostTarget->getNewAlign();
  DefaultAlignForAttributeAligned =
      HostTarget->getDefaultAlignForAttributeAligned();
  SizeType = HostTarget->getSizeType();
  IntMaxType = HostTarget->getIntMaxType();
  PtrDiffType = HostTarget->getPtrDiffType(LangAS::Default);
  IntPtrType = HostTarget->getIntPtrType();
  WCharType = HostTarget->getWCharType();
  WIntType = HostTarget->getWIntType();
  Char16Type = HostTarget->getChar16Type();
  Char32Type = HostTarget->getChar32Type();
  Int64Type = HostTarget->getInt64Type();
  SigAtomicType = HostTarget->getSigAtomicType();
  ProcessIDType = HostTarget->getProcessIDType();

  UseBitFieldTypeAlignment = HostTarget->useBitFieldTypeAlignment();
  UseZeroLengthBitfieldAlignment = HostTarget->useZeroLengthBitfieldAlignment();
  UseExplicitBitFieldAlignment = HostTarget->useExplicitBitFieldAlignment();
  ZeroLengthBitfieldBoundary = HostTarget->getZeroLengthBitfieldBoundary();

  // This is a bit of a lie, but it controls __GCC_ATOMIC_XXX_LOCK_FREE, and
  // we need those macros to be identical on host and device, because (among
  // other things) they affect which standard library classes are defined, and
  // we need all classes to be defined on both the host and device.
  MaxAtomicInlineWidth = HostTarget->getMaxAtomicInlineWidth();

  // Properties intentionally not copied from host:
  // - LargeArrayMinWidth, LargeArrayAlign: Not visible across the
  //   host/device boundary.
  // - SuitableAlign: Not visible across the host/device boundary, and may
  //   correctly be different on host/device, e.g. if host has wider vector
  //   types than device.
  // - LongDoubleWidth, LongDoubleAlign: nvptx's long double type is the same
  //   as its double type, but that's not necessarily true on the host.
  //   TODO: nvcc emits a warning when using long double on device; we should
  //   do the same.
}

ArrayRef<const char *> XYGPUTargetInfo::getGCCRegNames() const {
  return llvm::ArrayRef(GCCRegNames);
}

bool XYGPUTargetInfo::hasFeature(StringRef Feature) const {
  return llvm::StringSwitch<bool>(Feature)
      .Cases("ptx", "nvptx", true)
      .Default(false);
}

void XYGPUTargetInfo::getTargetDefines(const LangOptions &Opts,
                                       MacroBuilder &Builder) const {
  Builder.defineMacro("__PTX__");
  Builder.defineMacro("__XYGPU__");
  if (Opts.CUDAIsDevice || Opts.OpenMPIsTargetDevice || !HostTarget) {
    // Set __CUDA_ARCH__ for the GPU specified.
    Builder.defineMacro("__CUDA_ARCH__", "890");
  }
}

ArrayRef<Builtin::Info> XYGPUTargetInfo::getTargetBuiltins() const {
  // FIXME: Implement.
  return llvm::ArrayRef(BuiltinInfo,
                        clang::XYGPU::LastTSBuiltin - Builtin::FirstTSBuiltin);
}