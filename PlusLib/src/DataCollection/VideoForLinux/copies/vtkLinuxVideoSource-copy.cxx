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
#include "vtkLinuxVideoSource.h"

#include "vtkImageData.h"
#include "vtkCriticalSection.h"
#include "vtkTimerLog.h"
#include "vtkInformation.h"
#include "vtkInformationVector.h"
#include "vtkStreamingDemandDrivenPipeline.h"
#include "vtkUnsignedCharArray.h"
#include "vtksys/SystemTools.hxx"

#include <ctype.h>

#include "linux/v4l2-common.h"
#include "linux/videodev2.h"
#include <linux/types.h>
#include "vtkWindows.h"

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
  Initialized = 0;
  fd = -1;
  n_buffers = 0;
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

  static char dev_name[256]; //added
  static int fd; //added
  struct buffer *  buffers; //added
  static unsigned int  n_buffers; //added
  int Initialized;
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

//----------------------------------------------------------------------------
vtkLinuxVideoSource::vtkLinuxVideoSource() //constructor
: Internal(new vtkLinuxVideoSourceInternal)
, WndClassName(NULL)
, Preview(0)
, FrameIndex(0)
{
  //this->RequireImageOrientationInConfiguration = true;
  LOG_INFO("Constructed");
}

//----------------------------------------------------------------------------
vtkLinuxVideoSource::~vtkLinuxVideoSource()//destructor
{
  //this->vtkLinuxVideoSource::ReleaseSystemResources();

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
  LOG_INFO("connecting");
  //SetVideoDevice
  strcpy(this->Internal->dev_name, "/dev/video1");//device); LATER DIFFERENT
  //dev_name = "/dev/video1";
  io=IO_METHOD_MMAP;
  this->OpenDevice();
  this->InitDevice();
  this->DeviceInitialized = 1;

  return PLUS_SUCCESS;
}

void vtkLinuxVideoSource::OpenDevice(void)//added
{
struct stat st;

 if (-1 == stat(Internal->dev_name, &st)) {
         fprintf(stderr, "Cannot identify '%s': %d, %s\n",
                  Internal->dev_name, errno, strerror(errno));
         exit(PLUS_FAIL);
 }

 if (!S_ISCHR(st.st_mode)) {
         fprintf(stderr, "%s is no device\n", Internal->dev_name);
         exit(PLUS_FAIL);
 }

Internal->fd = open (Internal->dev_name, O_RDWR | O_NONBLOCK, 0);
LOG_INFO("opened");

if (-1 == Internal->fd) {
    fprintf (stderr, "Cannot open '%s'",
       Internal->dev_name);
    exit (PLUS_FAIL);
    }
}

