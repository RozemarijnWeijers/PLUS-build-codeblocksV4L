# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkFiltersCore-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkFiltersCore-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersCore-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Core/CMakeFiles/vtkFiltersCore.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkAppendFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkAppendPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkAppendSelection.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkArrayCalculator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkAssignAttribute.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkAttributeDataToFieldDataFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkCellDataToPointData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkCleanPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkClipPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkCompositeDataProbeFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkConnectivityFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkContourFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkContourGrid.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkContourHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkDataObjectGenerator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkDataObjectToDataSetFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkDataSetEdgeSubdivisionCriterion.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkDataSetToDataObjectFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkDecimatePolylineFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkDecimatePro.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkDelaunay2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkDelaunay3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkElevationFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkExecutionTimer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkFeatureEdges.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkFieldDataToAttributeDataFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkGlyph2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkGlyph3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkHedgeHog.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkHull.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkIdFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkMarchingCubes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkMarchingSquares.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkMaskFields.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkMaskPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkMaskPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkMassProperties.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkMergeDataObjectFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkMergeFields.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkMergeFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkPointDataToCellData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkPolyDataConnectivityFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkPolyDataNormals.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkProbeFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkQuadricClustering.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkQuadricDecimation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkRearrangeFields.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkReverseSense.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkSimpleElevationFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkSmoothPolyDataFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkStripper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkStructuredGridOutlineFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkSynchronizedTemplates2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkSynchronizedTemplates3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkSynchronizedTemplatesCutter3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkTensorGlyph.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkThreshold.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkThresholdPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkTransposeTable.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkTriangleFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkTubeFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkVectorDot.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkVectorNorm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkWindowedSincPolyDataFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkCutter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkCompositeCutter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkGridSynchronizedTemplates3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkRectilinearSynchronizedTemplates.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkEdgeSubdivisionCriterion.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkStreamingTessellator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkImplicitPolyDataDistance.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkStreamerBase.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkCenterOfMass.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkGhostArray.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkImageAppend.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkStructuredGridAppend.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/Core/vtkAppendCompositeDataLeaves.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Core/vtkFiltersCoreModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

