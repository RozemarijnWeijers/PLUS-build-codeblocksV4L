# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkIOLegacy-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkIOLegacy-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOLegacy-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Legacy/CMakeFiles/vtkIOLegacy.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkCompositeDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkCompositeDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkDataObjectReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkDataObjectWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkDataSetReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkDataSetWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkGenericDataObjectReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkGenericDataObjectWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkGraphReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkGraphWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkPixelExtentIO.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkPolyDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkPolyDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkRectilinearGridReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkRectilinearGridWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkSimplePointsReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkSimplePointsWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkStructuredGridReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkStructuredGridWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkStructuredPointsReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkStructuredPointsWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkTableReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkTableWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkTreeReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkTreeWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkUnstructuredGridReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/Legacy/vtkUnstructuredGridWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/Legacy/vtkIOLegacyModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

