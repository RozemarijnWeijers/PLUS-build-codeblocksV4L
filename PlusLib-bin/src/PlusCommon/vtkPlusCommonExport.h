/*=Plus=header=begin======================================================
  Program: Plus
  Copyright (c) Laboratory for Percutaneous Surgery. All rights reserved.
  See License.txt for details.
=========================================================Plus=header=end*/

// This file is automatically generated from PlusExport.h.in by GENERATE_EXPORT_DIRECTIVE_FILE macro.

// .NAME __vtkPlusCommonExport - manage Windows system differences
// .SECTION Description
// The __vtkPlusCommonExport manages DLL export syntax differences
// between different operating systems.

#ifndef __vtkPlusCommonExport_h
#define __vtkPlusCommonExport_h

#if defined(WIN32) && !defined(vtkPlusCommon_STATIC)
 #if defined(vtkPlusCommon_EXPORTS)
  #define vtkPlusCommonExport __declspec( dllexport )
 #else
  #define vtkPlusCommonExport __declspec( dllimport )
 #endif
#else
 #define vtkPlusCommonExport
#endif

#endif