# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingVolume-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingVolume-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolume-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Volume/CMakeFiles/vtkRenderingVolume.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkDirectionEncoder.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkEncodedGradientEstimator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkEncodedGradientShader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkFiniteDifferenceGradientEstimator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkFixedPointRayCastImage.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeGOShadeHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastCompositeShadeHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastMIPHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkFixedPointVolumeRayCastMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkGPUVolumeRayCastMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkProjectedTetrahedraMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkRayCastImageDisplayHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkRecursiveSphereDirectionEncoder.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkSphericalDirectionEncoder.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridBunykRayCastFunction.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridHomogeneousRayIntegrator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridLinearRayIntegrator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridPartialPreIntegration.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridPreIntegration.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridVolumeMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridVolumeRayCastFunction.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridVolumeRayCastIterator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridVolumeRayCastMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridVolumeRayIntegrator.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkUnstructuredGridVolumeZSweepMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeOutlineSource.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumePicker.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeRayCastCompositeFunction.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeRayCastFunction.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeRayCastIsosurfaceFunction.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeRayCastMIPFunction.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeRayCastMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeRayCastSpaceLeapingImageFilter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkHAVSVolumeMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkProjectedAAHexahedraMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeTextureMapper2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeTextureMapper3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/Volume/vtkVolumeTextureMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Volume/vtkRenderingVolumeModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