void vtkLinuxVideoSource::InitDevice()//added void?
{
  struct v4l2_capability cap;
  struct v4l2_cropcap cropcap;
  struct v4l2_crop crop;
  struct v4l2_format fmt;
  unsigned int min;

  if (-1 == xioctl (Internal->fd, VIDIOC_QUERYCAP, &cap)) {
    if (EINVAL == errno) {
      fprintf (stderr, "%s is no V4L2 device\n",
         Internal->dev_name);
      exit (PLUS_FAIL);
    } else {
      errno_exit ("VIDIOC_QUERYCAP");
    }
  }

  if (!(cap.capabilities & V4L2_CAP_VIDEO_CAPTURE)) {
    fprintf (stderr, "%s is no video capture device\n",
       Internal->dev_name);
    exit (PLUS_FAIL);
  }

  switch (io) {
  case IO_METHOD_READ:
    if (!(cap.capabilities & V4L2_CAP_READWRITE)) {     // LATER ON!!
      fprintf (stderr, "%s does not support read i/o\n",
         Internal->dev_name);
      exit (PLUS_FAIL); // added EXIT_FAILURE->PLUS_FAIL
    }

    break;

  case IO_METHOD_MMAP:
  case IO_METHOD_USERPTR:
    if (!(cap.capabilities & V4L2_CAP_STREAMING)) {
      fprintf (stderr, "%s does not support streaming i/o\n",
         Internal->dev_name);
      exit (PLUS_FAIL);
    }

    break;
  }

  CLEAR (cropcap);

  cropcap.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

  if (0 == xioctl (Internal->fd, VIDIOC_CROPCAP, &cropcap)) {
    crop.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    crop.c = cropcap.defrect; /* reset to default */

    if (-1 == xioctl (Internal->fd, VIDIOC_S_CROP, &crop)) {
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

  if (-1 == xioctl (Internal->fd, VIDIOC_S_FMT, &fmt))
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
  int channel = 3;

  //  if (-1 == xioctl (fd,VIDIOC_S_INPUT , &this->VideoChannel))
  /*if (-1 == xioctl (Internal->fd, VIDIOC_S_INPUT , &channel))    // LATER NAAR KIJKEN!!
    errno_exit ("VIDIOC_S_INPUT");*/

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

  /*if (-1 == ioctl (Internal->fd, VIDIOC_S_STD, &std_id)) {     LATER NAAR KIJKENH
        perror ("VIDIOC_S_STD");
        exit (PLUS_FAIL);
        }*/

  LOG_INFO("init");
}

//----------------------------------------------------------------------------//added
void vtkLinuxVideoSource::InitMmap (void)
{
        struct v4l2_requestbuffers req;

        CLEAR(req);

        req.count = 4;
        req.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
        req.memory = V4L2_MEMORY_MMAP;

        if (-1 == xioctl(Internal->fd, VIDIOC_REQBUFS, &req)) {
                if (EINVAL == errno) {
                        fprintf(stderr, "%s does not support "
                                 "memory mapping\n", Internal->dev_name);
                        exit(EXIT_FAILURE);
                } else {
                        errno_exit("VIDIOC_REQBUFS");
                }
        }

        if (req.count < 2) {
                fprintf(stderr, "Insufficient buffer memory on %s\n",
                         Internal->dev_name);
                exit(EXIT_FAILURE);
        }

        Internal->buffers = (buffer*)calloc(req.count, sizeof(*Internal->buffers));

        if (!Internal->buffers) {
                fprintf(stderr, "Out of memory\n");
                exit(EXIT_FAILURE);
        }

        for (n_buffers = 0; n_buffers < req.count; ++n_buffers) {
                struct v4l2_buffer buf;

                CLEAR(buf);

                buf.type        = V4L2_BUF_TYPE_VIDEO_CAPTURE;
                buf.memory      = V4L2_MEMORY_MMAP;
                buf.index       = n_buffers;

                if (-1 == xioctl(Internal->fd, VIDIOC_QUERYBUF, &buf))
                        errno_exit("VIDIOC_QUERYBUF");

                Internal->buffers[n_buffers].length = buf.length;
                Internal->buffers[n_buffers].start =
                        mmap(NULL /* start anywhere */,
                              buf.length,
                              PROT_READ | PROT_WRITE /* required */,
                              MAP_SHARED /* recommended */,
                              Internal->fd, buf.m.offset);

                if (MAP_FAILED == Internal->buffers[n_buffers].start)
                        errno_exit("mmap");
        }
}


//----------------------------------------------------------------------------//added
int vtkLinuxVideoSource::xioctl(int fd->, int request, void *arg)
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
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::SetPreview(int showPreview)
{
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::ReleaseSystemResources()
{
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::OnParentWndDestroy()
{
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::AddFrameToBuffer(void* lpVideoHeader)
{
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalUpdate()//virtual
{
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalStartRecording()//virtual
{
//start_capturing(); //added
//capturing(); //added
LOG_INFO("recording");      //this is just for testing LATER aanpassen
enum v4l2_buf_type type;

type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

                if (-1 == xioctl(Internal->fd, VIDIOC_STREAMON, &type))
                        errno_exit("VIDIOC_STREAMON");
                for (int i = 0; i < 10; ++i) {
                        fd_set fds;
                        struct timeval tv;
                        int r;


                        FD_ZERO(&fds);
                        FD_SET(fd, &fds);

                        /* Timeout. */
                        tv.tv_sec = 2;
                        tv.tv_usec = 0;

                        r = select(Internal->fd + 1, &fds, NULL, NULL, &tv);
                        std::cout<<r<<std::endl;
                        }
return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalStopRecording()//virtual
{
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::VideoFormatDialog()
{
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::VideoSourceDialog()
{
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::SetFrameSize(int x, int y)//virtual
{

}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::SetAcquisitionRate(double rate)//virtual
{
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::SetOutputFormat(int format)//virtual
{
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::UpdateFrameBuffer()
{
}

//----------------------------------------------------------------------------

PlusStatus vtkLinuxVideoSource::NotifyConfigured() //virtual
{
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
