// 
// Copyright (C) 2004 Virtual Silicon Technology Inc. All Rights Reserved.
// Silicon Ready, The Heart of Great Silicon, and the Virtual Silicon
// logo are registered trademarks of Virtual Silicon Technology Inc.  All
// other trademarks are the property of their respective owner.
// 
// Virtual Silicon Technology Inc.
// 1322 Orleans Drive
// Sunnyvale, CA 94089-1116
// Phone : (408) 548-2700
// Fax   : (408) 548-2750
// Web Site : http://www.virtual-silicon.com
// 
// File Name:       HDMUX4D4.v
// Library Name:    umcl18g212t3
// Library Release: 1.0
// Product:         Standard Cells
// Process:         UMC L18G
// Generated:       06/29/2004 20:04:40
// ------------------------------------------------------------------------
/*****************************************************************************/
/*                                                                           */
/*  CellRater, version 5.1.4.3 production                                    */
/*  Created:  Wed Feb 26 16:03:08 2003 by fredn                              */
/*    for Verilog Simulator:  verilog-xl                                     */
/*                                                                           */
/*****************************************************************************/
`timescale 1 ns / 1 ps
`define VCC 1'b1
`define VSS 0
`celldefine
`suppress_faults
`enable_portfaults
module HDMUX4D4(Z, A0, A1, A2, A3, SL0, SL1);
input A0;
input A1;
input A2;
input A3;
input SL0;
input SL1;
output Z;
 HDMUX4D4_UDPZ(Z, A0, A1, A2, A3, SL0, SL1);
specify
// arc A0 --> Z
  if (A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b1 && SL0 === 1'b0 && SL1 === 1'b0) ( A0 => Z ) = (1,1);
  if (A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b0 && SL0 === 1'b0 && SL1 === 1'b0) ( A0 => Z ) = (1,1);
  if (A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b1 && SL0 === 1'b0 && SL1 === 1'b0) ( A0 => Z ) = (1,1);
  if (A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b0 && SL0 === 1'b0 && SL1 === 1'b0) ( A0 => Z ) = (1,1);
  if (A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b1 && SL0 === 1'b0 && SL1 === 1'b0) ( A0 => Z ) = (1,1);
  if (A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b0 && SL0 === 1'b0 && SL1 === 1'b0) ( A0 => Z ) = (1,1);
  if (A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b1 && SL0 === 1'b0 && SL1 === 1'b0) ( A0 => Z ) = (1,1);
  if (A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b0 && SL0 === 1'b0 && SL1 === 1'b0) ( A0 => Z ) = (1,1);
  ifnone ( A0 => Z ) = (1,1);
