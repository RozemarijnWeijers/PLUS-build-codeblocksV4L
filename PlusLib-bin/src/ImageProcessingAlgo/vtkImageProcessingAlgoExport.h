/*=Plus=header=begin======================================================
  Program: Plus
  Copyright (c) Laboratory for Percutaneous Surgery. All rights reserved.
  See License.txt for details.
=========================================================Plus=header=end*/

// This file is automatically generated from PlusExport.h.in by GENERATE_EXPORT_DIRECTIVE_FILE macro.

// .NAME __vtkImageProcessingAlgoExport - manage Windows system differences
// .SECTION Description
// The __vtkImageProcessingAlgoExport manages DLL export syntax differences
// between different operating systems.

#ifndef __vtkImageProcessingAlgoExport_h
#define __vtkImageProcessingAlgoExport_h

#if defined(WIN32) && !defined(vtkImageProcessingAlgo_STATIC)
 #if defined(vtkImageProcessingAlgo_EXPORTS)
  #define vtkImageProcessingAlgoExport __declspec( dllexport )
 #else
  #define vtkImageProcessingAlgoExport __declspec( dllimport )
 #endif
#else
 #define vtkImageProcessingAlgoExport
#endif

#endif