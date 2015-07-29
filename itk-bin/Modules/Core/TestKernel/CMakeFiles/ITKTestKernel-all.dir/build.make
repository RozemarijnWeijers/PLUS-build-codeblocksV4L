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

# Utility rule file for ITKTestKernel-all.

# Include the progress variables for this target.
include Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/progress.make

Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all:

Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o: 
Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o: /home/snr/Support/Plus-build-codeblocks/itk/Modules/Core/TestKernel/src/itkTestDriver.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/itk-bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Core/TestKernel && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o -c /home/snr/Support/Plus-build-codeblocks/itk/Modules/Core/TestKernel/src/itkTestDriver.cxx

Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.i"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Core/TestKernel && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/snr/Support/Plus-build-codeblocks/itk/Modules/Core/TestKernel/src/itkTestDriver.cxx > CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.i

Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.s"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Core/TestKernel && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/snr/Support/Plus-build-codeblocks/itk/Modules/Core/TestKernel/src/itkTestDriver.cxx -o CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.s

Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o.requires:
.PHONY : Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o.requires

Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o.provides: Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o.requires
	$(MAKE) -f Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/build.make Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o.provides.build
.PHONY : Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o.provides

Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o.provides.build: Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/src/itkTestDriver.cxx.o

ITKTestKernel-all: Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all
ITKTestKernel-all: Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/build.make
.PHONY : ITKTestKernel-all

# Rule to build all files generated by this target.
Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/build: ITKTestKernel-all
.PHONY : Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/build

Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/clean:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Core/TestKernel && $(CMAKE_COMMAND) -P CMakeFiles/ITKTestKernel-all.dir/cmake_clean.cmake
.PHONY : Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/clean

Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/depend:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snr/Support/Plus-build-codeblocks/itk /home/snr/Support/Plus-build-codeblocks/itk/Modules/Core/TestKernel /home/snr/Support/Plus-build-codeblocks/itk-bin /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Core/TestKernel /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/Core/TestKernel/CMakeFiles/ITKTestKernel-all.dir/depend

