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
// File Name:       HDOA33DL.v
// Library Name:    umcl18g212t3
// Library Release: 1.0
// Product:         Standard Cells
// Process:         UMC L18G
// Generated:       06/29/2004 20:05:11
// ------------------------------------------------------------------------
//  
// $RCSfile: HDOA33DL.v,v $ 
// $Source: /syncdisk/rcs/common/verilog/5.1.4.3/sc/RCS/HDOA33DL.v,v $ 
// $Date: 2003/04/23 22:40:08 $ 
// $Revision: 1.2 $ 
//  
// ---------------------- 
// Verilog dump Timing Insertion Version 1.5

// Verilog dump veralc Version 1.9
/*****************************************************************************/
/*                                                                           */
/*  CellRater, version CR-4.9.2.1 production                                 */
/*  Created:  Wed Dec 04 13:50:00 2002 by dharman                            */
/*    for Verilog Simulator:  verilog-xl                                     */
/*                                                                           */
/*****************************************************************************/
`timescale 1 ns / 1 ps
`define VCC 1'b1
`define VSS 0
`celldefine
`suppress_faults
`enable_portfaults
module HDOA33DL(Z, A1, A2, A3, B1, B2, B3);
input A1;
input A2;
input A3;
input B1;
input B2;
input B3;
output Z;
 HDOA33DL_UDPZ(Z, A1, A2, A3, B1, B2, B3);
specify
// arc A1 --> Z
  ( A1 => Z ) = (1,1);
// arc A2 --> Z
  ( A2 => Z ) = (1,1);
// arc A3 --> Z
  ( A3 => Z ) = (1,1);
// arc B1 --> Z
  ( B1 => Z ) = (1,1);
// arc B2 --> Z
  ( B2 => Z ) = (1,1);
// arc B3 --> Z
  ( B3 => Z ) = (1,1);
endspecify
endmodule // HDOA33DL //

primitive HDOA33DL_UDPZ(Z, A1, A2, A3, B1, B2, B3);
output Z;
input A1;
input A2;
input A3;
input B1;
input B2;
input B3;

table
// A1  A2  A3  B1  B2  B3 Z
   1    ?    ?    ?    1    ?   : 1   ;
   ?    ?    1    ?    ?    1   : 1   ;
   1    ?    ?    ?    ?    1   : 1   ;
   1    ?    ?    1    ?    ?   : 1   ;
   ?    1    ?    ?    ?    1   : 1   ;
   ?    1    ?    1    ?    ?   : 1   ;
   ?    1    ?    ?    1    ?   : 1   ;
   ?    ?    1    ?    1    ?   : 1   ;
   ?    ?    1    1    ?    ?   : 1   ;
   0    0    0    ?    ?    ?   : 0   ;
   ?    ?    ?    0    0    0   : 0   ;
endtable
endprimitive
`disable_portfaults
`nosuppress_faults
`endcelldefine
