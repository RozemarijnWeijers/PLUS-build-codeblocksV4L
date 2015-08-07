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
//#define WITH_V4L2_LIB 1		/* v4l library *///added?
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

#include "libv4lconvert.h"

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
static struct v4lconvert_data *v4lconvert_data; //added
static unsigned char *dst_buf; //added

//----------------------------------------------------------------------------
vtkLinuxVideoSource::vtkLinuxVideoSource() //constructor
: Internal(new vtkLinuxVideoSourceInternal)
//, WndClassName(NULL)
//, Preview(0)
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
  this->AcquisitionRate = 30;
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
  //strcpy(this->dev_name, "/dev/video1");//device); webcam     LATER from config file
  strcpy(this->dev_name, "/dev/video0");//device);framegrabber  LATER from config file

  //open video device
  this->OpenDevice();

  //Initialize video vedice
  this->InitDevice();
  this->DeviceInitialized = 1;

  //create datasource objects for every videosource
  /*if( this->GetNumberOfVideoSources() == 1 )
  {
  vtkPlusDataSource* aSource(NULL);
    if( this->GetFirstVideoSource(aSource) != PLUS_SUCCESS )
    {
      LOG_ERROR("Unable to retrieve the video source in the Linux device on channel " << (*this->OutputChannels.begin())->GetChannelId());
      return PLUS_FAIL;
    }
    else
    {
      //set parameters of the data source
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
      //set parameters of the data source
      US_IMAGE_TYPE imageType = aSource->GetImageType();
      aSource->SetPixelType(VTK_UNSIGNED_CHAR);
      aSource->SetNumberOfScalarComponents(imageType == US_IMG_RGB_COLOR ? 3 : 1);
      aSource->SetInputFrameSize(this->FrameSize);
    }
  }*/
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

