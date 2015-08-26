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
Authors include: Rozemarijn Weijers
=========================================================================*/
#include "PlusConfigure.h"
#include "vtkObjectFactory.h"
#include "vtkPlusChannel.h"
#include "vtkPlusDataSource.h"
#include "vtkUnsignedCharArray.h"
#include "vtkLinuxVideoSource.h"
#include <ctype.h>

#include "libv4lconvert.h"
#include "linux/v4l2-common.h"
#include "linux/videodev2.h"
#include <linux/types.h>
#include "vtkMultiThreader.h"


#include <fcntl.h>
#include <errno.h>
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/mman.h>

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
  }
  //----------------------------------------------------------------------------
  virtual ~vtkLinuxVideoSourceInternal()
  {
    CLEAR (src_fmt);
    CLEAR (dst_fmt);
  }

  //----------------------------------------------------------------------------
  PlusStatus GetSrcFmt(int fd)
  {
    src_fmt.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    if (-1 == ioctl(fd, VIDIOC_G_FMT, &src_fmt)) {
      perror("VIDOIC_G_FMT");
      exit(PLUS_FAIL);
    }

    skip_set_std = 0;
    if (-1 == ioctl(fd, VIDIOC_G_STD, &src_std_id)) {
      skip_set_std = 1;
      perror("VIDOIC_G_STD");
    }

    skip_set_input = 0;
    if (-1 == ioctl(fd, VIDIOC_G_INPUT, &src_input_channel)) {
      skip_set_input = 1;
      perror("VIDOIC_G_INPUT");
    }

    return PLUS_SUCCESS;
  }

  //----------------------------------------------------------------------------
  PlusStatus SetDstFmt(int channel)
  {
    CLEAR(dst_fmt);
    dst_fmt = src_fmt;
    dst_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB24; //set pixel format
    CLEAR(dst_std_id);
    dst_std_id = src_std_id; // muct be v4l2_STD_NTSC for framegrabber!!!!
    CLEAR(dst_FrameSize);
    dst_FrameSize[0] =dst_fmt.fmt.pix.width;
    dst_FrameSize[1] =dst_fmt.fmt.pix.height;
    dst_FrameSize[2] =1;

    return PLUS_SUCCESS;
  }

  int Initialized;
  int DeviceInitialized;
  struct v4l2_format src_fmt;
  struct v4l2_format dst_fmt;
  v4l2_std_id src_std_id;
  v4l2_std_id dst_std_id;
  int dst_FrameSize[3];
  int skip_set_std;
  int skip_set_input;
  int src_input_channel;
};

//Not exactly sure what these are for, but I need those NOG NAAR KIJKEN
vtkCxxRevisionMacro(vtkV4L2VideoSource, "$Revision: 1.0$");
vtkStandardNewMacro(vtkLinuxVideoSource);

//----------------------------------------------------------------------------
vtkLinuxVideoSource::vtkLinuxVideoSource() //constructor
: Internal(new vtkLinuxVideoSourceInternal)
//, FrameIndex(0)
{
  this->RequireImageOrientationInConfiguration = true;
  this->StartThreadForInternalUpdates=true;
  this->fd = -1;
  this->AcquisitionRate = 30;  //LATER NOG NAAR KIJKEN

  LOG_INFO("Constructed");
}

//----------------------------------------------------------------------------
vtkLinuxVideoSource::~vtkLinuxVideoSource() //destructor
{
  // what else should be in here? LATER NOG NAAR KIJKEN
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
    fprintf(stderr, "Cannot identify '%s': %d, %s\n", dev_name, errno, strerror(errno));
    exit(PLUS_FAIL);
  }
  if (!S_ISCHR(st.st_mode))
  {
    fprintf(stderr, "%s is no device\n", dev_name);
    exit(PLUS_FAIL);
  }

  fd = open (dev_name, O_RDWR | O_NONBLOCK, 0); //open device

  if (-1 == fd)
  {
    fprintf (stderr, "Cannot open '%s'", dev_name);
    exit (PLUS_FAIL);
  }

  LOG_INFO("openedDevices");
}

