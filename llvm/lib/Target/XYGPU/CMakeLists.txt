
add_llvm_component_group(XYGPU)

set(LLVM_TARGET_DEFINITIONS XYGPU.td)
tablegen(LLVM XYGPUGenAsmMatcher.inc -gen-asm-matcher)
tablegen(LLVM XYGPUGenAsmWriter.inc -gen-asm-writer)
tablegen(LLVM XYGPUGenDisassemblerTables.inc -gen-disassembler)
tablegen(LLVM XYGPUGenInstrInfo.inc -gen-instr-info)
tablegen(LLVM XYGPUGenMCCodeEmitter.inc -gen-emitter)
tablegen(LLVM XYGPUGenRegisterInfo.inc -gen-register-info)
tablegen(LLVM XYGPUGenSubtargetInfo.inc -gen-subtarget)

add_public_tablegen_target(XYGPUCommonTableGen)

add_llvm_target(XYGPUCodeGen
  XYGPUFrameLowering.cpp
  XYGPUInstrInfo.cpp
  XYGPURegisterInfo.cpp
  XYGPUSubtarget.cpp
  XYGPUTargetMachine.cpp

  ADD_TO_COMPONENT
  XYGPU
)

add_subdirectory(AsmParser)
add_subdirectory(Disassembler)
add_subdirectory(MCTargetDesc)
add_subdirectory(TargetInfo)
add_subdirectory(Utils)
