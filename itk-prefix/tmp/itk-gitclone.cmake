if("8d58556089399c11d51795d46d6b17c355af95dc" STREQUAL "")
  message(FATAL_ERROR "Tag for git checkout should not be empty.")
endif()

set(run 0)

if("/home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-gitinfo.txt" IS_NEWER_THAN "/home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-gitclone-lastrun.txt")
  set(run 1)
endif()

if(NOT run)
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E remove_directory "/home/snr/Support/Plus-build-codeblocks/itk"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/home/snr/Support/Plus-build-codeblocks/itk'")
endif()

# try the clone 3 times incase there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git" clone "git://itk.org/ITK.git" "itk"
    WORKING_DIRECTORY "/home/snr/Support/Plus-build-codeblocks"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'git://itk.org/ITK.git'")
endif()

execute_process(
  COMMAND "/usr/bin/git" checkout 8d58556089399c11d51795d46d6b17c355af95dc
  WORKING_DIRECTORY "/home/snr/Support/Plus-build-codeblocks/itk"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '8d58556089399c11d51795d46d6b17c355af95dc'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule init
  WORKING_DIRECTORY "/home/snr/Support/Plus-build-codeblocks/itk"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to init submodules in: '/home/snr/Support/Plus-build-codeblocks/itk'")
endif()

execute_process(
  COMMAND "/usr/bin/git" submodule update --recursive
  WORKING_DIRECTORY "/home/snr/Support/Plus-build-codeblocks/itk"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/home/snr/Support/Plus-build-codeblocks/itk'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-gitinfo.txt"
    "/home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-gitclone-lastrun.txt"
  WORKING_DIRECTORY "/home/snr/Support/Plus-build-codeblocks/itk"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/home/snr/Support/Plus-build-codeblocks/itk-prefix/src/itk-stamp/itk-gitclone-lastrun.txt'")
endif()
