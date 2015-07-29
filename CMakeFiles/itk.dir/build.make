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
CMAKE_SOURCE_DIR = /home/snr/Support/Plus

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/snr/Support/Plus-build-codeblocks

# Utility rule file for itk.

# Include the progress variables for this target.
include CMakeFiles/itk.dir/progress.make

CMakeFiles/itk: CMakeFiles/itk-complete

CMakeFiles/itk-complete: itk-prefix/src/itk-stamp/itk-install
CMakeFiles/itk-complete: itk-prefix/src/itk-stamp/itk-mkdir
CMakeFiles/itk-complete: itk-prefix/src/itk-stamp/itk-download
CMakeFiles/itk-complete: itk-prefix/src/itk-stamp/itk-update
CMakeFiles/itk-complete: itk-prefix/src/itk-stamp/itk-patch
CMakeFiles/itk-complete: itk-prefix/src/itk-stamp/itk-configure
CMakeFiles/itk-complete: itk-prefix/src/itk-stamp/itk-build
CMakeFiles/itk-complete: itk-prefix/src/itk-stamp/itk-install
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Completed 'itk'"
	/usr/bin/cmake -E make_directory /home/snr/Support/Plus-build-codeblocks/CMakeFiles
	/usr/bin/cmake -E touch /home/snr/Support/Plus-build-codeblocks/CMakeFiles/itk-complete
	/usr/bin/cmake -E touch /home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-done

itk-prefix/src/itk-stamp/itk-install: itk-prefix/src/itk-stamp/itk-build
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No install step for 'itk'"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && /usr/bin/cmake -E touch /home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-install

itk-prefix/src/itk-stamp/itk-mkdir:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Creating directories for 'itk'"
	/usr/bin/cmake -E make_directory /home/snr/Support/Plus-build-codeblocks/itk
	/usr/bin/cmake -E make_directory /home/snr/Support/Plus-build-codeblocks/itk-bin
	/usr/bin/cmake -E make_directory /home/snr/Support/Plus-build-codeblocks/itk-prefix
	/usr/bin/cmake -E make_directory /home/snr/Support/Plus-build-codeblocks/itk-prefix/tmp
	/usr/bin/cmake -E make_directory /home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp
	/usr/bin/cmake -E make_directory /home/snr/Support/Plus-build-codeblocks/itk-prefix/src
	/usr/bin/cmake -E touch /home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-mkdir

itk-prefix/src/itk-stamp/itk-download: itk-prefix/src/itk-stamp/itk-gitinfo.txt
itk-prefix/src/itk-stamp/itk-download: itk-prefix/src/itk-stamp/itk-mkdir
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing download step (git clone) for 'itk'"
	/usr/bin/cmake -P /home/snr/Support/Plus-build-codeblocks/itk-prefix/tmp/itk-gitclone.cmake
	/usr/bin/cmake -E touch /home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-download

itk-prefix/src/itk-stamp/itk-update: itk-prefix/src/itk-stamp/itk-download
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing update step for 'itk'"
	cd /home/snr/Support/Plus-build-codeblocks/itk && /usr/bin/cmake -P /home/snr/Support/Plus-build-codeblocks/itk-prefix/tmp/itk-gitupdate.cmake

itk-prefix/src/itk-stamp/itk-patch: itk-prefix/src/itk-stamp/itk-download
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No patch step for 'itk'"
	/usr/bin/cmake -E touch /home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-patch

itk-prefix/src/itk-stamp/itk-configure: itk-prefix/tmp/itk-cfgcmd.txt
itk-prefix/src/itk-stamp/itk-configure: itk-prefix/src/itk-stamp/itk-update
itk-prefix/src/itk-stamp/itk-configure: itk-prefix/src/itk-stamp/itk-patch
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing configure step for 'itk'"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && /usr/bin/cmake -DCMAKE_BUILD_TYPE:STRING= -DCMAKE_RUNTIME_OUTPUT_DIRECTORY:STRING=/home/snr/Support/Plus-build-codeblocks/bin -DBUILD_SHARED_LIBS:BOOL=ON -DBUILD_TESTING:BOOL=OFF -DBUILD_EXAMPLES:BOOL=OFF -DITK_LEGACY_REMOVE:BOOL=ON -DKWSYS_USE_MD5:BOOL=ON -DITK_USE_REVIEW:BOOL=ON "-DCMAKE_CXX_FLAGS:STRING= " "-DCMAKE_C_FLAGS:STRING= " -DITK_LEGACY_REMOVE:BOOL=ON -DKWSYS_USE_MD5:BOOL=ON "-GCodeBlocks - Unix Makefiles" /home/snr/Support/Plus-build-codeblocks/itk
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && /usr/bin/cmake -E touch /home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-configure

itk-prefix/src/itk-stamp/itk-build: itk-prefix/src/itk-stamp/itk-configure
	$(CMAKE_COMMAND) -E cmake_progress_report /home/snr/Support/Plus-build-codeblocks/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing build step for 'itk'"
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && $(MAKE)
	cd /home/snr/Support/Plus-build-codeblocks/itk-bin && /usr/bin/cmake -E touch /home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-build

itk: CMakeFiles/itk
itk: CMakeFiles/itk-complete
itk: itk-prefix/src/itk-stamp/itk-install
itk: itk-prefix/src/itk-stamp/itk-mkdir
itk: itk-prefix/src/itk-stamp/itk-download
itk: itk-prefix/src/itk-stamp/itk-update
itk: itk-prefix/src/itk-stamp/itk-patch
itk: itk-prefix/src/itk-stamp/itk-configure
itk: itk-prefix/src/itk-stamp/itk-build
itk: CMakeFiles/itk.dir/build.make
.PHONY : itk

# Rule to build all files generated by this target.
CMakeFiles/itk.dir/build: itk
.PHONY : CMakeFiles/itk.dir/build

CMakeFiles/itk.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/itk.dir/cmake_clean.cmake
.PHONY : CMakeFiles/itk.dir/clean

CMakeFiles/itk.dir/depend:
	cd /home/snr/Support/Plus-build-codeblocks && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/snr/Support/Plus /home/snr/Support/Plus /home/snr/Support/Plus-build-codeblocks /home/snr/Support/Plus-build-codeblocks /home/snr/Support/Plus-build-codeblocks/CMakeFiles/itk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/itk.dir/depend

