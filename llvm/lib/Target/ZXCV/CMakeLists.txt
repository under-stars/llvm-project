
add_llvm_component_group(ZXCV)

add_llvm_target(ZXCVCodeGen
  ZXCVTargetMachine.cpp

  ADD_TO_COMPONENT
  ZXCV
)

add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
