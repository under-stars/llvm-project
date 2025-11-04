//===--- XYGPU.cpp - XYGPU Tool and ToolChain Implementations ----*- C++
//-*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "XYGPU.h"
#include "CommonArgs.h"
#include "clang/Basic/Cuda.h"
#include "clang/Basic/TargetID.h"
#include "clang/Driver/Compilation.h"
#include "clang/Driver/Driver.h"
#include "clang/Driver/DriverDiagnostic.h"
#include "clang/Driver/InputInfo.h"
#include "clang/Driver/Options.h"
#include "clang/Driver/SanitizerArgs.h"
#include "llvm/Support/Alignment.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/Path.h"
#include "llvm/TargetParser/TargetParser.h"

using namespace clang::driver;
using namespace clang::driver::toolchains;
using namespace clang::driver::tools;
using namespace clang;
using namespace llvm::opt;

// Constructs a triple string for clang offload bundler.
static std::string normalizeForBundler(const llvm::Triple &T,
                                       bool HasTargetID) {
  return HasTargetID ? (T.getArchName() + "-" + T.getVendorName() + "-" +
                        T.getOSName() + "-" + T.getEnvironmentName())
                           .str()
                     : T.normalize();
}

const unsigned CodeObjectAlign = 4096;

// Construct a clang-offload-bundler command to bundle code objects for
// different devices into a fat binary.
static void constructFatbinCommand(Compilation &C, const JobAction &JA,
                                   llvm::StringRef OutputFileName,
                                   const InputInfoList &Inputs,
                                   const llvm::opt::ArgList &Args,
                                   const Tool &T) {
  // Construct clang-offload-bundler command to bundle object files for
  // for different GPU archs.
  ArgStringList BundlerArgs;
  BundlerArgs.push_back(Args.MakeArgString("-type=o"));
  BundlerArgs.push_back(
      Args.MakeArgString("-bundle-align=" + Twine(CodeObjectAlign)));

  // TODO: Remove the dummy host binary entry which is required by
  // clang-offload-bundler.
  std::string BundlerTargetArg = "-targets=host-x86_64-unknown-linux";
  // TODO:
  // Using Tempting hip OffloadKind.
  std::string OffloadKind = "hip";
  auto &TT = T.getToolChain().getTriple();
  for (const auto &II : Inputs) {
    const auto *A = II.getAction();
    auto ArchStr = llvm::StringRef(A->getOffloadingArch());
    BundlerTargetArg +=
        "," + OffloadKind + "-" + normalizeForBundler(TT, !ArchStr.empty());
    if (!ArchStr.empty())
      BundlerTargetArg += "-" + ArchStr.str();
  }
  BundlerArgs.push_back(Args.MakeArgString(BundlerTargetArg));

  // Use a NULL file as input for the dummy host binary entry
  std::string BundlerInputArg = "-input="
                                "/dev/null";
  BundlerArgs.push_back(Args.MakeArgString(BundlerInputArg));
  for (const auto &II : Inputs) {
    BundlerInputArg = std::string("-input=") + II.getFilename();
    BundlerArgs.push_back(Args.MakeArgString(BundlerInputArg));
  }

  std::string Output = std::string(OutputFileName);
  auto *BundlerOutputArg =
      Args.MakeArgString(std::string("-output=").append(Output));
  BundlerArgs.push_back(BundlerOutputArg);

  if (Args.hasFlag(options::OPT_offload_compress,
                   options::OPT_no_offload_compress, false))
    BundlerArgs.push_back("-compress");
  if (Args.hasArg(options::OPT_v))
    BundlerArgs.push_back("-verbose");

  const char *Bundler = Args.MakeArgString(
      T.getToolChain().GetProgramPath("clang-offload-bundler"));
  C.addCommand(std::make_unique<Command>(
      JA, T, ResponseFileSupport::None(), Bundler, BundlerArgs, Inputs,
      InputInfo(&JA, Args.MakeArgString(Output))));
}

