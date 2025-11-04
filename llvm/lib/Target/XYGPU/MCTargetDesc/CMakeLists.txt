
add_llvm_component_library(LLVMXYGPUDesc
  XYGPUInstPrinter.cpp
  XYGPUAsmBackend.cpp
  XYGPUELFObjectWriter.cpp
  XYGPUMCAsmInfo.cpp
  XYGPUMCCodeEmitter.cpp
  XYGPUMCTargetDesc.cpp

  LINK_COMPONENTS
  XYGPUUtils

  ADD_TO_COMPONENT
  XYGPU
)
