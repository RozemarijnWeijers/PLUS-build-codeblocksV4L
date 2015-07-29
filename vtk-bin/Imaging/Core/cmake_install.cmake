# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkImagingCore-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkImagingCore-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkImagingCore-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Core/CMakeFiles/vtkImagingCore.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageStencilIterator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkExtractVOI.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageAppendComponents.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageBlend.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageCacheFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageCast.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageChangeInformation.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageClip.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageConstantPad.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageDataStreamer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageDecomposeFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageDifference.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageExtractComponents.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageFlip.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageIterateFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageMagnify.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageMapToColors.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageMask.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageMirrorPad.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImagePadFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImagePermute.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageResample.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageReslice.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageResliceToColors.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageShiftScale.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageShrink3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageThreshold.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageTranslateExtent.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageWrapPad.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkRTAnalyticSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageResize.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageBSplineCoefficients.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageStencilData.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageStencilAlgorithm.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkAbstractImageInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageBSplineInternals.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageBSplineInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageSincInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageInterpolator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Imaging/Core/vtkImageStencilSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Core/vtkImagingCoreModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