/// Add Generated Object File which has device images embedded into the
/// host to the argument list for linking. Using MC directives, embed the
/// device code and also define symbols required by the code generation so that
/// the image can be retrieved at runtime.
static void constructGenerateObjFileFromFatBinary(
    Compilation &C, const InputInfo &Output, const InputInfoList &Inputs,
    const ArgList &Args, const JobAction &JA, const Tool &T) {
  const ToolChain &TC = T.getToolChain();
  std::string Name = std::string(llvm::sys::path::stem(Output.getFilename()));

  // Create Temp Object File Generator,
  // Offload Bundled file and Bundled Object file.
  // Keep them if save-temps is enabled.
  const char *McinFile;
  const char *BundleFile;
  if (C.getDriver().isSaveTempsEnabled()) {
    McinFile = C.getArgs().MakeArgString(Name + ".mcin");
    BundleFile = C.getArgs().MakeArgString(Name + ".fatbin");
  } else {
    auto TmpNameMcin = C.getDriver().GetTemporaryPath(Name, "mcin");
    McinFile = C.addTempFile(C.getArgs().MakeArgString(TmpNameMcin));
    auto TmpNameFb = C.getDriver().GetTemporaryPath(Name, "fatbin");
    BundleFile = C.addTempFile(C.getArgs().MakeArgString(TmpNameFb));
  }
  constructFatbinCommand(C, JA, BundleFile, Inputs, Args, T);

  // Create a buffer to write the contents of the temp obj generator.
  std::string ObjBuffer;
  llvm::raw_string_ostream ObjStream(ObjBuffer);

  auto HostTriple =
      C.getSingleOffloadToolChain<Action::OFK_Host>()->getTriple();

  // Add MC directives to embed target binaries. We ensure that each
  // section and image is 16-byte aligned. This is not mandatory, but
  // increases the likelihood of data to be aligned with a cache block
  // in several main host machines.
  ObjStream << "#       XYGPU Object Generator\n";
  ObjStream << "# *** Automatically generated by Clang ***\n";
  ObjStream << "  .protected __fatbin\n";
  ObjStream << "  .type __fatbin,@object\n";
  ObjStream << "  .section .fatbin,\"a\",@progbits\n";
  ObjStream << "  .globl __fatbin\n";
  ObjStream << "  .p2align " << llvm::Log2(llvm::Align(CodeObjectAlign))
            << "\n";
  ObjStream << "__fatbin:\n";
  ObjStream << "  .incbin ";
  llvm::sys::printArg(ObjStream, BundleFile, /*Quote=*/true);
  ObjStream << "\n";
  if (HostTriple.isOSLinux() && HostTriple.isOSBinFormatELF())
    ObjStream << "  .section .note.GNU-stack, \"\", @progbits\n";
  ObjStream.flush();

  // TODO: save it ?
  // Dump the contents of the temp object file gen if the user requested that.
  // We support this option to enable testing of behavior with -###.
  if (C.getArgs().hasArg(options::OPT_fhip_dump_offload_linker_script))
    llvm::errs() << ObjBuffer;

  // Open script file and write the contents.
  std::error_code EC;
  llvm::raw_fd_ostream Objf(McinFile, EC, llvm::sys::fs::OF_None);

  if (EC) {
    C.getDriver().Diag(clang::diag::err_unable_to_make_temp) << EC.message();
    return;
  }

  Objf << ObjBuffer;

  ArgStringList McArgs{"-triple", Args.MakeArgString(HostTriple.normalize()),
                       "-o",      Output.getFilename(),
                       McinFile,  "--filetype=obj"};
  const char *Mc = Args.MakeArgString(TC.GetProgramPath("llvm-mc"));
  C.addCommand(std::make_unique<Command>(JA, T, ResponseFileSupport::None(), Mc,
                                         McArgs, Inputs, Output));
}

void XYGPU::Linker::constructLlvmLinkCommand(
    Compilation &C, const JobAction &JA, const InputInfoList &Inputs,
    const InputInfo &Output, const llvm::opt::ArgList &Args) const {
  // Construct llvm-link command.
  // The output from llvm-link is a bitcode file.
  ArgStringList LlvmLinkArgs;

  assert(!Inputs.empty() && "Must have at least one input.");

  LlvmLinkArgs.append({"-o", Output.getFilename()});
  for (auto Input : Inputs)
    LlvmLinkArgs.push_back(Input.getFilename());

  // Look for archive of bundled bitcode in arguments, and add temporary files
  // for the extracted archive of bitcode to inputs.
  auto TargetID = Args.getLastArgValue(options::OPT_mcpu_EQ);
  AddStaticDeviceLibsLinking(C, *this, JA, Inputs, Args, LlvmLinkArgs, "xygpu",
                             TargetID, /*IsBitCodeSDL=*/true);

  const char *LlvmLink =
      Args.MakeArgString(getToolChain().GetProgramPath("llvm-link"));
  C.addCommand(std::make_unique<Command>(JA, *this, ResponseFileSupport::None(),
                                         LlvmLink, LlvmLinkArgs, Inputs,
                                         Output));
}

