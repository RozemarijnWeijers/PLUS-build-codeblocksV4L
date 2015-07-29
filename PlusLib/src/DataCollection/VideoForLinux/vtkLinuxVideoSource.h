/*=Plus=header=begin======================================================
  Program: Plus
  Copyright (c) Laboratory for Percutaneous Surgery. All rights reserved.
  See License.txt for details.
=========================================================Plus=header=end*/

/*=========================================================================
The following copyright notice is applicable to parts of this file:
Copyright (c) Ken Martin, Will Schroeder, Bill Lorensen
All rights reserved.
See Copyright.txt or http://www.kitware.com/Copyright.htm for details.
Authors include: Danielle Pace
(Robarts Research Institute and The University of Western Ontario)
=========================================================================*/

#ifndef __vtkLinuxVideoSource_h
#define __vtkLinuxVideoSource_h

#include "vtkDataCollectionExport.h"

#include "vtkPlusDevice.h"
#include "PlusVideoFrame.h"

class vtkLinuxVideoSourceInternal;

/*!
  \class vtkLinuxVideoSource
  \brief Video-for-Linux video digitizer

  vtkLinuxVideoSource grabs frames or streaming video from a
  Video for Linux compatible device on the Linux platform.
  vtkLinuxVideoSource is an updated version of vtkLinuxVideoSource and uses
  vtkPlusDevice instead of vtkVideoSource.

  Caveats:
  With some capture cards, if this class is leaked and ReleaseSystemResources
  is not called, you may have to reboot before you can capture again.
  vtkPlusDevice used to keep a global list and delete the video sources
  if your program leaked, due to exit crashes that was removed.

  \sa vtkPlusDevice vtkMILVideoSource vtkLinuxVideoSource
  \ingroup PlusLibDataCollection
*/
class vtkDataCollectionExport vtkLinuxVideoSource : public vtkPlusDevice
{
public:
  typedef enum {        //added
    IO_METHOD_READ,
    IO_METHOD_MMAP,
    IO_METHOD_USERPTR,
  } io_method;
  struct buffer {       //added
        void *                  start;
        size_t                  length;
  };

  static vtkLinuxVideoSource *New();
  vtkTypeMacro(vtkLinuxVideoSource,vtkPlusDevice);
  void PrintSelf(ostream& os, vtkIndent indent);

  /*! Read configuration from xml data */  //from epiphan
  //virtual PlusStatus ReadConfiguration(vtkXMLDataElement* config);
  /*! Write configuration to xml data */  //from epiphan
  //virtual PlusStatus WriteConfiguration(vtkXMLDataElement* config);

  /*! Request a particular frame size */
  virtual PlusStatus SetFrameSize(int x, int y);

  /*! Request a particular frame rate (default 30 frames per second). */
  virtual PlusStatus SetAcquisitionRate(double rate);

  /*! Request a particular output format (default: VTK_RGB). */
  virtual PlusStatus SetOutputFormat(int format);

  /*! Turn on/off the preview (overlay) window. */
  void SetPreview(int showPreview);
  vtkBooleanMacro(Preview,int);
  /*! Get state of preview (overlay) window */
  vtkGetMacro(Preview,int);

  /*! Bring up a modal dialog box for video format selection. */
  PlusStatus VideoFormatDialog();

  /*! Bring up a modal dialog box for video input selection. */
  PlusStatus VideoSourceDialog();

  /*! Callback function called on parent window destroyed. Public to allow calling from static function. */
  void OnParentWndDestroy();

  /*! Adds a frame to the frame buffer. Called whenever the driver notified a new frame acquisition. Public to allow calling from static function. */
  PlusStatus AddFrameToBuffer(void *lpVideoHeader);

  /*! Verify the device is correctly configured */
  virtual PlusStatus NotifyConfigured();

  virtual bool IsTracker() const { return false; }

protected:

  /*! Constructor */
  vtkLinuxVideoSource();
  /*! Destructor */
  ~vtkLinuxVideoSource();

  /*! Device-specific connect */
  virtual PlusStatus InternalConnect();//(const char* device);

  /*! Device-specific disconnect */
  virtual PlusStatus InternalDisconnect();

  /*! Device-specific recording start */
  virtual PlusStatus InternalStartRecording();

  /*! Device-specific recording stop */
  virtual PlusStatus InternalStopRecording();

  /*!
    The internal function which actually grabs one frame.
    It just requests a single frame from the hardware and the object
    will be notified when it is ready.
  */
  virtual PlusStatus InternalUpdate();


  /*! Set the capture window class name */
  vtkSetStringMacro(WndClassName);

  char* WndClassName;
  int Preview;
  int Initialized; //added
  int DeviceInitialized; //added
  int FrameIndex;
  int VideoMode; //NTSC == 1, PAL == 2 //added
  int FrameSize[3]; //added

  vtkLinuxVideoSourceInternal *Internal;

  /*! Update the buffer format to match the capture settings */
  PlusStatus UpdateFrameBuffer();

  void ReleaseSystemResources();

  PlusVideoFrame UncompressedVideoFrame;

private:
  static char dev_name[256]; //added
  static int fd; //added
  struct buffer *  buffers; //added
  static unsigned int  n_buffers; //added
  static io_method io; //added

  int xioctl(int fd, int request, void *arg); //added

  void OpenDevice(void); //added
  void CloseDevice(void); //added
  void InitDevice(); //added void??
  void InitMmap(void); //added
  void UninitDevice(void); //added

  void errno_exit (const char *s); //added

//private:
  //vtkLinuxVideoSource(const vtkLinuxVideoSource&);  // Not implemented.
  //void operator=(const vtkLinuxVideoSource&);  // Not implemented.
};

#endif
