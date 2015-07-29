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

# Utility rule file for ITKPolynomials-all.

# Include the progress variables for this target.
include Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/progress.make

Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all:

Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o: 
Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o: /home/snr/Support/Plus-build-codeblocks/itk/Modules/Numerics/Polynomials/src/itkMultivariateLegendrePolynomial.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/itk-bin/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Numerics/Polynomials && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o -c /home/snr/Support/Plus-build-codeblocks/itk/Modules/Numerics/Polynomials/src/itkMultivariateLegendrePolynomial.cxx

Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.i"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Numerics/Polynomials && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/snr/Support/Plus-build-codeblocks/itk/Modules/Numerics/Polynomials/src/itkMultivariateLegendrePolynomial.cxx > CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.i

Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.s"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Numerics/Polynomials && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/snr/Support/Plus-build-codeblocks/itk/Modules/Numerics/Polynomials/src/itkMultivariateLegendrePolynomial.cxx -o CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.s

Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o.requires:
.PHONY : Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o.requires

Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o.provides: Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o.requires
	$(MAKE) -f Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/build.make Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o.provides.build
.PHONY : Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o.provides

Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o.provides.build: Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/src/itkMultivariateLegendrePolynomial.cxx.o

ITKPolynomials-all: Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all
ITKPolynomials-all: Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/build.make
.PHONY : ITKPolynomials-all

# Rule to build all files generated by this target.
Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/build: ITKPolynomials-all
.PHONY : Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/build

Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/clean:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Numerics/Polynomials && $(CMAKE_COMMAND) -P CMakeFiles/ITKPolynomials-all.dir/cmake_clean.cmake
.PHONY : Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/clean

Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/depend:
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snr/Support/Plus-build-codeblocks/itk /home/snr/Support/Plus-build-codeblocks/itk/Modules/Numerics/Polynomials /home/snr/Support/Plus-build-codeblocks/itk-bin /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Numerics/Polynomials /home/snr/Support/Plus-build-codeblocks/itk-bin/Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : Modules/Numerics/Polynomials/CMakeFiles/ITKPolynomials-all.dir/depend

