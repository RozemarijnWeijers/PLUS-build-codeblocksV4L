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
  struct buffer {
        void *                  start;
        size_t                  length;
  };

  static vtkLinuxVideoSource *New();
  vtkTypeMacro(vtkLinuxVideoSource,vtkPlusDevice);
  void PrintSelf(ostream& os, vtkIndent indent);

  /*! Read configuration from xml data */  //from epiphan
  virtual PlusStatus ReadConfiguration(vtkXMLDataElement* rootConfigElement);

  /*! Verify the device is correctly configured */
  virtual PlusStatus NotifyConfigured();

  virtual bool IsTracker() const { return false; }

  PlusStatus SetChannel(int device_channel);

  PlusStatus SetCropHeight(int crop_heigth);

  PlusStatus SetCropWidth(int crop_width);

protected:

  /*! Constructor */
  vtkLinuxVideoSource();
  /*! Destructor */
  ~vtkLinuxVideoSource();

  /*! Device-specific connect */
  virtual PlusStatus InternalConnect();

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

  vtkLinuxVideoSourceInternal *Internal;
  int FrameIndex;
  int VideoMode; //NTSC == 1, PAL == 2 //added
  int FrameSize[3];
  int fd; //added
  int channel;

private:
  char dev_name[256]; //added
  int crop_h;
  int crop_w;
  struct buffer*  buffers; //added
  struct v4lconvert_data *v4lconvert_data; //added
  unsigned int  n_buffers; //added
  unsigned char *dst_buf= NULL; //added  IS DEZE NODIG?

  void OpenDevice(void); //added
  void CloseDevice(void); //added
  void InitDevice(); //added void??
  void InitMmap(void); //added
  void UninitDevice(void); //added
  PlusStatus ProcessImage (void *buffers_start, int buffers_size);
  PlusStatus ReadFrame();
  int xioctl(int fd, int request, void *arg); //added
  void errno_exit (const char *s); //added
};

#endif
