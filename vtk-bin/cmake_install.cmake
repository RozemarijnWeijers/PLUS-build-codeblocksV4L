# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/CMakeFiles/VTKConfig.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/VTKConfigVersion.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/exportheader.cmake.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/GenerateExportHeader.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/pythonmodules.h.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/UseVTK.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/FindTCL.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/TopologicalSort.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkTclTkMacros.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtk-forward.c.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkGroups.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkForwardingExecutable.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkJavaWrapping.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkMakeInstantiator.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkMakeInstantiator.cxx.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkMakeInstantiator.h.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkModuleAPI.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkModuleHeaders.cmake.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkModuleInfo.cmake.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkModuleMacros.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkModuleMacrosPython.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkMPI.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkExternalModuleMacros.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkObjectFactory.cxx.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkObjectFactory.h.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkPythonPackages.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkPythonWrapping.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkTclWrapping.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkThirdParty.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkWrapHierarchy.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkWrapJava.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkWrapperInit.data.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkWrapping.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkWrapPython.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkWrapPythonSIP.cmake"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkWrapPython.sip.in"
    "/home/snr/Support/Plus-build-codeblocks/vtk/CMake/vtkWrapTcl.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/VTKTargets.cmake")
    FILE(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/VTKTargets.cmake"
         "/home/snr/Support/Plus-build-codeblocks/vtk-bin/CMakeFiles/Export/lib/cmake/vtk-6.2/VTKTargets.cmake")
    IF(EXPORT_FILE_CHANGED)
      FILE(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/VTKTargets-*.cmake")
      IF(OLD_CONFIG_FILES)
        MESSAGE(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/VTKTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        FILE(REMOVE ${OLD_CONFIG_FILES})
      ENDIF(OLD_CONFIG_FILES)
    ENDIF(EXPORT_FILE_CHANGED)
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/CMakeFiles/Export/lib/cmake/vtk-6.2/VTKTargets.cmake")
  IF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/CMakeFiles/Export/lib/cmake/vtk-6.2/VTKTargets-debug.cmake")
  ENDIF("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Utilities/KWSys/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/Math/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/Misc/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/System/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/Transforms/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/DataModel/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/Color/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/ExecutionModel/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Common/ComputationalGeometry/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/General/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Fourier/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/alglib/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Statistics/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Extraction/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Infovis/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Geometry/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Sources/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/zlib/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/freetype/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/ftgl/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/FreeType/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Context2D/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Charts/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Utilities/DICOMParser/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/jsoncpp/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Geometry/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/expat/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/XMLParser/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/XML/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Domains/Chemistry/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Legacy/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Utilities/HashSource/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Parallel/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/AMR/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/FlowPaths/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Generic/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Sources/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Hybrid/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/HyperTree/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/General/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Imaging/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Modeling/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Parallel/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/ParallelImaging/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Programmable/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/SMP/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Selection/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Texture/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/verdict/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Filters/Verdict/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Interaction/Style/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Utilities/MetaIO/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/jpeg/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/png/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/tiff/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Image/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Hybrid/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Utilities/ParseOGLExt/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Utilities/EncodeString/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/OpenGL/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/GUISupport/Qt/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/GUISupport/QtOpenGL/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/sqlite/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/SQL/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/GUISupport/QtSQL/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Infovis/Layout/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Label/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Color/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Annotation/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Volume/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Interaction/Widgets/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Views/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Views/Infovis/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Views/Qt/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/GUISupport/QtWebkit/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/libproj4/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Geovis/Core/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/hdf5/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/AMR/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/EnSight/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/netcdf/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/exodusII/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Exodus/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/ContextOpenGL/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/gl2ps/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/GL2PS/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Export/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Import/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/libxml2/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Infovis/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/LSDyna/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/MINC/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/ThirdParty/oggtheora/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Movie/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/NetCDF/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/PLY/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Parallel/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/ParallelXML/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Video/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Math/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Morphological/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Statistics/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Imaging/Stencil/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Interaction/Image/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/FreeTypeOpenGL/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Image/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LIC/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/LOD/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/Qt/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Rendering/VolumeOpenGL/cmake_install.cmake")
  INCLUDE("/home/snr/Support/Plus-build-codeblocks/vtk-bin/Views/Context2D/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

IF(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
ELSE(CMAKE_INSTALL_COMPONENT)
  SET(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
ENDIF(CMAKE_INSTALL_COMPONENT)

FILE(WRITE "/home/snr/Support/Plus-build-codeblocks/vtk-bin/${CMAKE_INSTALL_MANIFEST}" "")
FOREACH(file ${CMAKE_INSTALL_MANIFEST_FILES})
  FILE(APPEND "/home/snr/Support/Plus-build-codeblocks/vtk-bin/${CMAKE_INSTALL_MANIFEST}" "${file}\n")
ENDFOREACH(file)
