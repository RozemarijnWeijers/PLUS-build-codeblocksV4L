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
CMAKE_SOURCE_DIR = /home/snr/Support/Plus-build-codeblocks/PlusLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/snr/Support/Plus-build-codeblocks/PlusLib-bin

# Include any dependencies generated for this target.
include src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/depend.make

# Include the progress variables for this target.
include src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/progress.make

# Include the compile flags for this target's objects.
include src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/flags.make

src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o: src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/flags.make
src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o: /home/snr/Support/Plus-build-codeblocks/PlusLib/src/Utilities/Ransac/Examples/planeEstimation.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o"
	cd /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/Ransac && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o -c /home/snr/Support/Plus-build-codeblocks/PlusLib/src/Utilities/Ransac/Examples/planeEstimation.cxx

src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.i"
	cd /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/Ransac && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/snr/Support/Plus-build-codeblocks/PlusLib/src/Utilities/Ransac/Examples/planeEstimation.cxx > CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.i

src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.s"
	cd /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/Ransac && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/snr/Support/Plus-build-codeblocks/PlusLib/src/Utilities/Ransac/Examples/planeEstimation.cxx -o CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.s

src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o.requires:
.PHONY : src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o.requires

src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o.provides: src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o.requires
	$(MAKE) -f src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/build.make src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o.provides.build
.PHONY : src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o.provides

src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o.provides.build: src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o

# Object files for target planeEstimation
planeEstimation_OBJECTS = \
"CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o"

# External object files for target planeEstimation
planeEstimation_EXTERNAL_OBJECTS =

/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/build.make
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libITKCommon-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkvnl-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkvnl_algo-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitksys-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libITKVNLInstantiation-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkvnl_algo-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkvnl-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkvcl-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkv3p_lsqr-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkv3p_netlib-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: /home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkdouble-conversion-4.7.so.1
/home/snr/Support/Plus-build-codeblocks/bin/planeEstimation: src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable /home/snr/Support/Plus-build-codeblocks/bin/planeEstimation"
	cd /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/Ransac && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/planeEstimation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/build: /home/snr/Support/Plus-build-codeblocks/bin/planeEstimation
.PHONY : src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/build

src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/requires: src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/Examples/planeEstimation.cxx.o.requires
.PHONY : src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/requires

src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/clean:
	cd /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/Ransac && $(CMAKE_COMMAND) -P CMakeFiles/planeEstimation.dir/cmake_clean.cmake
.PHONY : src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/clean

src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/depend:
	cd /home/snr/Support/Plus-build-codeblocks/PlusLib-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snr/Support/Plus-build-codeblocks/PlusLib /home/snr/Support/Plus-build-codeblocks/PlusLib/src/Utilities/Ransac /home/snr/Support/Plus-build-codeblocks/PlusLib-bin /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/Ransac /home/snr/Support/Plus-build-codeblocks/PlusLib-bin/src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/Utilities/Ransac/CMakeFiles/planeEstimation.dir/depend

