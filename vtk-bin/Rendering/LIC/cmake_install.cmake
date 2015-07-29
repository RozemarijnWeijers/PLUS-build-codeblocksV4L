# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingLIC-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingLIC-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingLIC-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingLIC-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingLIC-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingLIC-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/CMakeFiles/vtkRenderingLIC.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC/vtkImageDataLIC2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC/vtkLineIntegralConvolution2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC/vtkPixelTransfer.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC/vtkStructuredGridLIC2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC/vtkSurfaceLICComposite.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC/vtkSurfaceLICDefaultPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC/vtkSurfaceLICPainter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/LIC/vtkTextureIO.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkLineIntegralConvolution2D_VT.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkLineIntegralConvolution2D_LIC0.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkLineIntegralConvolution2D_LICI.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkLineIntegralConvolution2D_LICN.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkLineIntegralConvolution2D_EE.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkLineIntegralConvolution2D_CE.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkLineIntegralConvolution2D_AAH.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkLineIntegralConvolution2D_AAV.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkStructuredGridLIC2D_fs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkSurfaceLICPainter_GeomVs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkSurfaceLICPainter_GeomFs.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkSurfaceLICPainter_SC.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkSurfaceLICPainter_CE.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkSurfaceLICPainter_DCpy.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/vtkRenderingLICModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

