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
// File Name:       HDADFULDL.v
// Library Name:    umcl18g212t3
// Library Release: 1.0
// Product:         Standard Cells
// Process:         UMC L18G
// Generated:       06/29/2004 20:03:24
// ------------------------------------------------------------------------
//  
// $RCSfile: HDADFULDL.v,v $ 
// $Source: /syncdisk/rcs/common/verilog/5.1.4.3/sc/RCS/HDADFULDL.v,v $ 
// $Date: 2003/04/23 22:37:56 $ 
// $Revision: 1.2 $ 
//  
// ---------------------- 
// Verilog dump Timing Insertion Version 1.5

// Verilog dump veralc Version 1.9
/*****************************************************************************/
/*                                                                           */
/*  CellRater, version 5.1.4.3 production                                    */
/*  Created:  Thu Feb 20 17:01:39 2003 by sasana                             */
/*    for Verilog Simulator:  verilog-xl                                     */
/*                                                                           */
/*****************************************************************************/
`timescale 1 ns / 1 ps
`define VCC 1'b1
`define VSS 0
`celldefine
`suppress_faults
`enable_portfaults
module HDADFULDL(CO, S, A, B, CI);
input A;
input B;
input CI;
output CO;
output S;
 HDADFULDL_UDPCO(CO, A, B, CI);
 HDADFULDL_UDPS(S, A, B, CI);
specify
// arc A --> CO
  if (B === 1'b1 && CI === 1'b0) ( A => CO ) = (1,1);
  if (B === 1'b0 && CI === 1'b1) ( A => CO ) = (1,1);
  ifnone ( A => CO ) = (1,1);
// arc B --> CO
  if (A === 1'b1 && CI === 1'b0) ( B => CO ) = (1,1);
  if (A === 1'b0 && CI === 1'b1) ( B => CO ) = (1,1);
  ifnone ( B => CO ) = (1,1);
// arc CI --> CO
  if (A === 1'b1 && B === 1'b0) ( CI => CO ) = (1,1);
  if (A === 1'b0 && B === 1'b1) ( CI => CO ) = (1,1);
  ifnone ( CI => CO ) = (1,1);
// arc A --> S
  if (B === 1'b1 && CI === 1'b1) ( A => S ) = (1,1);
  if (B === 1'b0 && CI === 1'b0) ( A => S ) = (1,1);
  if (B === 1'b1 && CI === 1'b0) ( A => S ) = (1,1);
  if (B === 1'b0 && CI === 1'b1) ( A => S ) = (1,1);
  ifnone ( A => S ) = (1,1);
// arc B --> S
  if (A === 1'b1 && CI === 1'b1) ( B => S ) = (1,1);
  if (A === 1'b0 && CI === 1'b0) ( B => S ) = (1,1);
  if (A === 1'b1 && CI === 1'b0) ( B => S ) = (1,1);
  if (A === 1'b0 && CI === 1'b1) ( B => S ) = (1,1);
  ifnone ( B => S ) = (1,1);
// arc CI --> S
  if (A === 1'b1 && B === 1'b1) ( CI => S ) = (1,1);
  if (A === 1'b0 && B === 1'b0) ( CI => S ) = (1,1);
  if (A === 1'b1 && B === 1'b0) ( CI => S ) = (1,1);
  if (A === 1'b0 && B === 1'b1) ( CI => S ) = (1,1);
  ifnone ( CI => S ) = (1,1);
endspecify
endmodule // HDADFULDL //

primitive HDADFULDL_UDPCO(CO, A, B, CI);
output CO;
input A;
input B;
input CI;

table
// A  B  CI CO
   ?    1    1   : 1   ;
   1    1    ?   : 1   ;
   1    ?    1   : 1   ;
   0    ?    0   : 0   ;
   ?    0    0   : 0   ;
   0    0    ?   : 0   ;
endtable
endprimitive

primitive HDADFULDL_UDPS(S, A, B, CI);
output S;
input A;
input B;
input CI;

table
// A  B  CI S
   0    0    1   : 1   ;
   1    0    0   : 1   ;
   0    1    0   : 1   ;
   1    1    1   : 1   ;
   0    1    1   : 0   ;
   1    1    0   : 0   ;
   0    0    0   : 0   ;
   1    0    1   : 0   ;
endtable
endprimitive
`disable_portfaults
`nosuppress_faults
`endcelldefine