// arc A1 --> Z
  if (A0 === 1'b1 && A2 === 1'b1 && A3 === 1'b1 && SL0 === 1'b1 && SL1 === 1'b0) ( A1 => Z ) = (1,1);
  if (A0 === 1'b1 && A2 === 1'b1 && A3 === 1'b0 && SL0 === 1'b1 && SL1 === 1'b0) ( A1 => Z ) = (1,1);
  if (A0 === 1'b1 && A2 === 1'b0 && A3 === 1'b1 && SL0 === 1'b1 && SL1 === 1'b0) ( A1 => Z ) = (1,1);
  if (A0 === 1'b1 && A2 === 1'b0 && A3 === 1'b0 && SL0 === 1'b1 && SL1 === 1'b0) ( A1 => Z ) = (1,1);
  if (A0 === 1'b0 && A2 === 1'b1 && A3 === 1'b1 && SL0 === 1'b1 && SL1 === 1'b0) ( A1 => Z ) = (1,1);
  if (A0 === 1'b0 && A2 === 1'b1 && A3 === 1'b0 && SL0 === 1'b1 && SL1 === 1'b0) ( A1 => Z ) = (1,1);
  if (A0 === 1'b0 && A2 === 1'b0 && A3 === 1'b1 && SL0 === 1'b1 && SL1 === 1'b0) ( A1 => Z ) = (1,1);
  if (A0 === 1'b0 && A2 === 1'b0 && A3 === 1'b0 && SL0 === 1'b1 && SL1 === 1'b0) ( A1 => Z ) = (1,1);
  ifnone ( A1 => Z ) = (1,1);
// arc A2 --> Z
  if (A0 === 1'b1 && A1 === 1'b1 && A3 === 1'b1 && SL0 === 1'b0 && SL1 === 1'b1) ( A2 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b1 && A3 === 1'b0 && SL0 === 1'b0 && SL1 === 1'b1) ( A2 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A3 === 1'b1 && SL0 === 1'b0 && SL1 === 1'b1) ( A2 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A3 === 1'b0 && SL0 === 1'b0 && SL1 === 1'b1) ( A2 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A3 === 1'b1 && SL0 === 1'b0 && SL1 === 1'b1) ( A2 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A3 === 1'b0 && SL0 === 1'b0 && SL1 === 1'b1) ( A2 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A3 === 1'b1 && SL0 === 1'b0 && SL1 === 1'b1) ( A2 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A3 === 1'b0 && SL0 === 1'b0 && SL1 === 1'b1) ( A2 => Z ) = (1,1);
  ifnone ( A2 => Z ) = (1,1);
// arc A3 --> Z
  if (A0 === 1'b1 && A1 === 1'b1 && A2 === 1'b1 && SL0 === 1'b1 && SL1 === 1'b1) ( A3 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b1 && A2 === 1'b0 && SL0 === 1'b1 && SL1 === 1'b1) ( A3 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b1 && SL0 === 1'b1 && SL1 === 1'b1) ( A3 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b0 && SL0 === 1'b1 && SL1 === 1'b1) ( A3 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b1 && SL0 === 1'b1 && SL1 === 1'b1) ( A3 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b0 && SL0 === 1'b1 && SL1 === 1'b1) ( A3 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A2 === 1'b1 && SL0 === 1'b1 && SL1 === 1'b1) ( A3 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A2 === 1'b0 && SL0 === 1'b1 && SL1 === 1'b1) ( A3 => Z ) = (1,1);
  ifnone ( A3 => Z ) = (1,1);
// arc SL0 --> Z
  if (A0 === 1'b1 && A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b1 && SL1 === 1'b1) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b1 && SL1 === 1'b1) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b1 && SL1 === 1'b0) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b0 && SL1 === 1'b0) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b1 && SL1 === 1'b1) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b1 && SL1 === 1'b0) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b0 && SL1 === 1'b0) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b1 && SL1 === 1'b1) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b0 && SL1 === 1'b1) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b1 && SL1 === 1'b0) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b0 && SL1 === 1'b1) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b0 && SL1 === 1'b0) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b1 && SL1 === 1'b0) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b0 && SL1 === 1'b0) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b0 && SL1 === 1'b1) ( SL0 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b0 && SL1 === 1'b1) ( SL0 => Z ) = (1,1);
  ifnone ( SL0 => Z ) = (1,1);
// arc SL1 --> Z
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b1 && SL0 === 1'b1) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b1 && SL0 === 1'b1) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b1 && SL0 === 1'b0) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b0 && SL0 === 1'b0) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b1 && SL0 === 1'b1) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b1 && SL0 === 1'b0) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A2 === 1'b1 && A3 === 1'b0 && SL0 === 1'b0) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b1 && SL0 === 1'b1) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b0 && SL0 === 1'b1) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b1 && SL0 === 1'b0) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b0 && SL0 === 1'b1) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b0 && SL0 === 1'b0) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b1 && SL0 === 1'b0) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b1 && A1 === 1'b0 && A2 === 1'b0 && A3 === 1'b0 && SL0 === 1'b0) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b1 && A3 === 1'b0 && SL0 === 1'b1) ( SL1 => Z ) = (1,1);
  if (A0 === 1'b0 && A1 === 1'b1 && A2 === 1'b0 && A3 === 1'b0 && SL0 === 1'b1) ( SL1 => Z ) = (1,1);
  ifnone ( SL1 => Z ) = (1,1);
endspecify
endmodule // HDMUX4D4 //

primitive HDMUX4D4_UDPZ(Z, A0, A1, A2, A3, SL0, SL1);
output Z;
input A0;
input A1;
input A2;
input A3;
input SL0;
input SL1;

table
// A0  A1  A2  A3  SL0  SL1 Z
   0    0    0    0    ?    ?   : 0   ; // reducing unknowns
   1    1    1    1    ?    ?   : 1   ; // reducing unknowns
   ?    0    ?    0    1    ?   : 0   ; // reducing unknowns
   ?    1    ?    1    1    ?   : 1   ; // reducing unknowns
   ?    ?    0    0    ?    1   : 0   ; // reducing unknowns
   ?    ?    1    1    ?    1   : 1   ; // reducing unknowns
   0    ?    0    ?    0    ?   : 0   ; // reducing unknowns
   1    ?    1    ?    0    ?   : 1   ; // reducing unknowns
   0    0    ?    ?    ?    0   : 0   ; // reducing unknowns
   1    1    ?    ?    ?    0   : 1   ; // reducing unknowns
   1    ?    ?    ?    0    0   : 1   ;
   ?    ?    1    ?    0    1   : 1   ;
   ?    1    ?    ?    1    0   : 1   ;
   ?    ?    ?    1    1    1   : 1   ;
   ?    ?    0    ?    0    1   : 0   ;
   ?    ?    ?    0    1    1   : 0   ;
   0    ?    ?    ?    0    0   : 0   ;
   ?    0    ?    ?    1    0   : 0   ;
endtable
endprimitive
`disable_portfaults
`nosuppress_faults
`endcelldefine
