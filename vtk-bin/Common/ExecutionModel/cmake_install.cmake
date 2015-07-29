# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "Debug")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkCommonExecutionModel-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkCommonExecutionModel-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkCommonExecutionModel-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_REMOVE
           FILE "${file}")
      IF(CMAKE_INSTALL_DO_STRIP)
        EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "${file}")
      ENDIF(CMAKE_INSTALL_DO_STRIP)
    ENDIF()
  ENDFOREACH()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "RuntimeLibraries")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/ExecutionModel/CMakeFiles/vtkCommonExecutionModel.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkAlgorithmOutput.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkAnnotationLayersAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkArrayDataAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkCachedStreamingDemandDrivenPipeline.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkCastToConcrete.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkCompositeDataPipeline.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkCompositeDataSetAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkDataObjectAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkDataSetAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkDemandDrivenPipeline.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkDirectedGraphAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkEnsembleSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkExecutive.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkExtentSplitter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkExtentTranslator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkFilteringInformationKeyManager.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkGraphAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkHierarchicalBoxDataSetAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkHyperOctreeAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkHyperTreeGridAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkImageAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkImageInPlaceFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkImageProgressIterator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkImageToStructuredGrid.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkImageToStructuredPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkInformationDataObjectMetaDataKey.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkInformationExecutivePortKey.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkInformationExecutivePortVectorKey.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkInformationIntegerRequestKey.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkMultiBlockDataSetAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkMultiTimeStepAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkPassInputTypeAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkPiecewiseFunctionAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkPiecewiseFunctionShiftScale.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkPointSetAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkPolyDataAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkRectilinearGridAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkScalarTree.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkSimpleImageToImageFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkSimpleScalarTree.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkStreamingDemandDrivenPipeline.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkStructuredGridAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkTableAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkSMPProgressObserver.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkThreadedCompositeDataPipeline.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkThreadedImageAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkTreeAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkTrivialProducer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkUndirectedGraphAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkUnstructuredGridAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkUnstructuredGridBaseAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkProgressObserver.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkSelectionAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkExtentRCBPartitioner.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkUniformGridPartitioner.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkUniformGridAMRAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkOverlappingAMRAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Common/ExecutionModel/vtkNonOverlappingAMRAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/ExecutionModel/vtkCommonExecutionModelModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