void vtkLinuxVideoSource::InitDevice()
{
  this->Internal->GetSrcFmt(fd); //get video format parameters
  this->Internal->SetDstFmt(channel); //set video format parameters

  struct v4l2_capability cap; //pointer to driver

  //query capabilities of device and set in cap
  if (-1 == xioctl (fd, VIDIOC_QUERYCAP, &cap)) {
    if (EINVAL == errno) {
      fprintf (stderr, "%s is no V4L2 device\n", dev_name);
      exit (PLUS_FAIL);
    }
    else {
      errno_exit ("VIDIOC_QUERYCAP");
    }
  }

  //chech capture capability of device
  if (!(cap.capabilities & V4L2_CAP_VIDEO_CAPTURE)) {
    fprintf (stderr, "%s is no video capture device\n", dev_name);
    exit (PLUS_FAIL);
  }
  if (!(cap.capabilities & V4L2_CAP_STREAMING)) {
    fprintf (stderr, "%s is no video streaming device\n", dev_name);
    exit (PLUS_FAIL);
  }

  //set type of data stream in cropcap
  /*struct v4l2_cropcap cropcap;  //giving the bounds of the subsection of the picture within an capture window
  struct v4l2_crop crop;        //the source rectangle
  CLEAR (cropcap);
  cropcap.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

  //query and set the cropping capabilities
  if (0 == xioctl (fd, VIDIOC_CROPCAP, &cropcap)) {
    crop.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    crop.c = cropcap.defrect;

    //set cropping rectangle
    if (-1 == xioctl (fd, VIDIOC_S_CROP, &crop)) {
      switch (errno) {
      case EINVAL:
      // Cropping not supported.
      break;
      default:
      // Errors ignored.
      break;
          }
        }
      }
  else {
    // Errors ignored.
  }*/

  //create and check format convertion of data stream
  v4lconvert_data = v4lconvert_create(fd);
  if (v4lconvert_data == NULL) {
    errno_exit("v4lconvert_create");
  }
  if (v4lconvert_try_format(v4lconvert_data, &this->Internal->dst_fmt, &this->Internal->src_fmt) != 0) {
    errno_exit("v4lconvert_try_format");
  }

  //negotiate data format
  if (-1 == xioctl(fd, VIDIOC_S_FMT, &this->Internal->src_fmt)) {
    errno_exit ("VIDIOC_S_FMT"); // Note VIDIOC_S_FMT may change width and height
  }

  //allocate memory for dst buffer in dst format
  dst_buf = (unsigned char*)malloc(this->Internal->dst_fmt.fmt.pix.sizeimage);
  if (dst_buf == NULL) {
    exit(-1);
  }
  memset(dst_buf, 0x00, this->Internal->dst_fmt.fmt.pix.sizeimage);

  //request, query and queue buffers
  InitMmap ();

  //select video input (set Input channel to 3 = S-Video on a Hauppauge Impact VCB -> 3 for framegrabber comment this part)
  if (this->Internal->skip_set_input == 0) {
    if (-1 == xioctl (fd, VIDIOC_S_INPUT , &channel)) { //must be 3 for S-Video and 0 for RCA
      errno_exit ("VIDIOC_S_INPUT");
    }
  }

  //set video standaard
  /*v4l2_std_id std_id;
  if(this->Internal->VideoMode == 1)
    {
    std_id = V4L2_STD_NTSC;  //Set video mode to NTSC
    }
  else if(this->Internal->VideoMode == 2)
    {
    std_id = V4L2_STD_PAL;  //Set video mode to PAL
    }*/

  //select videostandard of the current input
  if (this->Internal->skip_set_std == 0){
    if (-1 == ioctl (fd, VIDIOC_S_STD, &this->Internal->dst_std_id)) {
      perror ("VIDIOC_S_STD");
      exit (PLUS_FAIL);
    }
  }

  LOG_INFO("initdevice");
}

