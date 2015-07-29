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
include Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/depend.make

# Include the progress variables for this target.
include Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/progress.make

# Include the compile flags for this target's objects.
include Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/flags.make

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/flags.make
Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o: /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/BioRad/src/itkBioRadImageIOFactory.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/itk-bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o -c /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/BioRad/src/itkBioRadImageIOFactory.cxx

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.i"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/BioRad/src/itkBioRadImageIOFactory.cxx > CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.i

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.s"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/BioRad/src/itkBioRadImageIOFactory.cxx -o CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.s

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o.requires:
.PHONY : Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o.requires

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o.provides: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o.requires
	$(MAKE) -f Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/build.make Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o.provides.build
.PHONY : Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o.provides

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o.provides.build: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/flags.make
Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o: /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/BioRad/src/itkBioRadImageIO.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/itk-bin/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o -c /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/BioRad/src/itkBioRadImageIO.cxx

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.i"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/BioRad/src/itkBioRadImageIO.cxx > CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.i

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.s"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/BioRad/src/itkBioRadImageIO.cxx -o CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.s

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o.requires:
.PHONY : Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o.requires

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o.provides: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o.requires
	$(MAKE) -f Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/build.make Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o.provides.build
.PHONY : Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o.provides

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o.provides.build: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o

# Object files for target ITKIOBioRad
ITKIOBioRad_OBJECTS = \
"CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o" \
"CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o"

# External object files for target ITKIOBioRad
ITKIOBioRad_EXTERNAL_OBJECTS =

lib/libITKIOBioRad-4.7.so.1: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o
lib/libITKIOBioRad-4.7.so.1: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o
lib/libITKIOBioRad-4.7.so.1: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/build.make
lib/libITKIOBioRad-4.7.so.1: lib/libITKIOImageBase-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: lib/libITKCommon-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: lib/libitksys-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: lib/libITKVNLInstantiation-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: lib/libitkvnl_algo-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: lib/libitkv3p_lsqr-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: lib/libitkvnl-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: lib/libitkvcl-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: lib/libitkv3p_netlib-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: lib/libitkdouble-conversion-4.7.so.1
lib/libITKIOBioRad-4.7.so.1: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../../../lib/libITKIOBioRad-4.7.so"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ITKIOBioRad.dir/link.txt --verbose=$(VERBOSE)
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src && $(CMAKE_COMMAND) -E cmake_symlink_library ../../../../lib/libITKIOBioRad-4.7.so.1 ../../../../lib/libITKIOBioRad-4.7.so.1 ../../../../lib/libITKIOBioRad-4.7.so

lib/libITKIOBioRad-4.7.so: lib/libITKIOBioRad-4.7.so.1

# Rule to build all files generated by this target.
Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/build: lib/libITKIOBioRad-4.7.so
.PHONY : Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/build

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/requires: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIOFactory.cxx.o.requires
Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/requires: Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/itkBioRadImageIO.cxx.o.requires
.PHONY : Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/requires

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/clean:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src && $(CMAKE_COMMAND) -P CMakeFiles/ITKIOBioRad.dir/cmake_clean.cmake
.PHONY : Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/clean

Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/depend:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snr/Support/Plus-build-codeblocks/itk /home/snr/Support/Plus-build-codeblocks/itk/Modules/IO/BioRad/src /home/snr/Support/Plus-build-codeblocks/itk-bin /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/IO/BioRad/src/CMakeFiles/ITKIOBioRad.dir/depend

