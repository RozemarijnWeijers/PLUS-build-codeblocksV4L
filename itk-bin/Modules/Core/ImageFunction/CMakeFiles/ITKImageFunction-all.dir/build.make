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

# Utility rule file for ITKImageFunction-all.

# Include the progress variables for this target.
include Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all.dir/progress.make

Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all:

ITKImageFunction-all: Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all
ITKImageFunction-all: Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all.dir/build.make
.PHONY : ITKImageFunction-all

# Rule to build all files generated by this target.
Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all.dir/build: ITKImageFunction-all
.PHONY : Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all.dir/build

Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all.dir/clean:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Core/ImageFunction && $(CMAKE_COMMAND) -P CMakeFiles/ITKImageFunction-all.dir/cmake_clean.cmake
.PHONY : Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all.dir/clean

Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all.dir/depend:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snr/Support/Plus-build-codeblocks/itk /home/snr/Support/Plus-build-codeblocks/itk/Modules/Core/ImageFunction /home/snr/Support/Plus-build-codeblocks/itk-bin /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Core/ImageFunction /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/Core/ImageFunction/CMakeFiles/ITKImageFunction-all.dir/depend
