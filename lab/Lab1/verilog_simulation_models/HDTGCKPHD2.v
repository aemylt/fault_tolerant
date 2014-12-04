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
// File Name:       HDTGCKPHD2.v
// Library Name:    umcl18g212t3
// Library Release: 1.0
// Product:         Standard Cells
// Process:         UMC L18G
// Generated:       06/29/2004 20:05:47
// ------------------------------------------------------------------------
//  
// $RCSfile: HDTGCKPHD2.v,v $ 
// $Source: /syncdisk/rcs/common/verilog/5.1.4.3/sc/RCS/HDTGCKPHD2.v,v $ 
// $Date: 2003/04/23 22:40:47 $ 
// $Revision: 1.2 $ 
//  
// ---------------------- 
// Verilog dump Timing Insertion Version 1.5

// Verilog dump veralc Version 1.9
/*****************************************************************************/
/*                                                                           */
/*  CellRater, version 5.1.1.1 production                                    */
/*  Created:  Fri Sep 20 09:09:03 2002 by fredn                              */
/*    for Verilog Simulator:  verilog-xl                                     */
/*                                                                           */
/*****************************************************************************/
`timescale 1 ns / 1 ps
`define VCC 1'b1
`define VSS 0
`celldefine
`suppress_faults
`enable_portfaults
module HDTGCKPHD2(EN, TE, CK, GCK);
input EN;
input TE;
input CK;
output GCK;
reg notifier;
or SMC_I0(SMC_NS_IN, EN, TE);
and SMC_I1(GCK, SMC_GC_OUT, CK);
glat SMC_I2(.out(SMC_GC_OUT), .in(SMC_NS_IN), .hold(CK), .clr(`VCC), .set(`VCC), .notifier(notifier));
specify
// arc CK --> GCK
  ( CK => GCK ) = (1,1);
`ifdef no_tchk
`else
  $setup( negedge EN,  posedge CK, 1, notifier);
  $setup( posedge EN,  posedge CK, 1, notifier);
  $setup( negedge TE,  posedge CK, 1, notifier);
  $setup( posedge TE,  posedge CK, 1, notifier);
  $hold( posedge CK,  posedge EN, 1, notifier);
  $hold( posedge CK,  negedge EN, 1, notifier);
  $hold( posedge CK,  posedge TE, 1, notifier);
  $hold( posedge CK,  negedge TE, 1, notifier);
  $width( negedge CK, 1, 0, notifier);
  $width( posedge CK, 1, 0, notifier);
  $period( posedge CK, 0, notifier);
  $period( negedge CK, 0, notifier);
`endif
endspecify
endmodule // HDTGCKPHD2 //
`disable_portfaults
`nosuppress_faults
`endcelldefine
