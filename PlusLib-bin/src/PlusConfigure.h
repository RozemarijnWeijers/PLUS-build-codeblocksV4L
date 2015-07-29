/*=Plus=header=begin======================================================
  Program: Plus
  Copyright (c) Laboratory for Percutaneous Surgery. All rights reserved.
  See License.txt for details.
=========================================================Plus=header=end*/

// This file stores values determined during CMake configuration and
// includes commonly needed header files.
// This file has to be the first include in Plus cxx files.

#ifndef __PlusConfigure_h
#define __PlusConfigure_h

#ifdef _WIN32_WINNT
#undef _WIN32_WINNT
#endif
#define _WIN32_WINNT 

// disable warnings for sprintf
#define _CRT_SECURE_NO_WARNINGS
// disable warnings for std::copy
#define _SCL_SECURE_NO_WARNINGS

#if defined(_WIN32) && !defined(VTKSLICER_STATIC)
  #pragma warning ( disable : 4275 )
#endif

#if defined(_MSC_VER)
  #pragma warning ( disable : 4786 )
#endif

#define PLUS_USE_OpenIGTLink

#define BUILD_SHARED_LIBS

#ifndef BUILD_SHARED_LIBS

  #define VTKSLICER_STATIC

#endif

#define PLUSLIB_VERSION "2.3.0"
#define PLUSLIB_VERSION_MAJOR 2
#define PLUSLIB_VERSION_MINOR 3
#define PLUSLIB_VERSION_PATCH 0
#define DATA_PATH ""

// OpenIGTLink does not define version in header file
// therefore we need to add the version information in Plus
#define OPENIGTLINK_VERSION_MAJOR 1
#define OPENIGTLINK_VERSION_MINOR 10
#define OPENIGTLINK_VERSION_PATCH 10
#define OPENIGTLINK_VERSION "1.10.10"

// For VTK 6 and later include the header file that defines
// VTK version (VTK_MAJOR_VERSION, VTK_MINOR_VERSION, etc.)
// In earlier VTK releases, the version information was included
// in vtkConfigure.h, therefore no additional include was needed.
#if (6 >= 6)  
  #include "vtkVersionMacros.h"
#endif

// filter->SetInput was renamed to filter->SetInputData in VTK6
// The SetInputData_vtk5compatible macro can be used with both VTK5 and VTK6.
// When VTK5 support will be dropped this macro should be removed.
#if (VTK_MAJOR_VERSION < 6)
  #define SetInputData_vtk5compatible SetInput
#else
  #define SetInputData_vtk5compatible SetInputData
#endif

/* #undef PLUS_USE_3dConnexion_TRACKER */
/* #undef PLUS_USE_Ascension3DG */
/* #undef PLUS_USE_Ascension3DGm */

/* #undef PLUS_USE_BKPROFOCUS_CAMERALINK */
/* #undef PLUS_USE_BKPROFOCUS_VIDEO */
/* #undef PLUS_TEST_BKPROFOCUS */
/* #undef PLUS_USE_BRACHY_TRACKER */
/* #undef PLUS_USE_CERTUS */
/* #undef PLUS_USE_EPIPHAN */
/* #undef PLUS_USE_ICCAPTURING_VIDEO */
/* #undef PLUS_USE_CAPISTRANO_VIDEO */
/* #undef PLUS_USE_INTERSON_VIDEO */
/* #undef PLUS_USE_INTERSONSDKCXX_VIDEO */
/* #undef PLUS_USE_MICRONTRACKER */
/* #undef PLUS_USE_MMF_VIDEO */
/* #undef PLUS_USE_TELEMED_VIDEO */
/* #undef PLUS_USE_THORLABS_VIDEO */
/* #undef PLUS_USE_PHIDGET_SPATIAL_TRACKER */
/* #undef PLUS_USE_POLARIS */
/* #undef PLUS_USE_ULTRASONIX_VIDEO */
/* #undef PLUS_USE_VFW_VIDEO */
/* #undef PLUS_USE_STEALTHLINK */
/* #undef PLUS_USE_IntuitiveDaVinci */
/* #undef PLUS_USE_PHILIPS_3D_ULTRASOUND */

/* #undef PLUS_USE_SIMPLE_TIMER */

#define PLUS_ULTRASONIX_SDK_MAJOR_VERSION 
#define PLUS_ULTRASONIX_SDK_MINOR_VERSION 
#define PLUS_ULTRASONIX_SDK_PATCH_VERSION 

#undef DO_CALIBRATION_FILE_CALCULATIONS

//High tolerance defined for to use in calibration tests in order to pass under linux (see #590)
#define LINUXTOLERANCE 0.5
#define LINUXTOLERANCEPERCENT 8

// Frequently needed STL includes
#include <strstream>
#include <iostream>

// Frequently needed VTK includes
#include "vtkSmartPointer.h"
#include "vtkObjectFactory.h"

// Frequently needed Plus includes
#include "vtkAccurateTimer.h"
#include "PlusCommon.h"
#include "vtkPlusLogger.h"
#include "vtkPlusConfig.h"
 
#endif // __PlusConfigure_h