void XYGPU::Linker::constructLldCommand(Compilation &C, const JobAction &JA,
                                        const InputInfoList &Inputs,
                                        const InputInfo &Output,
                                        const llvm::opt::ArgList &Args) const {
  // Construct lld command.
  // The output from ld.lld is an HSA code object file.
  ArgStringList LldArgs{
      "-flavor", "gnu", "-m", "elf64_xygpu", "--no-undefined",
  };

  auto &TC = getToolChain();
  auto &D = TC.getDriver();
  assert(!Inputs.empty() && "Must have at least one input.");
  bool IsThinLTO = D.getLTOMode() == LTOK_Thin;
  addLTOOptions(TC, Args, LldArgs, Output, Inputs[0], IsThinLTO);

  if (IsThinLTO)
    LldArgs.push_back(Args.MakeArgString("-plugin-opt=-force-import-all"));

  if (C.getDriver().isSaveTempsEnabled())
    LldArgs.push_back("-save-temps");

  addLinkerCompressDebugSectionsOption(TC, Args, LldArgs);

  // Given that host and device linking happen in separate processes, the device
  // linker doesn't always have the visibility as to which device symbols are
  // needed by a program, especially for the device symbol dependencies that are
  // introduced through the host symbol resolution.
  // For example: host_A() (A.obj) --> host_B(B.obj) --> device_kernel_B()
  // (B.obj) In this case, the device linker doesn't know that A.obj actually
  // depends on the kernel functions in B.obj.  When linking to static device
  // library, the device linker may drop some of the device global symbols if
  // they aren't referenced.  As a workaround, we are adding to the
  // --whole-archive flag such that all global symbols would be linked in.
  LldArgs.push_back("--whole-archive");

  for (auto *Arg : Args.filtered(options::OPT_Xoffload_linker)) {
    StringRef ArgVal = Arg->getValue(1);
    // auto SplitArg = ArgVal.split("-mllvm=");
    LldArgs.push_back(Args.MakeArgString(ArgVal));
    Arg->claim();
  }

  LldArgs.append({"-o", Output.getFilename()});
  for (auto Input : Inputs)
    LldArgs.push_back(Input.getFilename());

  // Look for archive of bundled bitcode in arguments, and add temporary files
  // for the extracted archive of bitcode to inputs.
  auto TargetID = Args.getLastArgValue(options::OPT_mcpu_EQ);
  AddStaticDeviceLibsLinking(C, *this, JA, Inputs, Args, LldArgs, "xygpu",
                             TargetID, /*IsBitCodeSDL=*/true);

  LldArgs.push_back("--no-whole-archive");

  const char *Lld = Args.MakeArgString(getToolChain().GetProgramPath("lld"));
  C.addCommand(std::make_unique<Command>(JA, *this, ResponseFileSupport::None(),
                                         Lld, LldArgs, Inputs, Output));

  ArgStringList CmdArgs;
  const char *Exec;
  auto TempPath = getToolChain().getDriver().GetTemporaryDirectory(Output.getFilename());
  if (Args.hasArg(options::OPT_asm_obj)) {
    Exec = Args.MakeArgString(TC.GetProgramPath("llvm-objcopy"));
    for (const auto &II : Inputs) {
      CmdArgs.clear();
      const char *asmFile =
      Args.MakeArgString(TempPath + "/" +
          llvm::sys::path::stem(II.getFilename()) + ".s");
      CmdArgs.push_back("--dump-section");
      CmdArgs.push_back(
          Args.MakeArgString(StringRef(".asmtext=") + asmFile));
      CmdArgs.push_back(Args.MakeArgString(II.getFilename()));
      C.addCommand(std::make_unique<Command>(JA, *this, ResponseFileSupport::None(),
                                         Exec, CmdArgs, Inputs, Output));
    }
    CmdArgs.clear();
    Exec = Args.MakeArgString(TC.GetProgramPath("sh"));
    CmdArgs.push_back("-c");

    auto Tarfile = StringRef(TempPath) + Output.getFilename() + ".tar.gz";
    auto CmdString = StringRef("tar") + " " + "czf" + " " + TempPath + Output.getFilename() + ".tar.gz"
                + " " + TempPath + "/*";
    CmdArgs.push_back(Args.MakeArgString(CmdString));
    // CmdArgs.push_back(Args.MakeArgString(StringRef(TempPath) + Output.getFilename() + ".tar.gz"));
    // CmdArgs.push_back(Args.MakeArgString(StringRef(TempPath) + "/*"));
    C.addCommand(std::make_unique<Command>(JA, *this, ResponseFileSupport::None(),
                                          Exec, CmdArgs, Inputs, Output));

    CmdArgs.clear();
    Exec = Args.MakeArgString(TC.GetProgramPath("llvm-objcopy"));
    CmdArgs.push_back("--add-section");
     CmdArgs.push_back(
          Args.MakeArgString(".asmfile=" + Tarfile));
    CmdArgs.push_back("--set-section-flags");
    CmdArgs.push_back(".asmfile=strings");
    CmdArgs.push_back(Args.MakeArgString(Output.getFilename()));
    C.addCommand(std::make_unique<Command>(
        JA, *this,
        ResponseFileSupport::None(),
        Exec, CmdArgs, Inputs, Output));
  }
}

