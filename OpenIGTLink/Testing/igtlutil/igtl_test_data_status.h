/*=========================================================================

  Program:   OpenIGTLLink Library -- Dummy status data
  Module:    $RCSfile: $
  Language:  C
  Date:      $Date: $
  Version:   $Revision: $

  Copyright (c) Insight Software Consortium. All rights reserved.

  This software is distributed WITHOUT ANY WARRANTY; without even
  the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
  PURPOSE.  See the above copyright notices for more information.

=========================================================================*/

#ifndef __IGTL_TEST_DATA_STATUS_H
#define __IGTL_TEST_DATA_STATUS_H

char test_status_message[] = {
  0x00, 0x01,                                     /* Version number */
  0x53, 0x54, 0x41, 0x54, 0x55, 0x53, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00,                         /* STATUS */ 
  0x44, 0x65, 0x76, 0x69, 0x63, 0x65, 0x4e, 0x61,
  0x6d, 0x65, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
  0x00, 0x00, 0x00, 0x00,                         /* Device name */
  0x00, 0x00, 0x00, 0x00, 0x49, 0x96, 0x02, 0xd2, /* Time stamp */
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x36, /* Body size */
  0x98, 0xee, 0x43, 0xee, 0xd8, 0xe4, 0x31, 0xcf, /* CRC */

  0x00, 0x0f,                                     /* Status code */
  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x0a, /* Sub code */
  0x41, 0x43, 0x54, 0x55, 0x41, 0x54, 0x4f, 0x52,
  0x5f, 0x44, 0x49, 0x53, 0x41, 0x42, 0x4c, 0x45,
  0x44, 0x00, 0x00, 0x00,                         /* Status name */
  0x41, 0x63, 0x74, 0x75, 0x61, 0x74, 0x6f, 0x72,
  0x20, 0x41, 0x20, 0x69, 0x73, 0x20, 0x64, 0x69,
  0x73, 0x61, 0x62, 0x6c, 0x65, 0x64, 0x2e, 0x00,
};

#endif /* IGTL_TEST_DATA_STATUS_H */



