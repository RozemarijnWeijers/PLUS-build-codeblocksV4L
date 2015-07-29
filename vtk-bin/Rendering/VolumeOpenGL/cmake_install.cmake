# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolumeOpenGL-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolumeOpenGL-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingVolumeOpenGL-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkRenderingVolumeOpenGL-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolumeOpenGL-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkRenderingVolumeOpenGL-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/CMakeFiles/vtkRenderingVolumeOpenGL.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL/vtkOpenGLHAVSVolumeMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL/vtkOpenGLProjectedAAHexahedraMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL/vtkOpenGLProjectedTetrahedraMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL/vtkOpenGLRayCastImageDisplayHelper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL/vtkOpenGLVolumeTextureMapper2D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL/vtkOpenGLVolumeTextureMapper3D.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL/vtkSmartVolumeMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/Rendering/VolumeOpenGL/vtkOpenGLGPUVolumeRayCastMapper.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_AdditiveFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_AdditiveCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_AdditiveNoCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_CompositeFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_CompositeMaskFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_CompositeBinaryMaskFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_CompositeCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_CompositeNoCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_HeaderFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MIPCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MIPFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MIPBinaryMaskFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MIPFourDependentFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MIPFourDependentCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MIPFourDependentNoCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MIPNoCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MinIPCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MinIPFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MinIPBinaryMaskFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MinIPFourDependentFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MinIPFourDependentCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MinIPFourDependentNoCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_MinIPNoCroppingFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_ParallelProjectionFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_PerspectiveProjectionFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_ScaleBiasFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_OneComponentFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_FourComponentsFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_NoShadeFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkGPUVolumeRayCastMapper_ShadeFS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkHAVSVolumeMapper_kbufferVP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkHAVSVolumeMapper_k2FP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkHAVSVolumeMapper_k2BeginFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkHAVSVolumeMapper_k2EndFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkHAVSVolumeMapper_k6FP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkHAVSVolumeMapper_k6BeginFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkHAVSVolumeMapper_k6EndFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkProjectedAAHexahedraMapper_VS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkProjectedAAHexahedraMapper_GS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkProjectedAAHexahedraMapper_FS.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkVolumeTextureMapper3D_FourDependentNoShadeFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkVolumeTextureMapper3D_FourDependentShadeFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkVolumeTextureMapper3D_OneComponentNoShadeFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkVolumeTextureMapper3D_OneComponentShadeFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkVolumeTextureMapper3D_TwoDependentNoShadeFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkVolumeTextureMapper3D_TwoDependentShadeFP.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkRenderingVolumeOpenGLObjectFactory.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/vtkRenderingVolumeOpenGLModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

