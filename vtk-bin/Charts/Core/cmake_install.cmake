# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkChartsCore-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkChartsCore-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkChartsCore-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Charts/Core/CMakeFiles/vtkChartsCore.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkAxis.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkAxisExtended.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkCategoryLegend.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkChart.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkChartBox.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkChartHistogram2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkChartLegend.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkChartMatrix.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkChartParallelCoordinates.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkChartPie.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkChartXY.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkChartXYZ.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkColorLegend.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkColorTransferControlPointsItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkColorTransferFunctionItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkCompositeControlPointsItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkCompositeTransferFunctionItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkContextPolygon.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkControlPointsItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkLookupTableItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPiecewiseControlPointsItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPiecewiseFunctionItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPiecewisePointHandleItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlot.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlot3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotBag.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotBar.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotBox.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotFunctionalBag.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotGrid.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotHistogram2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotLine.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotLine3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotParallelCoordinates.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotPie.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotPoints.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotPoints3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotStacked.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkPlotSurface.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkScalarsToColorsItem.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Charts/Core/vtkScatterPlotMatrix.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Charts/Core/vtkChartsCoreModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

