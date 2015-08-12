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

#if ( _MSC_VER >= 1300 ) // Visual studio .NET
#pragma warning ( disable : 4311 )
#pragma warning ( disable : 4312 )
#endif //
#define CLEAR(x) memset (&(x), 0, sizeof (x))

class vtkLinuxVideoSourceInternal
{
public:
  //----------------------------------------------------------------------------
  vtkLinuxVideoSourceInternal()
  {
  Initialized = 0;
  DeviceInitialized = 0;
  src_FrameSize[0] = 640; //later goed berekenen!!!!!!!
  src_FrameSize[1] = 480;
  src_FrameSize[2] = 1;
  dst_FrameSize[0] = 640;
  dst_FrameSize[1] = 480;
  dst_FrameSize[2] = 1;
  VideoMode = 1;
  }
  //----------------------------------------------------------------------------
  virtual ~vtkLinuxVideoSourceInternal()
  {
  CLEAR (src_fmt);
  CLEAR (dst_fmt);
  }
  //----------------------------------------------------------------------------
  PlusStatus GetSrcFmt()
  {   //aanroepen bij initalisatie device
  CLEAR(src_fmt);
  src_fmt.type                = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  src_fmt.fmt.pix.width       = src_FrameSize[0];               // OPVRAGEN MET FUNCTIE!!
  src_fmt.fmt.pix.height      = src_FrameSize[1];               // OPVRAGEN MET FUNCTIE!!
  src_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_BGR24;             // OPVRAGEN MET FUNCTIE!!
  src_fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;          // set field order
  VideoMode                   = 1;                              //nog doen
  return PLUS_SUCCESS;
  }
  //----------------------------------------------------------------------------
  PlusStatus SetDstFmt()
  {  //aanroepen bij initalisatie device
  CLEAR(dst_fmt);
  dst_fmt.type                = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  dst_fmt.fmt.pix.width       = dst_FrameSize[0];               //USE SetFramSize LATER
  dst_fmt.fmt.pix.height      = dst_FrameSize[1];               //USE SetFramSize LATER
  dst_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB24;             //set pixel format
  dst_fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;          //set field order
  return PLUS_SUCCESS;
  }

  int Initialized;
  int DeviceInitialized;
  int VideoMode; //NTSC == 1, PAL == 2 //added
  struct v4l2_format src_fmt;
  struct v4l2_format dst_fmt;
  int src_FrameSize[3];
  int dst_FrameSize[3];
  // add channel for VIDEO_S_INPUT?
};

//Not exactly sure what these are for, but I need those
vtkCxxRevisionMacro(vtkV4L2VideoSource, "$Revision: 1.0$"); //??
vtkStandardNewMacro(vtkLinuxVideoSource);

//----------------------------------------------------------------------------
vtkLinuxVideoSource::vtkLinuxVideoSource() //constructor
: Internal(new vtkLinuxVideoSourceInternal)
//, WndClassName(NULL)
//, Preview(0)
, FrameIndex(0)
{
  this->RequireImageOrientationInConfiguration = true;
  this->StartThreadForInternalUpdates=true;
  this->fd = -1;
  this->io = IO_METHOD_MMAP;
  this->FrameSize[0] = 640;  //naar internal en setframesize
  this->FrameSize[1] = 480;  //naar internal en set framesize
  this->FrameSize[2] = 1;    //naar internal en set framesize
  this->AcquisitionRate = 30; // naar read from config file?

  //SetVideoDevice
  /*strcpy(this->dev_name, "/dev/video1");//device); webcam     LATER from config file*/
  strcpy(this->dev_name, "/dev/video0");//device);framegrabber  LATER from config file

  LOG_INFO("Constructed");
}

