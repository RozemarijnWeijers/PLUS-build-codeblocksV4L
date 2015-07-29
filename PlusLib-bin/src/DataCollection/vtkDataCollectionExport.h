/*=Plus=header=begin======================================================
  Program: Plus
  Copyright (c) Laboratory for Percutaneous Surgery. All rights reserved.
  See License.txt for details.
=========================================================Plus=header=end*/

// This file is automatically generated from PlusExport.h.in by GENERATE_EXPORT_DIRECTIVE_FILE macro.

// .NAME __vtkDataCollectionExport - manage Windows system differences
// .SECTION Description
// The __vtkDataCollectionExport manages DLL export syntax differences
// between different operating systems.

#ifndef __vtkDataCollectionExport_h
#define __vtkDataCollectionExport_h

#if defined(WIN32) && !defined(vtkDataCollection_STATIC)
 #if defined(vtkDataCollection_EXPORTS)
  #define vtkDataCollectionExport __declspec( dllexport )
 #else
  #define vtkDataCollectionExport __declspec( dllimport )
 #endif
#else
 #define vtkDataCollectionExport
#endif

#endif
