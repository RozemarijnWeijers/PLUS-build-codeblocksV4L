# Install script for directory: /home/snr/Support/Plus-build-codeblocks/vtk/IO/XML

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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-6.2.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkIOXML-6.2.so.1"
    "/home/snr/Support/Plus-build-codeblocks/bin/libvtkIOXML-6.2.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-6.2.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvtkIOXML-6.2.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vtk-6.2/Modules" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/XML/CMakeFiles/vtkIOXML.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vtk-6.2" TYPE FILE FILES
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkRTXMLPolyDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLCompositeDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLCompositeDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLDataSetWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLFileReadTester.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLGenericDataObjectReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLHierarchicalBoxDataFileConverter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLHierarchicalBoxDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLHierarchicalBoxDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLHierarchicalDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLHyperOctreeReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLHyperOctreeWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLImageDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLImageDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLMultiBlockDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLMultiBlockDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLMultiGroupDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPImageDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPolyDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPolyDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPPolyDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPRectilinearGridReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPStructuredDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPStructuredGridReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPUnstructuredDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLPUnstructuredGridReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLRectilinearGridReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLRectilinearGridWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLStructuredDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLStructuredDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLStructuredGridReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLStructuredGridWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLUniformGridAMRReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLUniformGridAMRWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLUnstructuredDataReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLUnstructuredDataWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLUnstructuredGridReader.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLUnstructuredGridWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLWriterC.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk/IO/XML/vtkXMLWriter.h"
    "/home/snr/Support/Plus-build-codeblocks/vtk-bin/IO/XML/vtkIOXMLModule.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

