/*
* Description: iMX8M Synchronous Indirect Display Device (IDD)
*
*  Copyright (c) 2018, Microsoft Corporation. All rights reserved.
*
*  This program and the accompanying materials
*  are licensed and made available under the terms and conditions of the BSD License
*  which accompanies this distribution.  The full text of the license may be found at
*  http://opensource.org/licenses/bsd-license.php
*
*  THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
*  WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
*
*/

Device (DIS0)
{
  Name (_HID, "NXPI1234")
  Name (_CID, "NXPI1234")
  Name (_UID, 0)

  Name (_CRS, ResourceTemplate () {
    // CCM
    MEMORY32FIXED( ReadWrite, 0x30380000, 0x10000, )

    // GPC
    MEMORY32FIXED( ReadWrite, 0x303A0000, 0x10000, )

    // DC_MST0-3
    MEMORY32FIXED( ReadWrite, 0x32E00000, 0x40000, )

    // HDMI_SEC
    MEMORY32FIXED( ReadWrite, 0x32E40000, 0x10000, )

    // HDMI_CTRL
    MEMORY32FIXED( ReadWrite, 0x32C00000, 0x100000, )
  })

  Method (_STA)
  {
    Return(0xf)
  }
}

Device (IDD0)
{
  Name (_HID, "NXPI1235")
  Name (_CID, "NXPI1235")
  Name (_UID, 0)

  Method (_STA)
  {
    Return(0x0)
  }
}

