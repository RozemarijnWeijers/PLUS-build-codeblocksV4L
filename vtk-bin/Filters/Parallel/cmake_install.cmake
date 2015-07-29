# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkFiltersParallel-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkFiltersParallel-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersParallel-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Parallel/CMakeFiles/vtkFiltersParallel.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkCollectGraph.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkCollectPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkCollectTable.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkCutMaterial.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkDuplicatePolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkExtractCTHPart.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkExtractPolyDataPiece.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkExtractUnstructuredGridPiece.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkExtractUserDefinedPiece.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPCellDataToPointData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPExtractArraysOverTime.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPKdTree.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPLinearExtrusionFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPMaskPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPOutlineCornerFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPOutlineFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPOutlineFilterInternals.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPPolyDataNormals.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPProbeFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPProjectSphereFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPReflectionFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPResampleFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPSphereSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPYoungsMaterialInterface.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPassThroughFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPieceRequestFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPieceScalars.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkPipelineSize.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkProcessIdScalars.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkRectilinearGridOutlineFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkTransmitPolyDataPiece.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkTransmitStructuredDataPiece.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkTransmitRectilinearGridPiece.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkTransmitStructuredGridPiece.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Parallel/vtkTransmitUnstructuredGridPiece.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Parallel/vtkFiltersParallelModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

