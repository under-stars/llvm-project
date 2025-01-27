
#include "llvm/MC/TargetRegistry.h"
#include "TargetInfo/ZXCVTargetInfo.h"
using namespace llvm;

Target &llvm::getTheZXCVTarget() {
  static Target TheZXCVTarget;
  return TheZXCVTarget;
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeZXCVTargetInfo() {
  RegisterTarget<Triple::zxcv> X(
    getTheZXCVTarget(), "zxcv", "zifeng defined target", "ZXCV");
}
