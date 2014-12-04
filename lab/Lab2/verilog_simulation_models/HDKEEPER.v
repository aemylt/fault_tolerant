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
// File Name:       HDKEEPER.v
// Library Name:    umcl18g212t3
// Library Release: 1.0
// Product:         Standard Cells
// Process:         UMC L18G
// Generated:       06/29/2004 20:04:06
// ------------------------------------------------------------------------
//  
// $RCSfile: HDKEEPER.v,v $ 
// $Source: /syncdisk/rcs/common/verilog/5.1.4.3/sc/RCS/HDKEEPER.v,v $ 
// $Date: 2003/04/23 22:39:18 $ 
// $Revision: 1.2 $ 
//  
// ---------------------- 
// Verilog dump Timing Insertion Version 1.5

// Verilog dump veralc Version 1.9
// ---------------------- 
// HDKEEPER(bushold) Cell
// Z = DUMMY;DUMMY = Z
`celldefine
`suppress_faults
`enable_portfaults
module HDKEEPER(Z);
inout Z;
nmos (Z, IINT, 1'b1);
not (X, Z);
not (pull1,pull0) #(0) (IINT, X);
endmodule
`disable_portfaults
`nosuppress_faults
`endcelldefine
