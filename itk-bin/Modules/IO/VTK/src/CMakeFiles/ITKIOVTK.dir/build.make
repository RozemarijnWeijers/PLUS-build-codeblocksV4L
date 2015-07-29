# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/bin/cmake-gui

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/snr/Support/Plus-build-codeblocks/itk

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/snr/Support/Plus-build-codeblocks/itk-bin

# Include any dependencies generated for this target.
include Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/depend.make

# Include the progress variables for this target.
include Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/flags.make

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/flags.make
Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o: /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/VTK/src/itkVTKImageIOFactory.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/itk-bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o -c /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/VTK/src/itkVTKImageIOFactory.cxx

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.i"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/VTK/src/itkVTKImageIOFactory.cxx > CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.i

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.s"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/VTK/src/itkVTKImageIOFactory.cxx -o CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.s

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o.requires:
.PHONY : Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o.requires

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o.provides: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o.requires
	$(MAKE) -f Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/build.make Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o.provides.build
.PHONY : Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o.provides

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o.provides.build: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/flags.make
Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o: /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/VTK/src/itkVTKImageIO.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/itk-bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o -c /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/VTK/src/itkVTKImageIO.cxx

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.i"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/VTK/src/itkVTKImageIO.cxx > CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.i

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.s"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/VTK/src/itkVTKImageIO.cxx -o CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.s

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o.requires:
.PHONY : Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o.requires

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o.provides: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o.requires
	$(MAKE) -f Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/build.make Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o.provides.build
.PHONY : Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o.provides

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o.provides.build: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o

# Object files for target ITKIOVTK
ITKIOVTK_OBJECTS = \
"CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o" \
"CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o"

# External object files for target ITKIOVTK
ITKIOVTK_EXTERNAL_OBJECTS =

lib/libITKIOVTK-4.7.so.1: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o
lib/libITKIOVTK-4.7.so.1: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o
lib/libITKIOVTK-4.7.so.1: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/build.make
lib/libITKIOVTK-4.7.so.1: lib/libITKIOImageBase-4.7.so.1
lib/libITKIOVTK-4.7.so.1: lib/libITKCommon-4.7.so.1
lib/libITKIOVTK-4.7.so.1: lib/libitksys-4.7.so.1
lib/libITKIOVTK-4.7.so.1: lib/libITKVNLInstantiation-4.7.so.1
lib/libITKIOVTK-4.7.so.1: lib/libitkvnl_algo-4.7.so.1
lib/libITKIOVTK-4.7.so.1: lib/libitkv3p_lsqr-4.7.so.1
lib/libITKIOVTK-4.7.so.1: lib/libitkvnl-4.7.so.1
lib/libITKIOVTK-4.7.so.1: lib/libitkvcl-4.7.so.1
lib/libITKIOVTK-4.7.so.1: lib/libitkv3p_netlib-4.7.so.1
lib/libITKIOVTK-4.7.so.1: lib/libitkdouble-conversion-4.7.so.1
lib/libITKIOVTK-4.7.so.1: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../../../lib/libITKIOVTK-4.7.so"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ITKIOVTK.dir/link.txt --verbose=$(VERBOSE)
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../../lib/libITKIOVTK-4.7.so.1 ../../../../lib/libITKIOVTK-4.7.so.1 ../../../../lib/libITKIOVTK-4.7.so

lib/libITKIOVTK-4.7.so: lib/libITKIOVTK-4.7.so.1

# Rule to build all files generated by this target.
Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/build: lib/libITKIOVTK-4.7.so
.PHONY : Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/build

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/requires: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIOFactory.cxx.o.requires
Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/requires: Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/itkVTKImageIO.cxx.o.requires
.PHONY : Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/requires

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/clean:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKIOVTK.dir/cmake_clean.cmake
.PHONY : Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/clean

Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/depend:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snr/Support/Plus-build-codeblocks/itk /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/VTK/src /home/snr/Support/Plus-build-codeblocks/itk-bin /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/IO/VTK/src/CMakeFiles/ITKIOVTK.dir/depend