llvm::opt::DerivedArgList *
XYGPUCudaToolChain::TranslateArgs(const llvm::opt::DerivedArgList &Args,
                                  StringRef BoundArch,
                                  Action::OffloadKind DeviceOffloadKind) const {
  DerivedArgList *DAL =
      HostTC.TranslateArgs(Args, BoundArch, DeviceOffloadKind);
  if (!DAL)
    DAL = new DerivedArgList(Args.getBaseArgs());

  const OptTable &Opts = getDriver().getOpts();

  for (Arg *A : Args) {
    DAL->append(A);
  }

  if (!BoundArch.empty()) {
    DAL->eraseArg(options::OPT_mcpu_EQ);
    DAL->AddJoinedArg(nullptr, Opts.getOption(options::OPT_mcpu_EQ), BoundArch);
  }

  return DAL;
}

void XYGPUCudaToolChain::addClangTargetOptions(
    const llvm::opt::ArgList &DriverArgs, llvm::opt::ArgStringList &CC1Args,
    Action::OffloadKind DeviceOffloadingKind) const {
  HostTC.addClangTargetOptions(DriverArgs, CC1Args, DeviceOffloadingKind);

  assert(DeviceOffloadingKind == Action::OFK_Cuda &&
         "Only Cuda offloading kinds are supported for GPUs.");

  CC1Args.push_back("-fcuda-is-device");

  StringRef MaxThreadsPerBlock =
      DriverArgs.getLastArgValue(options::OPT_gpu_max_threads_per_block_EQ);
  if (!MaxThreadsPerBlock.empty()) {
    std::string ArgStr =
        (Twine("--gpu-max-threads-per-block=") + MaxThreadsPerBlock).str();
    CC1Args.push_back(DriverArgs.MakeArgStringRef(ArgStr));
  }

  CC1Args.push_back("-fcuda-allow-variadic-functions");

  // Default to "hidden" visibility, as object level linking will not be
  // supported for the foreseeable future.
  if (!DriverArgs.hasArg(options::OPT_fvisibility_EQ,
                         options::OPT_fvisibility_ms_compat)) {
    CC1Args.append({"-fvisibility=hidden"});
    CC1Args.push_back("-fapply-global-visibility-to-externs");
  }

  for (auto BCFile : getDeviceLibs(DriverArgs)) {
    CC1Args.push_back(BCFile.ShouldInternalize ? "-mlink-builtin-bitcode"
                                               : "-mlink-bitcode-file");
    CC1Args.push_back(DriverArgs.MakeArgString(BCFile.Path));
  }

  // fix clang compile template parsing different with nvcc
  CC1Args.push_back("-fdelayed-template-parsing");

  CC1Args.push_back("-D__CUDA_ARCH=1200");
}

llvm::SmallVector<ToolChain::BitCodeLibraryInfo, 12>
XYGPUCudaToolChain::getDeviceLibs(const llvm::opt::ArgList &Args) const {
  llvm::SmallVector<BitCodeLibraryInfo, 12> BCLibs;

  return BCLibs;
}

void XYGPUCudaToolChain::addClangWarningOptions(ArgStringList &CC1Args) const {
  HostTC.addClangWarningOptions(CC1Args);
}

ToolChain::CXXStdlibType
XYGPUCudaToolChain::GetCXXStdlibType(const ArgList &Args) const {
  return HostTC.GetCXXStdlibType(Args);
}

void XYGPUCudaToolChain::AddClangSystemIncludeArgs(
    const ArgList &DriverArgs, ArgStringList &CC1Args) const {
  HostTC.AddClangSystemIncludeArgs(DriverArgs, CC1Args);
}

void XYGPUCudaToolChain::AddClangCXXStdlibIncludeArgs(
    const ArgList &Args, ArgStringList &CC1Args) const {
  HostTC.AddClangCXXStdlibIncludeArgs(Args, CC1Args);
}