//----------------------------------------------------------------------------
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
      fprintf(stderr, "%s does not support memory mapping\n", dev_name);
      exit(EXIT_FAILURE);
    }
    else {
      errno_exit("VIDIOC_REQBUFS");
    }
  }
  if (req.count < 2) {
    fprintf(stderr, "Insufficient buffer memory on %s\n", dev_name);
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
    if (-1 == xioctl(fd, VIDIOC_QUERYBUF, &buf)) {
      errno_exit("VIDIOC_QUERYBUF");
    }

    //set start and length in buffers
    buffers[n_buffers].length = buf.length;
    buffers[n_buffers].start = mmap(NULL /* start anywhere */, buf.length,
      PROT_READ | PROT_WRITE /* required */, MAP_SHARED /* recommended */, fd, buf.m.offset);
    if (MAP_FAILED == buffers[n_buffers].start) {
         errno_exit("mmap");
    }
  }
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalDisconnect()
{
  LOG_INFO("disconnect");
  this->UninitDevice();
  this->CloseDevice();
  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::CloseDevice(void)
{
  LOG_INFO("close device");
  if (-1 == close (fd)) {
    fprintf (stderr, "%s error %d, %s\n", "close", errno, strerror (errno));
    exit (PLUS_FAIL);
  }

  fd = -1;
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::UninitDevice(void)
{
  LOG_INFO("uninitDevice");
  unsigned int i;
  for (i = 0; i < n_buffers; ++i) {
    if (-1 == munmap (buffers[i].start, buffers[i].length)) {
      errno_exit ("munmap");
    }
  }

  free (buffers);
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalUpdate()
{
  //LOG_INFO("internalupdate");
  if (!this->Recording) {
    return PLUS_SUCCESS; // drop the frame, we are not recording data now
  }

  for(int i=0; i<n_buffers; i++) {  //WHY for-loop LATER NAAR KIJKEN
    /*fd_set fds;   //What does this part do?? do we need it?
    FD_ZERO(&fds);
    FD_SET(fd, &fds);
    struct timeval tv = {0};
    tv.tv_sec = 2;
    int r = select(fd+1, &fds, NULL, NULL, &tv);
    if(-1 == r)
    {
      perror("Waiting for Frame");
      return PLUS_SUCCESS;
    }*/

    ReadFrame();
  }

  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::ReadFrame()
{
  //LOG_INFO("ReadFrame");
  struct v4l2_buffer buf;
  CLEAR(buf);
  buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  buf.memory = V4L2_MEMORY_MMAP;

  if (xioctl(fd, VIDIOC_DQBUF, &buf) < 0) {
    switch (errno) {
	  case EAGAIN:
		return PLUS_FAIL;
      case EIO:
		// Could ignore EIO, see spec. fall through
      default:
		errno_exit("VIDIOC_DQBUF");
    }
  }
  ProcessImage(buffers[buf.index].start, buf.bytesused);

  if (xioctl(fd, VIDIOC_QBUF, &buf) < 0) {
		errno_exit("VIDIOC_QBUF");
  }

  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::ProcessImage(void *buffers_start, int buffers_size)
{
  //LOG_INFO("ProcessImage");

  vtkPlusDataSource* aSource(NULL);
  for( int i = 0; i < this->GetNumberOfVideoSources(); ++i ) {
    int numberOfScalarComponents = 3;//this->Internal->dst_fmt.fmt.pix.pixelformat = V4L2_PIX_FMT_RGB24 ? 3 : 1; LATER NOG NAAR KIJKEN
    if( this->GetVideoSourceByIndex(i, aSource) != PLUS_SUCCESS ) {
      LOG_ERROR("Unable to retrieve the video source in the Linux device on channel " << (*this->OutputChannels.begin())->GetChannelId());
      return PLUS_FAIL;
    }
    else {
      aSource->SetNumberOfScalarComponents(numberOfScalarComponents);
      aSource->SetInputFrameSize(this->Internal->dst_FrameSize);
    }

    if (v4lconvert_convert(v4lconvert_data, &this->Internal->src_fmt, &this->Internal->dst_fmt, (unsigned char*)buffers_start, buffers_size, dst_buf, this->Internal->dst_fmt.fmt.pix.sizeimage) < 0) {
        std::cerr << "error: " << v4lconvert_get_error_message(v4lconvert_data);
		if (errno != EAGAIN)
			errno_exit("v4l_convert");
		return PLUS_FAIL;
	}

    if( aSource->AddItem(dst_buf, aSource->GetInputImageOrientation(),
        this->Internal->dst_FrameSize, VTK_UNSIGNED_CHAR, numberOfScalarComponents, aSource->GetImageType(),
        0, this->FrameNumber) != PLUS_SUCCESS ) {
      LOG_ERROR("Error adding item to video source " << aSource->GetSourceId() << " on channel " << (*this->OutputChannels.begin())->GetChannelId() );
      return PLUS_FAIL;
    }
    else {
      this->Modified();  //KLIOP DIT LATER NAAR KIJKEN
    }
  }

  this->FrameNumber++;
  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalStartRecording()
{
  LOG_INFO("start recording");
  unsigned int i;
  enum v4l2_buf_type type;

  for (i = 0; i < n_buffers; ++i) {
    struct v4l2_buffer buf;

    CLEAR(buf);
    buf.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
    buf.memory = V4L2_MEMORY_MMAP;
    buf.index = i;
    //exchange a buffer with the diver
    if (-1 == xioctl(fd, VIDIOC_QBUF, &buf)){
      errno_exit("VIDIOC_QBUF");
    }
  }

  type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

  //start streaming
  if (-1 == xioctl(fd, VIDIOC_STREAMON, &type)){
    errno_exit("VIDIOC_STREAMON");
  }

  this->FrameNumber=1;
  this->Internal->Initialized = 1;

  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::InternalStopRecording()
{
  LOG_INFO("stop recording");
  enum v4l2_buf_type type;
  type = V4L2_BUF_TYPE_VIDEO_CAPTURE;

  //stop streaming
  if (-1 == xioctl(fd, VIDIOC_STREAMOFF, &type)){
    errno_exit("VIDIOC_STREAMON");
  }

  return PLUS_SUCCESS;
  }

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::SetChannel(int device_channel)
{
  int channel=device_channel;
  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::SetCropHeight(int crop_heigth)
{
  int crop_h=crop_heigth;
  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::SetCropWidth(int crop_width)
{
  int crop_w=crop_width;
  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::ReadConfiguration(vtkXMLDataElement* rootConfigElement)
{
  XML_FIND_DEVICE_ELEMENT_REQUIRED_FOR_READING(deviceConfig, rootConfigElement);

  const char* device_name = deviceConfig->GetAttribute("DeviceName");
  strcpy(this->dev_name, device_name);

  int device_channel;
  if(deviceConfig->GetScalarAttribute("Channel", device_channel)) {
    SetChannel(device_channel);
  }
  else {
    channel=0;
  }

  int crop_heigth;
  if(deviceConfig->GetScalarAttribute("CropHeigth", crop_heigth)) {
    SetCropHeight(crop_heigth);
  }
  else {
    crop_h=-1;
  }

  int crop_width;
  if(deviceConfig->GetScalarAttribute("CropWidth", crop_width)) {
    SetCropWidth(crop_width);
  }
  else {
    crop_w=-1;
  }

  return PLUS_SUCCESS;
}

//----------------------------------------------------------------------------
int vtkLinuxVideoSource::xioctl(int fd, int request, void *arg)
{
  int r;

  do r = ioctl (fd, request, arg);
  while (-1 == r && EINTR == errno);

  return r;
}

//----------------------------------------------------------------------------
void vtkLinuxVideoSource::errno_exit (const char * s)
{
  fprintf (stderr, "%s error %d, %s\n", s, errno, strerror (errno));

  exit (PLUS_FAIL);
}

//----------------------------------------------------------------------------
PlusStatus vtkLinuxVideoSource::NotifyConfigured()
{
  LOG_INFO("notify"); //what is this for? LATER NOG NAAR KIJKEN

  return PLUS_SUCCESS;
}