void vtkLinuxVideoSource::InitDevice()//added
{
  struct v4l2_capability cap;   //pointer to driver
  struct v4l2_cropcap cropcap;  //giving the bounds of the subsection of the picture within an capture window
  struct v4l2_crop crop;        //the source rectangle
  struct v4l2_format src_fmt;       //data format
  struct v4l2_format dst_fmt;       //data format
  unsigned int min;
  int sizeimage;

  //query capabilities of device and set in cap
  if (-1 == xioctl (fd, VIDIOC_QUERYCAP, &cap)) {
    if (EINVAL == errno) {
      fprintf (stderr, "%s is no V4L2 device\n",
         dev_name);
      exit (PLUS_FAIL);
    } else {
      errno_exit ("VIDIOC_QUERYCAP");
    }
  }

  //chech capture capability of device
  if (!(cap.capabilities & V4L2_CAP_VIDEO_CAPTURE)) {
    fprintf (stderr, "%s is no video capture device\n",
       dev_name);
    exit (PLUS_FAIL);
  }
    if (!(cap.capabilities & V4L2_CAP_STREAMING)) {
    fprintf (stderr, "%s is no video streaming device\n",
       dev_name);
    exit (PLUS_FAIL);
  }

  //dit kan denk ik weg
  switch (io) {
  /*case IO_METHOD_READ:
    if (!(cap.capabilities & V4L2_CAP_READWRITE)) {
      fprintf (stderr, "%s does not support read i/o\n",
         dev_name);
      exit (PLUS_FAIL); // added EXIT_FAILURE->PLUS_FAIL
    }

    break;*/
  case IO_METHOD_MMAP:
  /*case IO_METHOD_USERPTR:
    if (!(cap.capabilities & V4L2_CAP_STREAMING)) {
      fprintf (stderr, "%s does not support streaming i/o\n",
         dev_name);
      exit (PLUS_FAIL);
    }*/

    break;
  }

  //set type of data stream in cropcap
  CLEAR (cropcap);
  cropcap.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

  //query and set the cropping capabilities
  if (0 == xioctl (fd, VIDIOC_CROPCAP, &cropcap)) {
    crop.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    crop.c = cropcap.defrect; /* reset to default */

    //set cropping rectangle
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

  //set data format parameters
  CLEAR (src_fmt);
  src_fmt.type                = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  src_fmt.fmt.pix.width       = this->FrameSize[0];             //USE SetFramSize LATER
  src_fmt.fmt.pix.height      = this->FrameSize[1];             //USE SetFramSize LATER
  src_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_YUYV;              //set pixel format
  src_fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;          //set field order
  CLEAR (dst_fmt);
  dst_fmt.type                = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  dst_fmt.fmt.pix.width       = this->FrameSize[0];             //USE SetFramSize LATER
  dst_fmt.fmt.pix.height      = this->FrameSize[1];             //USE SetFramSize LATER
  dst_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB24;              //set pixel format
  dst_fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;          //set field order
  v4lconvert_data = v4lconvert_create(fd);
  if (v4lconvert_data == NULL)
      errno_exit("v4lconvert_create");
  if (v4lconvert_try_format(v4lconvert_data, &dst_fmt, &src_fmt) != 0)
      errno_exit("v4lconvert_try_format");
  //negotiate data format
  if (-1 == xioctl(fd, VIDIOC_S_FMT, &src_fmt))
    errno_exit ("VIDIOC_S_FMT");

  /* Note VIDIOC_S_FMT may change width and height. */

  /* Buggy driver paranoia. */
  min = src_fmt.fmt.pix.width * 2;
  if (src_fmt.fmt.pix.bytesperline < min)
    src_fmt.fmt.pix.bytesperline = min;
  min = src_fmt.fmt.pix.bytesperline * src_fmt.fmt.pix.height;
  if (src_fmt.fmt.pix.sizeimage < min)
    src_fmt.fmt.pix.sizeimage = min;


	sizeimage = src_fmt.fmt.pix.sizeimage;
	dst_buf = (unsigned char*)malloc(dst_fmt.fmt.pix.sizeimage);
	/*printf("raw pixfmt: %c%c%c%c %dx%d\n",
		src_fmt.fmt.pix.pixelformat & 0xff,
	       (src_fmt.fmt.pix.pixelformat >> 8) & 0xff,
	       (src_fmt.fmt.pix.pixelformat >> 16) & 0xff,
	       (src_fmt.fmt.pix.pixelformat >> 24) & 0xff,
		src_fmt.fmt.pix.width, src_fmt.fmt.pix.height);*/

  //InitMmap
  switch (io) {
  /*case IO_METHOD_READ:
    //InitRead (fmt.fmt.pix.sizeimage);              //LATER or not
    //break;*/
  case IO_METHOD_MMAP:
    InitMmap ();
    break;
  /*case IO_METHOD_USERPTR:
    InitUserp (fmt.fmt.pix.sizeimage);             //LATER or not
    break;*/
  }

  //select video input
  //Set Input channel to 3 = S-Video on a Hauppauge Impact VCB -> 3 for framegrabber comment this part
  int channel = 3;
  if (-1 == xioctl (fd, VIDIOC_S_INPUT , &channel))    // LATER NAAR KIJKEN voor webcam!!
    errno_exit ("VIDIOC_S_INPUT");

  //set video standaard to NTSC
  v4l2_std_id std_id;
  /*if(this->VideoMode == 1) //is this nessecary?
    {
    //Set video mode to NTSC
    std_id = V4L2_STD_NTSC;
    }
  else if(this->VideoMode == 2)
    {//Set video mode to PAL

    std_id = V4L2_STD_PAL;
    }*/
  std_id = V4L2_STD_NTSC;

  //select videostandard of the current input
  if (-1 == ioctl (fd, VIDIOC_S_STD, &std_id)) {     // LATER NAAR KIJKEN for webcam!!
        perror ("VIDIOC_S_STD");
        exit (PLUS_FAIL);
        }

  LOG_INFO("initdevice");
}

//----------------------------------------------------------------------------//added
void vtkLinuxVideoSource::InitMmap (void)
{
  struct v4l2_requestbuffers req;

  //request for buffer parameters
  CLEAR(req);
  req.count = 4;                            //number of buffers requested, only when memory is mmap
  req.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;   //set type
  req.memory = V4L2_MEMORY_MMAP;            //map device memory into application address space

  //initiate memory mapped I/O, mmap buffers must be allocated before they can be mapped to the application's address space
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

  //allocateds a block of memory for buffers
  buffers = (buffer*)calloc(req.count, sizeof(*buffers));
  //check for buffers
  if (!buffers) {
    fprintf(stderr, "Out of memory\n");
    exit(EXIT_FAILURE);
  }

  //create buffers
  for (n_buffers = 0; n_buffers < req.count; ++n_buffers) {
      struct v4l2_buffer buf;

      //set buffer parameters
      CLEAR(buf);
      buf.type        = V4L2_BUF_TYPE_VIDEO_CAPTURE;
      buf.memory      = V4L2_MEMORY_MMAP;
      buf.index       = n_buffers;

      //query status of and set parameters of requested buffers
      if (-1 == xioctl(fd, VIDIOC_QUERYBUF, &buf))
         errno_exit("VIDIOC_QUERYBUF");
      //set start and length in buffers
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
  if (-1 == close (fd)){
    fprintf (stderr, "%s error %d, %s\n",
       "close", errno, strerror (errno));

    exit (EXIT_FAILURE);
  }

  fd = -1;
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

  for(int i=0; i<n_buffers; i++)
  {
    fd_set fds;   //What does this part do??
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

    read_frame();
  }

  return PLUS_SUCCESS;
}
//---------------------------------------------------------------------------- //added
PlusStatus vtkLinuxVideoSource::read_frame()
{
LOG_INFO("read_frame");
	struct v4l2_buffer buf;
	CLEAR(buf);
		buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
		buf.memory = V4L2_MEMORY_MMAP;

		if (xioctl(fd, VIDIOC_DQBUF, &buf) < 0) {
			switch (errno) {
			case EAGAIN:
				return PLUS_FAIL;

			case EIO:
				/* Could ignore EIO, see spec. */

				/* fall through */

			default:
				errno_exit("VIDIOC_DQBUF");
			}
		}
		assert(buf.index < n_buffers);
		process_image(buffers[buf.index].start, buf.bytesused);

		if (xioctl(fd, VIDIOC_QBUF, &buf) < 0)
			errno_exit("VIDIOC_QBUF");

return PLUS_SUCCESS;
}


//---------------------------------------------------------------------------- //added
PlusStatus vtkLinuxVideoSource::process_image(void *buffers_start, int buffers_size)
{
  LOG_INFO("process_image");

  vtkPlusDataSource* aSource(NULL);
  for( int i = 0; i < this->GetNumberOfVideoSources(); ++i )
  {
    if( this->GetVideoSourceByIndex(i, aSource) != PLUS_SUCCESS )
    {
      LOG_ERROR("Unable to retrieve the video source in the Linux device on channel " << (*this->OutputChannels.begin())->GetChannelId());
      return PLUS_FAIL;
    }

    int numberOfScalarComponents(1);
    if( aSource->GetImageType() == US_IMG_RGB_COLOR )
    {
      numberOfScalarComponents = 3;
    }
  struct v4l2_format src_fmt;       //data format
  struct v4l2_format dst_fmt;       //data format

      CLEAR (src_fmt);
  src_fmt.type                = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  src_fmt.fmt.pix.width       = this->FrameSize[0];             //USE SetFramSize LATER
  src_fmt.fmt.pix.height      = this->FrameSize[1];             //USE SetFramSize LATER
  src_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_YUYV;              //set pixel format
  src_fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;          //set field order
  CLEAR (dst_fmt);
  dst_fmt.type                = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  dst_fmt.fmt.pix.width       = this->FrameSize[0];             //USE SetFramSize LATER
  dst_fmt.fmt.pix.height      = this->FrameSize[1];             //USE SetFramSize LATER
  dst_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB24;              //set pixel format
  dst_fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;          //set field order
    if (v4lconvert_convert(v4lconvert_data, &src_fmt, &dst_fmt, (unsigned char*)buffers_start, buffers_size, dst_buf, dst_fmt.fmt.pix.sizeimage) < 0) {
		if (errno != EAGAIN)
			errno_exit("v4l_convert");
		return PLUS_FAIL;
	}

    /*if( aSource->AddItem(buffers_start, aSource->GetInputImageOrientation(), this->FrameSize, VTK_UNSIGNED_CHAR, numberOfScalarComponents, aSource->GetImageType(), 0, this->FrameNumber) != PLUS_SUCCESS )
    {
      LOG_ERROR("Error adding item to video source " << aSource->GetSourceId() << " on channel " << (*this->OutputChannels.begin())->GetChannelId() );
      return PLUS_FAIL;
    }
    else
    {
      this->Modified();
    }*/
    /*int jpgfile;
    if((jpgfile = open("/tmp/myimage.jpeg", O_WRONLY | O_CREAT, 0660)) < 0)
    {
      perror("open");
      exit(1);
    }

    write(jpgfile, p, size);
    close(jpgfile);*/
  }
return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalStartRecording()//virtual
{
LOG_INFO("start recording");      //this is just for testing LATER aanpassen
unsigned int i;
enum v4l2_buf_type type;

switch (io) {
/*case IO_METHOD_READ:
       // Nothing to do.
       break;*/
case IO_METHOD_MMAP:
       for (i = 0; i < n_buffers; ++i) {
             struct v4l2_buffer buf;

             CLEAR(buf);
             buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
             buf.memory = V4L2_MEMORY_MMAP;
             buf.index = i;
             //exchange a buffer with the diver
             if (-1 == xioctl(fd, VIDIOC_QBUF, &buf))
                       errno_exit("VIDIOC_QBUF");
             }
       type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
       //start streaming
       if (-1 == xioctl(fd, VIDIOC_STREAMON, &type))
                errno_exit("VIDIOC_STREAMON");
       break;
/*case IO_METHOD_USERPTR:
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
        break;*/
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