void XYGPUCudaToolChain::AddXYGPUIncludeArgs(const ArgList &DriverArgs,
                                             ArgStringList &CC1Args) const {
  RocmInstallation->AddHIPIncludeArgs(DriverArgs, CC1Args);
}

// For xygpu the inputs of the linker job are device bitcode and output is
// either an object file or bitcode (-emit-llvm). It calls llvm-link, opt,
// llc, then lld steps.
void XYGPU::Linker::ConstructJob(Compilation &C, const JobAction &JA,
                                 const InputInfo &Output,
                                 const InputInfoList &Inputs,
                                 const ArgList &Args,
                                 const char *LinkingOutput) const {
  if (Inputs.size() > 0 && Inputs[0].getType() == types::TY_Image &&
      JA.getType() == types::TY_Object)
    return constructGenerateObjFileFromFatBinary(C, Output, Inputs, Args, JA,
                                                 *this);

  if (JA.getType() == types::TY_HIP_FATBIN)
    return constructFatbinCommand(C, JA, Output.getFilename(), Inputs, Args,
                                  *this);

  if (JA.getType() == types::TY_LLVM_BC)
    return constructLlvmLinkCommand(C, JA, Inputs, Output, Args);

  return constructLldCommand(C, JA, Inputs, Output, Args);
}

void XYGPU::Assembler::ConstructJob(Compilation &C, const JobAction &JA,
                                    const InputInfo &Output,
                                    const InputInfoList &Inputs,
                                    const ArgList &Args,
                                    const char *LinkingOutput) const {
  ClangAs::ConstructJob(C, JA, Output, Inputs, Args, LinkingOutput);
  const auto &TC =
      static_cast<const toolchains::XYGPUCudaToolChain &>(getToolChain());

  ArgStringList CmdArgs;
  const char *Exec;
  if (Args.hasArg(options::OPT_asm_obj)) {
    Exec = Args.MakeArgString(TC.GetProgramPath("llvm-objcopy"));
    for (const auto &II : Inputs) {
      CmdArgs.push_back("--add-section");
      CmdArgs.push_back(
          Args.MakeArgString(StringRef(".asmtext=") + II.getFilename()));
      // CmdArgs.push_back(Args.MakeArgString(StringRef("--add-section ") +
      // ".asmtext=" + II.getFilename()));
      // CmdArgs.push_back(Args.MakeArgString(StringRef("--add-symbol ") +
      // II.getFilename() + "=.asmtext:.asmtext"));
    }
    CmdArgs.push_back("--set-section-flags");
    CmdArgs.push_back(".asmtext=strings");
    CmdArgs.push_back(Output.getFilename());
    C.addCommand(std::make_unique<Command>(
        JA, *this,
        ResponseFileSupport{ResponseFileSupport::RF_Full, llvm::sys::WEM_UTF8,
                            "--options-file"},
        Exec, CmdArgs, Inputs, Output));
  }
}

XYGPUCudaToolChain::XYGPUCudaToolChain(const Driver &D,
                                       const llvm::Triple &Triple,
                                       const ToolChain &HostTC,
                                       const ArgList &Args)
    : Linux(D, Triple, Args), HostTC(HostTC) {}

Tool *XYGPUCudaToolChain::buildLinker() const {
  assert(getTriple().getArch() == llvm::Triple::xygpu);
  return new tools::XYGPU::Linker(*this);
}

Tool *XYGPUCudaToolChain::buildAssembler() const {
  assert(getTriple().getArch() == llvm::Triple::xygpu);
  return new tools::XYGPU::Assembler(*this);
}

XYGPUToolChain::XYGPUToolChain(const Driver &D, const llvm::Triple &Triple,
                               const ArgList &Args)
    : Linux(D, Triple, Args) {}

llvm::opt::DerivedArgList *
XYGPUToolChain::TranslateArgs(const llvm::opt::DerivedArgList &Args,
                              StringRef BoundArch,
                              Action::OffloadKind DeviceOffloadKind) const {
  DerivedArgList *DAL =
      ToolChain::TranslateArgs(Args, BoundArch, DeviceOffloadKind);
  if (!DAL)
    DAL = new DerivedArgList(Args.getBaseArgs());

  for (Arg *A : Args) {
    DAL->append(A);
  }

  return DAL;
}

Tool *XYGPUToolChain::buildLinker() const {
  assert(getTriple().getArch() == llvm::Triple::xygpu);
  return new tools::XYGPU::Linker(*this);
}

Tool *XYGPUToolChain::buildAssembler() const {
  assert(getTriple().getArch() == llvm::Triple::xygpu);
  return new tools::XYGPU::Assembler(*this);
}