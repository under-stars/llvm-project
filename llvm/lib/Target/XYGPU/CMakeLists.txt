
add_llvm_component_group(XYGPU)

add_llvm_target(XYGPUCodeGen
  XYGPUTargetMachine.cpp

  ADD_TO_COMPONENT
  XYGPU
)

add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
