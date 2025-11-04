//===--- XYGPU.h - XYGPU ToolChain Implementations ---------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_CLANG_LIB_DRIVER_TOOLCHAINS_XYGPU_H
#define LLVM_CLANG_LIB_DRIVER_TOOLCHAINS_XYGPU_H

#include "Linux.h"
#include "clang/Driver/Tool.h"
#include "clang/Driver/ToolChain.h"
#include "Clang.h"

namespace clang {
namespace driver {

namespace tools {

namespace XYGPU {
// Runs llvm-link/opt/llc/lld, which links multiple LLVM bitcode, together with
// device library, then compiles it to ISA in a shared object.
class LLVM_LIBRARY_VISIBILITY Linker final : public Tool {
public:
  Linker(const ToolChain &TC) : Tool("XYGPU::Linker", "xygpu-linker", TC) {}

  bool hasIntegratedCPP() const override { return false; }

  void ConstructJob(Compilation &C, const JobAction &JA,
                    const InputInfo &Output, const InputInfoList &Inputs,
                    const llvm::opt::ArgList &TCArgs,
                    const char *LinkingOutput) const override;

private:
  void constructLldCommand(Compilation &C, const JobAction &JA,
                           const InputInfoList &Inputs, const InputInfo &Output,
                           const llvm::opt::ArgList &Args) const;
  void constructLlvmLinkCommand(Compilation &C, const JobAction &JA,
                                const InputInfoList &Inputs,
                                const InputInfo &Output,
                                const llvm::opt::ArgList &Args) const;
};

// Runs llvm-link/opt/llc/lld, which links multiple LLVM bitcode, together with
// device library, then compiles it to ISA in a shared object.
class LLVM_LIBRARY_VISIBILITY Assembler final : public ClangAs {
public:
  Assembler(const ToolChain &TC) : ClangAs(TC) {}

  void ConstructJob(Compilation &C, const JobAction &JA,
                    const InputInfo &Output, const InputInfoList &Inputs,
                    const llvm::opt::ArgList &TCArgs,
                    const char *LinkingOutput) const override;
};

} // end namespace XYGPU
} // end namespace tools

namespace toolchains {

class LLVM_LIBRARY_VISIBILITY XYGPUCudaToolChain final : public Linux {
public:
  XYGPUCudaToolChain(const Driver &D, const llvm::Triple &Triple,
                  const ToolChain &HostTC, const llvm::opt::ArgList &Args);

  const llvm::Triple *getAuxTriple() const override {
    return &HostTC.getTriple();
  }

  const ToolChain &HostTC;

  llvm::opt::DerivedArgList *
  TranslateArgs(const llvm::opt::DerivedArgList &Args, StringRef BoundArch,
                Action::OffloadKind DeviceOffloadKind) const override;
  void
  addClangTargetOptions(const llvm::opt::ArgList &DriverArgs,
                        llvm::opt::ArgStringList &CC1Args,
                        Action::OffloadKind DeviceOffloadKind) const override;
  void addClangWarningOptions(llvm::opt::ArgStringList &CC1Args) const override;
  CXXStdlibType GetCXXStdlibType(const llvm::opt::ArgList &Args) const override;
  void
  AddClangSystemIncludeArgs(const llvm::opt::ArgList &DriverArgs,
                            llvm::opt::ArgStringList &CC1Args) const override;
  void AddClangCXXStdlibIncludeArgs(
      const llvm::opt::ArgList &Args,
      llvm::opt::ArgStringList &CC1Args) const override;

  void AddXYGPUIncludeArgs(const llvm::opt::ArgList &DriverArgs,
                         llvm::opt::ArgStringList &CC1Args) const;
  llvm::SmallVector<BitCodeLibraryInfo, 12>
  getDeviceLibs(const llvm::opt::ArgList &Args) const override;
protected:
  Tool *buildLinker() const override;
  Tool *buildAssembler() const override;
};


class LLVM_LIBRARY_VISIBILITY XYGPUToolChain final : public Linux {
public:
  XYGPUToolChain(const Driver &D, const llvm::Triple &Triple,
                 const llvm::opt::ArgList &Args);

  llvm::opt::DerivedArgList *
  TranslateArgs(const llvm::opt::DerivedArgList &Args, StringRef BoundArch,
                Action::OffloadKind DeviceOffloadKind) const override;

  bool isCrossCompiling() const override { return true; }
  bool useIntegratedAs() const override { return false; }
protected:
  Tool *buildLinker() const override;
  Tool *buildAssembler() const override;
};

} // end namespace toolchains
} // end namespace driver
} // end namespace clang

#endif // LLVM_CLANG_LIB_DRIVER_TOOLCHAINS_XYGPU_H
