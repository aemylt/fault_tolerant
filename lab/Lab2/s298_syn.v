
module dff_test_1 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_2 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_3 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_4 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_5 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_6 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_7 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_8 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_9 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_10 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_11 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_12 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_13 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_14 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module s298 ( GND, VDD, CK, G0, G1, G117, G118, G132, G133, G2, G66, G67, 
        test_si, test_se );
  input GND, VDD, CK, G0, G1, G2, test_si, test_se;
  output G117, G118, G132, G133, G66, G67;
  wire   G10, G29, G11, G30, G12, G34, G13, G39, G14, G44, G15, G56, G16, G86,
         G17, G92, G18, G98, G19, G102, G20, G107, G21, G113, G22, G119, G23,
         G125, n128, n129, n130, n131, n132, n133, n134, n135, n136, n137,
         n138, n139, n140, n141, n142, n143, n144, n145, n146, n147, n148,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161;
  assign G66 = G16;
  assign G67 = G17;
  assign G117 = G18;
  assign G118 = G19;
  assign G132 = G20;
  assign G133 = G21;

  dff_test_14 DFF_0 ( .CK(CK), .Q(G10), .D(G29), .test_si(test_si), .test_se(
        test_se) );
  dff_test_1 DFF_1 ( .CK(CK), .Q(G11), .D(G30), .test_si(G10), .test_se(
        test_se) );
  dff_test_2 DFF_2 ( .CK(CK), .Q(G12), .D(G34), .test_si(G11), .test_se(
        test_se) );
  dff_test_3 DFF_3 ( .CK(CK), .Q(G13), .D(G39), .test_si(G12), .test_se(
        test_se) );
  dff_test_4 DFF_4 ( .CK(CK), .Q(G14), .D(G44), .test_si(G13), .test_se(
        test_se) );
  dff_test_5 DFF_5 ( .CK(CK), .Q(G15), .D(G56), .test_si(G14), .test_se(
        test_se) );
  dff_test_6 DFF_6 ( .CK(CK), .Q(G16), .D(G86), .test_si(G15), .test_se(
        test_se) );
  dff_test_7 DFF_7 ( .CK(CK), .Q(G17), .D(G92), .test_si(G16), .test_se(
        test_se) );
  dff_test_8 DFF_8 ( .CK(CK), .Q(G18), .D(G98), .test_si(G17), .test_se(
        test_se) );
  dff_test_9 DFF_9 ( .CK(CK), .Q(G19), .D(G102), .test_si(G18), .test_se(
        test_se) );
  dff_test_10 DFF_10 ( .CK(CK), .Q(G20), .D(G107), .test_si(G19), .test_se(
        test_se) );
  dff_test_13 DFF_11 ( .CK(CK), .Q(G21), .D(G113), .test_si(G23), .test_se(
        test_se) );
  dff_test_11 DFF_12 ( .CK(CK), .Q(G22), .D(G119), .test_si(G20), .test_se(
        test_se) );
  dff_test_12 DFF_13 ( .CK(CK), .Q(G23), .D(G125), .test_si(G22), .test_se(
        test_se) );
  HDNOR4D1 U115 ( .A1(n128), .A2(n129), .A3(n130), .A4(n131), .Z(G98) );
  HDNOR3DL U116 ( .A1(n132), .A2(G18), .A3(n133), .Z(n131) );
  HDNOR4D1 U117 ( .A1(n134), .A2(n130), .A3(n128), .A4(n129), .Z(G92) );
  HDOAI32DL U118 ( .A1(n135), .A2(G14), .A3(n136), .B1(G17), .B2(n137), .Z(
        n134) );
  HDAOI21D1 U119 ( .A1(G12), .A2(G14), .B(G13), .Z(n137) );
  HDNOR3DL U120 ( .A1(n138), .A2(n133), .A3(n130), .Z(G86) );
  HDAOI21D1 U121 ( .A1(G16), .A2(G14), .B(n128), .Z(n138) );
  HDNOR2D1 U122 ( .A1(G0), .A2(n139), .Z(G56) );
  HDNOR2D1 U123 ( .A1(G0), .A2(n140), .Z(G44) );
  HDEXOR2D1 U124 ( .A1(n132), .A2(n141), .Z(n140) );
  HDAO31DL U125 ( .A1(G10), .A2(G13), .A3(n142), .B(G23), .Z(n141) );
  HDNOR2D1 U126 ( .A1(n143), .A2(n144), .Z(G39) );
  HDEXOR2D1 U127 ( .A1(n145), .A2(G13), .Z(n144) );
  HDOA21DL U128 ( .A1(n142), .A2(G0), .B(n146), .Z(n143) );
  HDNOR3DL U129 ( .A1(n147), .A2(G0), .A3(n142), .Z(G34) );
  HDOAI21DL U130 ( .A1(G10), .A2(G12), .B(n145), .Z(n147) );
  HDNAN3D1 U131 ( .A1(G12), .A2(G11), .A3(G10), .Z(n145) );
  HDAOI21D1 U132 ( .A1(n146), .A2(n148), .B(n149), .Z(G30) );
  HDEXOR2D1 U133 ( .A1(G10), .A2(n136), .Z(n149) );
  HDINVBD1 U134 ( .A(G11), .Z(n136) );
  HDAO21DL U135 ( .A1(n135), .A2(G13), .B(G0), .Z(n148) );
  HDINVBD1 U136 ( .A(G29), .Z(n146) );
  HDNOR2D1 U137 ( .A1(G0), .A2(G10), .Z(G29) );
  HDNOR2D1 U138 ( .A1(G0), .A2(n150), .Z(G125) );
  HDEXNOR2D1 U139 ( .A1(G23), .A2(G1), .Z(n150) );
  HDNOR2D1 U140 ( .A1(G0), .A2(n151), .Z(G119) );
  HDEXNOR2D1 U141 ( .A1(G22), .A2(G2), .Z(n151) );
  HDNOR4D1 U142 ( .A1(n128), .A2(n133), .A3(n130), .A4(n152), .Z(G113) );
  HDMUXB2D1 U143 ( .A0(G11), .A1(G21), .SL(G14), .Z(n152) );
  HDINVBD1 U144 ( .A(n139), .Z(n130) );
  HDINVBD1 U145 ( .A(n153), .Z(n133) );
  HDAOI31M10D1 U146 ( .A1(n129), .A2(n139), .A3(n154), .B(n155), .Z(G107) );
  HDNAN3D1 U147 ( .A1(G14), .A2(n153), .A3(G20), .Z(n154) );
  HDNOR3DL U148 ( .A1(n132), .A2(G11), .A3(n153), .Z(n129) );
  HDINVBD1 U149 ( .A(G14), .Z(n132) );
  HDAOI21D1 U150 ( .A1(n139), .A2(n156), .B(n155), .Z(G102) );
  HDNOR2M1DL U151 ( .A1(G10), .A2(n139), .Z(n155) );
  HDOAI21DL U152 ( .A1(n142), .A2(n153), .B(n157), .Z(n156) );
  HDMUXB2D1 U153 ( .A0(n158), .A1(n159), .SL(G14), .Z(n157) );
  HDAOI21D1 U154 ( .A1(n142), .A2(n158), .B(G19), .Z(n159) );
  HDNAN2D1 U155 ( .A1(n135), .A2(n158), .Z(n153) );
  HDOAI21DL U156 ( .A1(G15), .A2(n160), .B(n161), .Z(n139) );
  HDNAN4M1DL U157 ( .A1(G22), .A2(G11), .A3(n128), .A4(n135), .Z(n161) );
  HDINVBD1 U158 ( .A(G12), .Z(n135) );
  HDAND3D1 U159 ( .A1(n128), .A2(G22), .A3(n142), .Z(n160) );
  HDNOR2D1 U160 ( .A1(G11), .A2(G12), .Z(n142) );
  HDNOR2D1 U161 ( .A1(n158), .A2(G14), .Z(n128) );
  HDINVBD1 U162 ( .A(G13), .Z(n158) );
endmodule

