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
=========================================================================*/

//#include "PixelCodec.h"
#include "PlusConfigure.h"
#include "vtkObjectFactory.h"
#include "vtkPlusChannel.h"
#include "vtkPlusDataSource.h"
#include "vtkUnsignedCharArray.h"
#include "vtkLinuxVideoSource.h"  //added

#include "vtkImageData.h"       //added
#include "vtkCriticalSection.h"  //added
#include "vtkTimerLog.h"        //added
#include "vtkInformation.h"     //added
#include "vtkInformationVector.h"  //added
#include "vtkStreamingDemandDrivenPipeline.h"  //added
#include "vtkUnsignedCharArray.h"  //added
#include "vtksys/SystemTools.hxx"   //added

#include <ctype.h>

#include "linux/v4l2-common.h"  //added
#include "linux/videodev2.h"    //added
#include <linux/types.h>        //added
#include "vtkWindows.h"         //added

//New-Start
#include "vtkDataArray.h"
#include "vtkMultiThreader.h"
#include "vtkMutexLock.h"

#include <string.h> //added
#include <time.h>
#include <fcntl.h> //added
#include <errno.h> //added
#include <sys/ioctl.h> //added
#include <sys/stat.h> //added
#include <sys/mman.h> //added

// because of warnings in windows header push and pop the warning level
//#ifdef _MSC_VER
//#pragma warning (push, 3)
//#endif

//#include <vfw.h>
//#include <winuser.h>

/*#ifdef _MSC_VER
#pragma warning (pop)
#endif*/

class vtkLinuxVideoSourceInternal
{
public:
  //----------------------------------------------------------------------------
  vtkLinuxVideoSourceInternal()
  {
   // CapWnd = NULL;
   // ParentWnd = NULL;
   // BitMapInfoSize = 0;
    //BitMapInfoPtr = NULL;
  }
  //----------------------------------------------------------------------------
  virtual ~vtkLinuxVideoSourceInternal()
  {
    //delete [] (char *)(BitMapInfoPtr);
    //BitMapInfoPtr = NULL;
    //BitMapInfoSize = 0;
  }
  //----------------------------------------------------------------------------
  PlusStatus GetBitmapInfoFromCaptureDevice()
  {
    //if (CapWnd==NULL)
    //{
    //  LOG_ERROR("Cannot get bitmap info, capture window has not been created yet");
    //  return PLUS_FAIL;
    //}
    //int formatSize = capGetVideoFormatSize(CapWnd);
    //if (formatSize > this->BitMapInfoSize)
    //{
    //  delete [] ((char *)BitMapInfoPtr);
    //  BitMapInfoPtr = (LPBITMAPINFO) new char[formatSize];
    //  BitMapInfoSize = formatSize;
    //}
    //if (!capGetVideoFormat(CapWnd,BitMapInfoPtr,formatSize))
    //{
    //  LOG_ERROR("Cannot get bitmap info from capture window");
    //  return PLUS_FAIL;
    //}
    //return PLUS_SUCCESS;
  }
  //----------------------------------------------------------------------------
  PlusStatus SetBitmapInfoInCaptureDevice()
  {
    //if (!capSetVideoFormat(CapWnd,BitMapInfoPtr,BitMapInfoSize))
    //{
    //  LOG_ERROR("Cannot set bitmap video format for capture window");
    //  return PLUS_FAIL;
    //}
    //return PLUS_SUCCESS;
  }

  //HWND CapWnd;
  //HWND ParentWnd;
  //CAPSTATUS CapStatus;
  //CAPDRIVERCAPS CapDriverCaps;
  //CAPTUREPARMS CaptureParms;
  //LPBITMAPINFO BitMapInfoPtr;
  //int BitMapInfoSize;

};

vtkCxxRevisionMacro(vtkV4L2VideoSource, "$Revision: 1.0$"); //??
vtkStandardNewMacro(vtkLinuxVideoSource);

