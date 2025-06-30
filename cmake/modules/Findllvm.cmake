set(PCK "llvm")

if (${PCK}_FOUND)
  return()
endif()

find_path(${PCK}_INCLUDE_DIR
  NAMES llvm/Config/llvm-config.h
  HINTS
    ${PRAGMA_DEPS_DIR}/llvm/include
)

set(llvm_libs
	LLVMAggressiveInstCombine
	LLVMAnalysis
	LLVMAsmParser
	LLVMBinaryFormat
	LLVMBitReader
	LLVMBitWriter
	LLVMBitstreamReader
	LLVMCFGuard
	LLVMCodeGen
	LLVMCore
	LLVMCoroutines
	LLVMCoverage
	LLVMDWARFLinker
	LLVMDebugInfoCodeView
	LLVMDebugInfoDWARF
	LLVMDebugInfoGSYM
	LLVMDebugInfoMSF
	LLVMDebugInfoPDB
	LLVMDemangle
	LLVMDlltoolDriver
	LLVMExecutionEngine
	LLVMExtensions
	LLVMFileCheck
	LLVMFrontendOpenACC
	LLVMFrontendOpenMP
	LLVMFuzzMutate
	LLVMGlobalISel
	LLVMIRReader
	LLVMInstCombine
	LLVMInstrumentation
	LLVMInterfaceStub
	LLVMInterpreter
	LLVMJITLink
	LLVMLTO
	LLVMLibDriver
	LLVMLineEditor
	LLVMLinker
	LLVMMC
	LLVMMCA
	LLVMMCDisassembler
	LLVMMCJIT
	LLVMMCParser
	LLVMMIRParser
	LLVMObjCARCOpts
	LLVMObject
	LLVMOption
	LLVMOrcJIT
	LLVMOrcShared
	LLVMOrcTargetProcess
	LLVMPasses
	LLVMProfileData
	LLVMRemarks
	LLVMRuntimeDyld
	LLVMScalarOpts
	LLVMSelectionDAG
	LLVMSupport
	LLVMSymbolize
	LLVMTableGen
	LLVMTarget
	LLVMTextAPI
	LLVMTransformUtils
	LLVMVectorize
	LLVMWindowsManifest
	LLVMX86AsmParser
	LLVMX86CodeGen
	LLVMX86Desc
	LLVMX86Disassembler
	LLVMX86Info
	LLVMXRay
	LLVMipo
	LLVMLTO
	LLVMRemarks
	LLVMAsmPrinter
	clangAPINotes
	clangARCMigrate
	clangAST
	clangASTMatchers
	clangAnalysis
	clangBasic
	clangCodeGen
	clangCrossTU
	clangDependencyScanning
	clangDirectoryWatcher
	clangDriver
	clangDynamicASTMatchers
	clangEdit
	clangFormat
	clangFrontend
	clangFrontendTool
	clangHandleCXX
	clangHandleLLVM
	clangIndex
	clangIndexSerialization
	clangLex
	clangParse
	clangRewrite
	clangRewriteFrontend
	clangSema
	clangSerialization
	clangStaticAnalyzerCheckers
	clangStaticAnalyzerCore
	clangStaticAnalyzerFrontend
	clangTooling
	clangToolingASTDiff
	clangToolingCore
	clangToolingInclusions
	clangToolingRefactoring
	clangToolingSyntax
	clangTransformer
)

set(llvm_lib_list)
foreach(LIB IN LISTS llvm_libs)
  find_library(llvm_${LIB}
    NAMES ${LIB}
    HINTS ${PRAGMA_DEPS_DIR}/llvm/lib
  )
  list(APPEND llvm_lib_list llvm_${LIB})
endforeach()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(${PCK}
  REQUIRED_VARS ${llvm_lib_list} ${PCK}_INCLUDE_DIR
)

set(llvm_lib_paths)
foreach(LIB IN LISTS llvm_lib_list)
  list(APPEND llvm_lib_paths ${${LIB}})
endforeach()

if (llvm_FOUND)
  set(${PCK}_LIBRARIES   ${llvm_lib_paths})
  set(${PCK}_INCLUDE_DIRS ${${PCK}_INCLUDE_DIR})
endif()
