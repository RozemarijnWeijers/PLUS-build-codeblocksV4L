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

# Utility rule file for ITKHeaderTests.

# Include the progress variables for this target.
include CMakeFiles/ITKHeaderTests.dir/progress.make

CMakeFiles/ITKHeaderTests:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/itk-bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Regenerating and building the header tests."
	/usr/bin/cmake --build /home/snr/Support/Plus-build-codeblocks/itk-bin

ITKHeaderTests: CMakeFiles/ITKHeaderTests
ITKHeaderTests: CMakeFiles/ITKHeaderTests.dir/build.make
.PHONY : ITKHeaderTests

# Rule to build all files generated by this target.
CMakeFiles/ITKHeaderTests.dir/build: ITKHeaderTests
.PHONY : CMakeFiles/ITKHeaderTests.dir/build

CMakeFiles/ITKHeaderTests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ITKHeaderTests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ITKHeaderTests.dir/clean

CMakeFiles/ITKHeaderTests.dir/depend:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snr/Support/Plus-build-codeblocks/itk /home/snr/Support/Plus-build-codeblocks/itk /home/snr/Support/Plus-build-codeblocks/itk-bin /home/snr/Support/Plus-build-codeblocks/itk-bin /home/snr/Support/Plus-build-codeblocks/itk-bin/CMakeFiles/ITKHeaderTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ITKHeaderTests.dir/depend