#if ( _MSC_VER >= 1300 ) // Visual studio .NET
#pragma warning ( disable : 4311 )
#pragma warning ( disable : 4312 )
/*#  define vtkGetWindowLong GetWindowLongPtr
#  define vtkSetWindowLong SetWindowLongPtr
#  define vtkGWL_USERDATA GWLP_USERDATA
#else // regular Visual studio
#  define vtkGetWindowLong GetWindowLong
#  define vtkSetWindowLong SetWindowLong
#  define vtkGWL_USERDATA GWL_USERDATA*/
#endif //
#define CLEAR(x) memset (&(x), 0, sizeof (x)) //added

char vtkLinuxVideoSource::dev_name[256]; //added
vtkLinuxVideoSource::io_method vtkLinuxVideoSource::io; //added
int vtkLinuxVideoSource::fd; //added
unsigned int vtkLinuxVideoSource::n_buffers; //added

//----------------------------------------------------------------------------
vtkLinuxVideoSource::vtkLinuxVideoSource() //constructor
: Internal(new vtkLinuxVideoSourceInternal)
, WndClassName(NULL)
, Preview(0)
, FrameIndex(0)
{
  this->RequireImageOrientationInConfiguration = true;
  this->Initialized=0;
  this->fd = -1;
  this->io = IO_METHOD_MMAP;
  this->DeviceInitialized=0;
  this->FrameSize[0] = 640;
  this->FrameSize[1] = 480;
  this->FrameSize[2] = 1;
  this->StartThreadForInternalUpdates=true;
  LOG_INFO("Constructed");
}

