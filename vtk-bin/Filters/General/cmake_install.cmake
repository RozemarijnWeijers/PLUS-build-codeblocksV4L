# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Filters/General

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkFiltersGeneral-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkFiltersGeneral-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkFiltersGeneral-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/General/CMakeFiles/vtkFiltersGeneral.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkAnnotationLink.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkAppendPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkApproximatingSubdivisionFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkAreaContourSpectrumFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkAxes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkBlankStructuredGrid.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkBlankStructuredGridWithImage.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkBlockIdScalars.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkBoxClipDataSet.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkBrownianPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkCellCenters.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkCellDerivatives.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkClipClosedSurface.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkClipConvexPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkClipDataSet.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkClipVolume.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkCoincidentPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkContourTriangulator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkCursor2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkCursor3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkCurvatures.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkDataSetGradient.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkDataSetGradientPrecompute.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkDataSetTriangleFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkDeformPointSet.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkDensifyPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkDicer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkDiscreteMarchingCubes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkEdgePoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkGradientFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkGraphLayoutFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkGraphToPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkHierarchicalDataLevelFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkHyperStreamline.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkIconGlyphFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkImageMarchingCubes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkInterpolateDataSetAttributes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkInterpolatingSubdivisionFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkLevelIdScalars.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkLinkEdgels.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkMergeCells.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkMultiBlockDataGroupFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkMultiBlockMergeFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkMultiThreshold.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkOBBDicer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkOBBTree.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkPassThrough.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkPolyDataStreamer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkPolyDataToReebGraphFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkProbePolyhedron.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkQuadraturePointInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkQuadraturePointsGenerator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkQuadratureSchemeDictionaryGenerator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkQuantizePolyDataPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkRandomAttributeGenerator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkRectilinearGridClip.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkRectilinearGridToTetrahedra.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkRecursiveDividingCubes.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkReflectionFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkRotationFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkShrinkFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkShrinkPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkSpatialRepresentationFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkSplineFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkSplitField.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkStructuredGridClip.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkSubPixelPositionEdgels.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkTableBasedClipDataSet.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkTableToPolyData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkTableToStructuredGrid.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkTemporalPathLineFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkTemporalStatistics.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkTessellatorFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkTimeSourceExample.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkTransformFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkTransformPolyDataFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkUncertaintyTubeFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkVertexGlyphFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkVolumeContourSpectrumFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkVoxelContoursToSurfaceFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkWarpLens.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkWarpScalar.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkWarpTo.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkWarpVector.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkYoungsMaterialInterface.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkMarchingContourFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkRectilinearGridToPointSet.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkGraphWeightEuclideanDistanceFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkGraphWeightFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkImageDataToPointSet.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkIntersectionPolyDataFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkBooleanOperationPolyDataFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkDistancePolyDataFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkOverlappingAMRLevelIdScalars.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkExtractArray.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkMatricizeArray.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkNormalizeMatrixVectors.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkPassArrays.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkSplitColumnComponents.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Filters/General/vtkCellTreeLocator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/General/vtkFiltersGeneralModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

