# Install script for directory: /home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo

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
    SET(CMAKE_INSTALL_CONFIG_NAME "Release")
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
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkvnl_algo-4.7.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkvnl_algo-4.7.so"
      )
    IF(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      FILE(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    ENDIF()
  ENDFOREACH()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkvnl_algo-4.7.so.1"
    "/home/snr/Support/Plus-build-codeblocks/itk-bin/lib/libitkvnl_algo-4.7.so"
    )
  FOREACH(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkvnl_algo-4.7.so.1"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libitkvnl_algo-4.7.so"
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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/dll.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_algo_fwd.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_netlib.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_svd.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_svd.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_svd_economy.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_svd_economy.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_svd_fixed.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_svd_fixed.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_matrix_inverse.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_matrix_inverse.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_qr.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_qr.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_scatter_3x3.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_scatter_3x3.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_cholesky.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_ldl_cholesky.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_sparse_lu.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_real_eigensystem.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_complex_eigensystem.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_symmetric_eigensystem.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_symmetric_eigensystem.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_generalized_eigensystem.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_sparse_symmetric_eigensystem.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_generalized_schur.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_complex_generalized_schur.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_discrete_diff.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_levenberg_marquardt.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_sparse_lm.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_conjugate_gradient.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_lbfgs.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_lbfgsb.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_amoeba.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_powell.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_brent.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_lsqr.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_solve_qp.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_bracket_minimum.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_brent_minimizer.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_cpoly_roots.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_rnpoly_solve.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fit_parabola.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fft.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fft_base.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fft_base.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fft_1d.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fft_1d.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fft_2d.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fft_2d.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fft_prime_factors.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_fft_prime_factors.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_convolve.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_convolve.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_determinant.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_determinant.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_chi_squared.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_chi_squared.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_gaussian_kernel_1d.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_adjugate.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_adjugate.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_orthogonal_complement.txx")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_orthogonal_complement.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_matrix_update.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_simpson_integral.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/ITK-4.7/vnl/algo" TYPE FILE FILES "/home/snr/Support/Plus-build-codeblocks/itk/Modules/ThirdParty/VNL/src/vxl/core/vnl/algo/vnl_adaptsimpson_integral.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Development")