//----------------------------------------------------------------------------
vtkLinuxVideoSource::~vtkLinuxVideoSource()//destructor
{
  this->vtkLinuxVideoSource::ReleaseSystemResources();  //added

  //this->SetFrameBufferSize(0);                        //added
  //this->FrameBufferMutex->Delete();                   //added
  //this->PlayerThreader->Delete();                     //added

  delete this->Internal;
  this->Internal = NULL;
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::PrintSelf(ostream& os, vtkIndent indent)//needed?
{
  this->Superclass::PrintSelf(os,indent);
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalConnect()//const char* device)//virtual
{
  if (this->GetConnected())
  {
    // already connected
    return PLUS_SUCCESS;
  }
  LOG_INFO("start connecting");
  //SetVideoDevice
  strcpy(this->dev_name, "/dev/video1");//device); LATER DIFFERENT
  //dev_name = "/dev/video1";
  //io=IO_METHOD_MMAP; //added
  this->OpenDevice();
  this->InitDevice();
  this->DeviceInitialized = 1;

  if( this->GetNumberOfVideoSources() == 1 )
  {
  vtkPlusDataSource* aSource(NULL);
    if( this->GetFirstVideoSource(aSource) != PLUS_SUCCESS )
    {
      LOG_ERROR("Unable to retrieve the video source in the Linux device on channel " << (*this->OutputChannels.begin())->GetChannelId());
      return PLUS_FAIL;
    }
    else
    {
      US_IMAGE_TYPE imageType = aSource->GetImageType();
      aSource->SetPixelType(VTK_UNSIGNED_CHAR);
      aSource->SetNumberOfScalarComponents(imageType == US_IMG_RGB_COLOR ? 3 : 1);
      aSource->SetInputFrameSize(this->FrameSize);
    }
  }
  else
  {
    // Can only be 1 or 2, so we must have two video sources, most likely for biplane configuration
    vtkPlusDataSource* aSource(NULL);
    for( int i = 0; i < this->GetNumberOfVideoSources(); ++i )
    {
      if( this->GetVideoSourceByIndex(i, aSource) != PLUS_SUCCESS )
      {
        LOG_ERROR("Unable to retrieve the video source in the Epiphan device on channel " << (*this->OutputChannels.begin())->GetChannelId());
        return PLUS_FAIL;
      }

      US_IMAGE_TYPE imageType = aSource->GetImageType();
      aSource->SetPixelType(VTK_UNSIGNED_CHAR);
      aSource->SetNumberOfScalarComponents(imageType == US_IMG_RGB_COLOR ? 3 : 1);
      aSource->SetInputFrameSize(this->FrameSize);
    }
  }
  LOG_INFO("internalconnect");
  return PLUS_SUCCESS;
}

void vtkLinuxVideoSource::OpenDevice(void)//added
{
struct stat st;

 if (-1 == stat(dev_name, &st)) {
         fprintf(stderr, "Cannot identify '%s': %d, %s\n",
                  dev_name, errno, strerror(errno));
         exit(PLUS_FAIL);
 }

 if (!S_ISCHR(st.st_mode)) {
         fprintf(stderr, "%s is no device\n", dev_name);
         exit(PLUS_FAIL);
 }

fd = open (dev_name, O_RDWR | O_NONBLOCK, 0);


if (-1 == fd) {
    fprintf (stderr, "Cannot open '%s'",
       dev_name);
    exit (PLUS_FAIL);
    }
LOG_INFO("openedDevice");
}

void vtkLinuxVideoSource::InitDevice()//added void?
{
  struct v4l2_capability cap;
  struct v4l2_cropcap cropcap;
  struct v4l2_crop crop;
  struct v4l2_format fmt;
  unsigned int min;

  if (-1 == xioctl (fd, VIDIOC_QUERYCAP, &cap)) {
    if (EINVAL == errno) {
      fprintf (stderr, "%s is no V4L2 device\n",
         dev_name);
      exit (PLUS_FAIL);
    } else {
      errno_exit ("VIDIOC_QUERYCAP");
    }
  }

  if (!(cap.capabilities & V4L2_CAP_VIDEO_CAPTURE)) {
    fprintf (stderr, "%s is no video capture device\n",
       dev_name);
    exit (PLUS_FAIL);
  }

  switch (io) {
  case IO_METHOD_READ:
    if (!(cap.capabilities & V4L2_CAP_READWRITE)) {
      fprintf (stderr, "%s does not support read i/o\n",
         dev_name);
      exit (PLUS_FAIL); // added EXIT_FAILURE->PLUS_FAIL
    }

    break;

  case IO_METHOD_MMAP:
  case IO_METHOD_USERPTR:
    if (!(cap.capabilities & V4L2_CAP_STREAMING)) {
      fprintf (stderr, "%s does not support streaming i/o\n",
         dev_name);
      exit (PLUS_FAIL);
    }

    break;
  }

  CLEAR (cropcap);

  cropcap.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

  if (0 == xioctl (fd, VIDIOC_CROPCAP, &cropcap)) {
    crop.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    crop.c = cropcap.defrect; /* reset to default */

    if (-1 == xioctl (fd, VIDIOC_S_CROP, &crop)) {
      switch (errno) {
      case EINVAL:
      /* Cropping not supported. */
      break;
      default:
      /* Errors ignored. */
      break;
          }
        }
      }
  else {
    /* Errors ignored. */
  }

  CLEAR (fmt);

  fmt.type                = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  fmt.fmt.pix.width       = this->FrameSize[0];
  fmt.fmt.pix.height      = this->FrameSize[1];
  fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_YUYV;
  fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;

  if (-1 == xioctl (fd, VIDIOC_S_FMT, &fmt))
    errno_exit ("VIDIOC_S_FMT");

  /* Note VIDIOC_S_FMT may change width and height. */

  /* Buggy driver paranoia. */
  min = fmt.fmt.pix.width * 2;
  if (fmt.fmt.pix.bytesperline < min)
    fmt.fmt.pix.bytesperline = min;
  min = fmt.fmt.pix.bytesperline * fmt.fmt.pix.height;
  if (fmt.fmt.pix.sizeimage < min)
    fmt.fmt.pix.sizeimage = min;

  switch (io) {
  case IO_METHOD_READ:
    //InitRead (fmt.fmt.pix.sizeimage);              //LATER
    break;

  case IO_METHOD_MMAP:
    InitMmap ();
    break;

  case IO_METHOD_USERPTR:
    //InitUserp (fmt.fmt.pix.sizeimage);             //LATER
    break;
  }

  //Set Input channel to 3 = S-Video on a Hauppauge Impact VCB
  int channel = 1;

  //  if (-1 == xioctl (fd,VIDIOC_S_INPUT , &this->VideoChannel))
  /*if (-1 == xioctl (fd, VIDIOC_S_INPUT , &channel))    // LATER NAAR KIJKEN!!
    errno_exit ("VIDIOC_S_INPUT");

  v4l2_std_id std_id;

  if(this->VideoMode == 1) //is this nessecary
    {
    //Set video mode to NTSC
    std_id = V4L2_STD_NTSC;
    }
  else if(this->VideoMode == 2)
    {//Set video mode to PAL
    std_id = V4L2_STD_PAL;
    }

  std_id = V4L2_STD_NTSC;

  if (-1 == ioctl (fd, VIDIOC_S_STD, &std_id)) {     // LATER NAAR KIJKENH
        perror ("VIDIOC_S_STD");
        exit (PLUS_FAIL);
        }*/

  LOG_INFO("initdevice");
}

//----------------------------------------------------------------------------//added
void vtkLinuxVideoSource::InitMmap (void)
{
        struct v4l2_requestbuffers req;

        CLEAR(req);

        req.count = 4;
        req.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        req.memory = V4L2_MEMORY_MMAP;

        if (-1 == xioctl(fd, VIDIOC_REQBUFS, &req)) {
                if (EINVAL == errno) {
                        fprintf(stderr, "%s does not support "
                                 "memory mapping\n", dev_name);
                        exit(EXIT_FAILURE);
                } else {
                        errno_exit("VIDIOC_REQBUFS");
                }
        }

        if (req.count < 2) {
                fprintf(stderr, "Insufficient buffer memory on %s\n",
                         dev_name);
                exit(EXIT_FAILURE);
        }

        buffers = (buffer*)calloc(req.count, sizeof(*buffers));

        if (!buffers) {
                fprintf(stderr, "Out of memory\n");
                exit(EXIT_FAILURE);
        }

        for (n_buffers = 0; n_buffers < req.count; ++n_buffers) {
                struct v4l2_buffer buf;

                CLEAR(buf);

                buf.type        = V4L2_BUF_TYPE_VIDEO_CAPTURE;
                buf.memory      = V4L2_MEMORY_MMAP;
                buf.index       = n_buffers;

                if (-1 == xioctl(fd, VIDIOC_QUERYBUF, &buf))
                        errno_exit("VIDIOC_QUERYBUF");

                buffers[n_buffers].length = buf.length;
                buffers[n_buffers].start =
                        mmap(NULL /* start anywhere */,
                              buf.length,
                              PROT_READ | PROT_WRITE /* required */,
                              MAP_SHARED /* recommended */,
                              fd, buf.m.offset);

                if (MAP_FAILED == buffers[n_buffers].start)
                        errno_exit("mmap");
        }
}


//----------------------------------------------------------------------------//added
int vtkLinuxVideoSource::xioctl(int fd, int request, void *arg)
{
  int r;

  do r = ioctl (fd, request, arg);
  while (-1 == r && EINTR == errno);

  return r;
}

//----------------------------------------------------------------------------//added
void vtkLinuxVideoSource::errno_exit (const char * s)
{
  fprintf (stderr, "%s error %d, %s\n",
     s, errno, strerror (errno));

  exit (PLUS_FAIL);
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalDisconnect()//virtual
{
    LOG_INFO("disconnect");
    /*this->UninitDevice();
    this->CloseDevice();*/
    return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------//added
void vtkLinuxVideoSource::CloseDevice(void)
{
LOG_INFO("close device");
  /*if (-1 == close (fd)){
    fprintf (stderr, "%s error %d, %s\n",
       "close", errno, strerror (errno));

    exit (EXIT_FAILURE);
  }

  fd = -1;*/
}

//----------------------------------------------------------------------------//added
void vtkLinuxVideoSource::UninitDevice(void)
{
LOG_INFO("uninitDevice");
  /*unsigned int i;

  switch (io) {
  case IO_METHOD_READ:
    free (buffers[0].start);
    break;

  case IO_METHOD_MMAP:
    for (i = 0; i < n_buffers; ++i)
    if (-1 == munmap (buffers[i].start, buffers[i].length))
    errno_exit ("munmap");
    break;

  case IO_METHOD_USERPTR:
    for (i = 0; i < n_buffers; ++i)
    free (buffers[i].start);
    break;
  }

  free (buffers);*/

}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::SetPreview(int showPreview)
{
LOG_INFO("setpreview");
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::ReleaseSystemResources()
{
 LOG_INFO("ReleaseResources");
  /*if (this->Recording)
    {
      this->Stop();
    }*/

  this->Initialized = 0;
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::OnParentWndDestroy()
{
LOG_INFO("onparentdestroy");
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::AddFrameToBuffer(void* lpVideoHeader)
{
LOG_INFO("addframetobuffer");
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalUpdate()//virtual
{
LOG_INFO("internalupdate");
  if (!this->Recording)
  {
    // drop the frame, we are not recording data now
    return PLUS_SUCCESS;
  }

  fd_set fds;
  FD_ZERO(&fds);
  FD_SET(fd, &fds);
  struct timeval tv = {0};
  tv.tv_sec = 2;
  int r = select(fd+1, &fds, NULL, NULL, &tv);
  if(-1 == r)
  {
    perror("Waiting for Frame");
    return PLUS_SUCCESS;
  }
/*
  if(-1 == xioctl(fd, VIDIOC_DQBUF, &buf))
  {
      perror("Retrieving Frame");
      return PLUS_SUCCESS;
  }*/
  /*V2U_GrabFrame2 * frame = NULL;     // from epiphan


  // If someone ever wants RGB8 or YUY2 (etc...) this line will have to be changed
  // to support any future video format choices
  // ReadConfiguration will probably need a new flag to tell this line what to do
  V2U_UINT32 videoFormat = (this->CaptureImageType == US_IMG_RGB_COLOR ? V2U_GRABFRAME_FORMAT_RGB24 : V2U_GRABFRAME_FORMAT_Y8);

  frame = FrmGrab_Frame( (FrmGrabber*)this->FrameGrabber, videoFormat, this->CropRectangle );

  if (frame == NULL)
  {
    LOG_WARNING("Frame not captured for video format: " << videoFormat);
    return PLUS_FAIL;
  }

  if ( frame->crop.width != this->FrameSize[0] || frame->crop.height != this->FrameSize[1])
  {
    LOG_ERROR("Image size received from Epiphan (" << frame->crop.width << "x" << frame->crop.height << ") does not match the clip rectangle size (" <<
      this->FrameSize[0] << "x" << this->FrameSize[1] << ")");
    FrmGrab_Release( (FrmGrabber*)this->FrameGrabber, frame );
    return PLUS_FAIL;
  }

  vtkPlusDataSource* aSource(NULL);
  for( int i = 0; i < this->GetNumberOfVideoSources(); ++i )
  {
    if( this->GetVideoSourceByIndex(i, aSource) != PLUS_SUCCESS )
    {
      LOG_ERROR("Unable to retrieve the video source in the Epiphan device on channel " << (*this->OutputChannels.begin())->GetChannelId());
      return PLUS_FAIL;
    }
    int numberOfScalarComponents(1);
    if( aSource->GetImageType() == US_IMG_RGB_COLOR )
    {
      numberOfScalarComponents = 3;
    }
    if( aSource->AddItem(frame->pixbuf, aSource->GetInputImageOrientation(), this->FrameSize, VTK_UNSIGNED_CHAR, numberOfScalarComponents, aSource->GetImageType(), 0, this->FrameNumber) != PLUS_SUCCESS )
    {
      LOG_ERROR("Error adding item to video source " << aSource->GetSourceId() << " on channel " << (*this->OutputChannels.begin())->GetChannelId() );
      return PLUS_FAIL;
    }
    else
    {
      this->Modified();
    }
  }

  FrmGrab_Release( (FrmGrabber*)this->FrameGrabber, frame );

  this->FrameNumber++;*/

  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalStartRecording()//virtual
{
//start_capturing(); //added
//capturing(); //added
LOG_INFO("start recording");      //this is just for testing LATER aanpassen
unsigned int i;
enum v4l2_buf_type type;

switch (io) {
case IO_METHOD_READ:
       /* Nothing to do. */
       break;

case IO_METHOD_MMAP:
       /*for (i = 0; i < n_buffers; ++i) {
             struct v4l2_buffer buf;

             CLEAR(buf);
             buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
             buf.memory = V4L2_MEMORY_MMAP;
             buf.index = i;

             if (-1 == xioctl(fd, VIDIOC_QBUF, &buf))
                       errno_exit("VIDIOC_QBUF");
             }*/
       type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
       if (-1 == xioctl(fd, VIDIOC_STREAMON, &type))
                errno_exit("VIDIOC_STREAMON");
       break;

case IO_METHOD_USERPTR:
       for (i = 0; i < n_buffers; ++i) {
                struct v4l2_buffer buf;

            CLEAR(buf);
            buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
            buf.memory = V4L2_MEMORY_USERPTR;
            buf.index = i;
            buf.m.userptr = (unsigned long)buffers[i].start;
            buf.length = buffers[i].length;

            if (-1 == xioctl(fd, VIDIOC_QBUF, &buf))
                      errno_exit("VIDIOC_QBUF");
            }
        type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        if (-1 == xioctl(fd, VIDIOC_STREAMON, &type))
            errno_exit("VIDIOC_STREAMON");
        break;
}

return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalStopRecording()//virtual
{
LOG_INFO("stopreconring");
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::VideoFormatDialog()
{
LOG_INFO("videoformatdialog");
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::VideoSourceDialog()
{
LOG_INFO("videosourcedialog");
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::SetFrameSize(int x, int y)//virtual
{
LOG_INFO("setframesize");
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::SetAcquisitionRate(double rate)//virtual
{
LOG_INFO("setaquisisitionrate");
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::SetOutputFormat(int format)//virtual
{
LOG_INFO("setoutputformat");
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::UpdateFrameBuffer()
{
LOG_INFO("updateframebuffer");
}

//---------------------------------------------------------------------------- added epiphan
/*PlusStatus vtkLinuxVideoSource::ReadConfiguration(vtkXMLDataElement* config)
{
}

//---------------------------------------------------------------------------- added epiphan
PlusStatus vtkLinuxVideoSource::WriteConfiguration(vtkXMLDataElement* config)
{
}*/

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::NotifyConfigured() //virtual
{
LOG_INFO("notify");
  /*if( this->OutputChannels.size() > 1 )
  {
    LOG_WARNING("WinLinuxSource is expecting one output channel and there are " << this->OutputChannels.size() << " channels. First output channel will be used.");
    return PLUS_FAIL;
  }

  if( this->OutputChannels.size() == 0 )
  {
    LOG_ERROR("No output channels defined for Linux video source. Cannot proceed." );
    this->CorrectlyConfigured = false;
    return PLUS_FAIL;
  }*/

  return PLUS_SUCCESS;
}