//----------------------------------------------------------------------------
vtkLinuxVideoSource::~vtkLinuxVideoSource()//destructor
{
  this->vtkLinuxVideoSource::ReleaseSystemResources();
  // what else should be in here?

  delete this->Internal;
  this->Internal = NULL;
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::PrintSelf(ostream& os, vtkIndent indent)
{
  this->Superclass::PrintSelf(os,indent);
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalConnect()
{
  if (this->GetConnected())
  {
    return PLUS_SUCCESS; // already connected
  }
  LOG_INFO("start connecting");

  this->OpenDevice(); //open video device
  this->InitDevice(); //Initialize video vedice
  this->Internal->DeviceInitialized = 1;

  LOG_INFO("internalconnect");
  return PLUS_SUCCESS;
}

void vtkLinuxVideoSource::OpenDevice(void)
{
struct stat st;

 if (-1 == stat(dev_name, &st))
 {
         fprintf(stderr, "Cannot identify '%s': %d, %s\n",
                  dev_name, errno, strerror(errno));
         exit(PLUS_FAIL);
 }
 if (!S_ISCHR(st.st_mode))
 {
         fprintf(stderr, "%s is no device\n", dev_name);
         exit(PLUS_FAIL);
 }

fd = open (dev_name, O_RDWR | O_NONBLOCK, 0);  //open device

if (-1 == fd)
{
        fprintf (stderr, "Cannot open '%s'",
            dev_name);
        exit (PLUS_FAIL);
}

LOG_INFO("openedDevices");
}

void vtkLinuxVideoSource::InitDevice()
{
  struct v4l2_capability cap;   //pointer to driver
  struct v4l2_cropcap cropcap;  //giving the bounds of the subsection of the picture within an capture window
  struct v4l2_crop crop;        //the source rectangle

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

  this->Internal->GetSrcFmt();  //get video format parameters
  this->Internal->SetDstFmt();  //set video format parameters

  //create and check format convertion of data stream
  v4lconvert_data = v4lconvert_create(fd);
  if (v4lconvert_data == NULL)
      errno_exit("v4lconvert_create");
  if (v4lconvert_try_format(v4lconvert_data, &this->Internal->dst_fmt, &this->Internal->src_fmt) != 0)
      errno_exit("v4lconvert_try_format");

  //negotiate data format
  if (-1 == xioctl(fd, VIDIOC_S_FMT, &this->Internal->src_fmt))
    errno_exit ("VIDIOC_S_FMT");  /* Note VIDIOC_S_FMT may change width and height. */

  //allocate memory for dst buffer in dst format
  dst_buf = (unsigned char*)malloc(this->Internal->dst_fmt.fmt.pix.sizeimage);
  if (dst_buf == NULL)
  {
      std::cerr << "Alloc failed" << std::endl;
      exit(-1);
  }
  memset(dst_buf, 0x00, this->Internal->dst_fmt.fmt.pix.sizeimage);

  //request, query and queue buffers
  InitMmap ();

  //select video input (set Input channel to 3 = S-Video on a Hauppauge Impact VCB -> 3 for framegrabber comment this part)
  int channel = 3;
  if (-1 == xioctl (fd, VIDIOC_S_INPUT , &channel))    // LATER NAAR KIJKEN for other devices
    errno_exit ("VIDIOC_S_INPUT");

  //set video standaard
  v4l2_std_id std_id;
  if(this->Internal->VideoMode == 1)
    {
    std_id = V4L2_STD_NTSC;  //Set video mode to NTSC
    }
  else if(this->Internal->VideoMode == 2)
    {
    std_id = V4L2_STD_PAL;  //Set video mode to PAL
    }

  //select videostandard of the current input
  if (-1 == ioctl (fd, VIDIOC_S_STD, &std_id)) {     // LATER NAAR KIJKEN for other devices
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
  if (!buffers) {    //check for buffers
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
      buffers[n_buffers].start = mmap(NULL /* start anywhere */, buf.length,
                  PROT_READ | PROT_WRITE /* required */, MAP_SHARED /* recommended */, fd, buf.m.offset);
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

  this->Internal->Initialized = 0;
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
    else
    {
      US_IMAGE_TYPE imageType = aSource->GetImageType();
      aSource->SetNumberOfScalarComponents(3);//imageType == US_IMG_RGB_COLOR ? 3 : 1);
      aSource->SetInputFrameSize(this->FrameSize);
    }

    struct v4l2_format src_fmt;       //data format
    struct v4l2_format dst_fmt;       //data format

    CLEAR (src_fmt);
    src_fmt.type                = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    src_fmt.fmt.pix.width       = this->FrameSize[0];             //USE SetFramSize LATER
    src_fmt.fmt.pix.height      = this->FrameSize[1];             //USE SetFramSize LATER
    src_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_BGR24;//YUYV;              //set pixel format
    src_fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;          //set field order
    CLEAR (dst_fmt);
    dst_fmt.type                = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    dst_fmt.fmt.pix.width       = this->FrameSize[0];             //USE SetFramSize LATER
    dst_fmt.fmt.pix.height      = this->FrameSize[1];             //USE SetFramSize LATER
    dst_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB24;              //set pixel format
    dst_fmt.fmt.pix.field       = V4L2_FIELD_INTERLACED;          //set field order

    //printf("v4lconvert_data: %p\nsrc_fmt: %p\ndst_fmt: %p\nbuffers_start: %p\ndst_buf: %p\n",v4lconvert_data, &src_fmt, &dst_fmt, (unsigned char*)buffers_start, dst_buf);
    std::cerr << "dest size: " << dst_fmt.fmt.pix.sizeimage << std::endl;

    if (v4lconvert_convert(v4lconvert_data, &src_fmt, &dst_fmt, (unsigned char*)buffers_start, buffers_size, dst_buf, 921600) < 0) {  //lelijk size buffer dest
        std::cerr << "error: " << v4lconvert_get_error_message(v4lconvert_data);
		if (errno != EAGAIN)
			errno_exit("v4l_convert");
		return PLUS_FAIL;
	}

    int numberOfScalarComponents(3);

    if( aSource->AddItem(dst_buf, aSource->GetInputImageOrientation(),
    this->FrameSize, VTK_UNSIGNED_CHAR, numberOfScalarComponents, aSource->GetImageType(),
    0, this->FrameNumber) != PLUS_SUCCESS )
    {
      LOG_ERROR("Error adding item to video source " << aSource->GetSourceId() << " on channel " << (*this->OutputChannels.begin())->GetChannelId() );
      return PLUS_FAIL;
    }
    else
    {
      this->Modified();
    }
    /*int jpgfile;
    if((jpgfile = open("/tmp/myimage.jpeg", O_WRONLY | O_CREAT, 0660)) < 0)
    {
      perror("open");
      exit(1);
    }

    write(jpgfile, p, size);
    close(jpgfile);*/
  }
  this->FrameNumber++;
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

this->FrameNumber=1;
this->Internal->Initialized = 1;

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
