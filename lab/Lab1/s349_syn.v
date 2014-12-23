
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


module dff_test_15 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module s349 ( GND, VDD, CK, A0, A1, A2, A3, B0, B1, B2, B3, CNTVCO2, CNTVCON2, 
        P0, P1, P2, P3, P4, P5, P6, P7, READY, START, test_si, test_so, 
        test_se );
  input GND, VDD, CK, A0, A1, A2, A3, B0, B1, B2, B3, START, test_si, test_se;
  output CNTVCO2, CNTVCON2, P0, P1, P2, P3, P4, P5, P6, P7, READY, test_so;
  wire   CT2, CNTVG3VD, CT1, CNTVG2VD, CT0, CNTVG1VD, ACVQN3, ACVQN2, ACVQN1,
         ACVQN0, MRVQN3, MRVG4VD, MRVQN2, MRVG3VD, MRVQN1, MRVG2VD, MRVQN0,
         MRVG1VD, AX3, AX2, AX1, AX0, n55, n56, n57, n58, n59, n60, n61, n62,
         n149, n150, n151, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183;
  assign test_so = AX0;

  dff_test_15 DFF_0 ( .CK(CK), .Q(CT2), .D(CNTVG3VD), .test_si(test_si), 
        .test_se(test_se) );
  dff_test_1 DFF_1 ( .CK(CK), .Q(CT1), .D(CNTVG2VD), .test_si(CT2), .test_se(
        test_se) );
  dff_test_2 DFF_2 ( .CK(CK), .Q(CT0), .D(CNTVG1VD), .test_si(CT1), .test_se(
        test_se) );
  dff_test_3 DFF_3 ( .CK(CK), .Q(ACVQN3), .D(n62), .test_si(CT0), .test_se(
        test_se) );
  dff_test_4 DFF_4 ( .CK(CK), .Q(ACVQN2), .D(n61), .test_si(ACVQN3), .test_se(
        test_se) );
  dff_test_5 DFF_5 ( .CK(CK), .Q(ACVQN1), .D(n60), .test_si(ACVQN2), .test_se(
        test_se) );
  dff_test_6 DFF_6 ( .CK(CK), .Q(ACVQN0), .D(n59), .test_si(ACVQN1), .test_se(
        test_se) );
  dff_test_7 DFF_7 ( .CK(CK), .Q(MRVQN3), .D(MRVG4VD), .test_si(ACVQN0), 
        .test_se(test_se) );
  dff_test_8 DFF_8 ( .CK(CK), .Q(MRVQN2), .D(MRVG3VD), .test_si(MRVQN3), 
        .test_se(test_se) );
  dff_test_9 DFF_9 ( .CK(CK), .Q(MRVQN1), .D(MRVG2VD), .test_si(MRVQN2), 
        .test_se(test_se) );
  dff_test_10 DFF_10 ( .CK(CK), .Q(MRVQN0), .D(MRVG1VD), .test_si(MRVQN1), 
        .test_se(test_se) );
  dff_test_11 DFF_11 ( .CK(CK), .Q(AX3), .D(n58), .test_si(MRVQN0), .test_se(
        test_se) );
  dff_test_12 DFF_12 ( .CK(CK), .Q(AX2), .D(n57), .test_si(AX3), .test_se(
        test_se) );
  dff_test_13 DFF_13 ( .CK(CK), .Q(AX1), .D(n56), .test_si(AX2), .test_se(
        test_se) );
  dff_test_14 DFF_14 ( .CK(CK), .Q(AX0), .D(n55), .test_si(AX1), .test_se(
        test_se) );
  HDNAN2D1 U136 ( .A1(n149), .A2(n150), .Z(n62) );
  HDMUXB2D1 U137 ( .A0(n151), .A1(ACVQN3), .SL(n152), .Z(n149) );
  HDNAN2D1 U138 ( .A1(n153), .A2(n150), .Z(n61) );
  HDMUXB2D1 U139 ( .A0(n154), .A1(ACVQN2), .SL(n152), .Z(n153) );
  HDOAI22DL U140 ( .A1(n155), .A2(n151), .B1(n156), .B2(n157), .Z(n154) );
  HDOA21DL U141 ( .A1(n158), .A2(P7), .B(n151), .Z(n157) );
  HDOAI22DL U142 ( .A1(P7), .A2(n158), .B1(n156), .B2(n155), .Z(n151) );
  HDAND2D1 U143 ( .A1(AX3), .A2(P0), .Z(n156) );
  HDNOR2D1 U144 ( .A1(ACVQN3), .A2(n159), .Z(n155) );
  HDNAN2D1 U145 ( .A1(n160), .A2(n150), .Z(n60) );
  HDMUXB2D1 U146 ( .A0(n161), .A1(ACVQN1), .SL(n152), .Z(n160) );
  HDOAI32DL U147 ( .A1(n162), .A2(P6), .A3(n163), .B1(n159), .B2(n164), .Z(
        n161) );
  HDNOR3DL U148 ( .A1(n165), .A2(ACVQN2), .A3(n166), .Z(n164) );
  HDINVBD1 U149 ( .A(n158), .Z(n159) );
  HDOAI21DL U150 ( .A1(n166), .A2(n165), .B(n167), .Z(n158) );
  HDOAI21DL U151 ( .A1(n163), .A2(n162), .B(P6), .Z(n167) );
  HDINVBD1 U152 ( .A(n165), .Z(n163) );
  HDNAN2D1 U153 ( .A1(AX2), .A2(P0), .Z(n165) );
  HDNAN2D1 U154 ( .A1(n168), .A2(n150), .Z(n59) );
  HDINVBD1 U155 ( .A(START), .Z(n150) );
  HDMUXB2D1 U156 ( .A0(n169), .A1(ACVQN0), .SL(n152), .Z(n168) );
  HDOAI32DL U157 ( .A1(n170), .A2(P5), .A3(n171), .B1(n166), .B2(n172), .Z(
        n169) );
  HDNOR3DL U158 ( .A1(n173), .A2(ACVQN1), .A3(n174), .Z(n172) );
  HDINVBD1 U159 ( .A(n162), .Z(n166) );
  HDOAI21DL U160 ( .A1(n174), .A2(n173), .B(n175), .Z(n162) );
  HDOAI21DL U161 ( .A1(n170), .A2(n171), .B(P5), .Z(n175) );
  HDINVBD1 U162 ( .A(n171), .Z(n173) );
  HDINVBD1 U163 ( .A(n174), .Z(n170) );
  HDNAN2D1 U164 ( .A1(AX1), .A2(P0), .Z(n174) );
  HDMUX2D1 U165 ( .A0(AX3), .A1(A3), .SL(n176), .Z(n58) );
  HDMUX2D1 U166 ( .A0(AX2), .A1(A2), .SL(n176), .Z(n57) );
  HDMUX2D1 U167 ( .A0(AX1), .A1(A1), .SL(n176), .Z(n56) );
  HDMUX2D1 U168 ( .A0(AX0), .A1(A0), .SL(n176), .Z(n55) );
  HDINVBD1 U169 ( .A(ACVQN3), .Z(P7) );
  HDINVBD1 U170 ( .A(ACVQN2), .Z(P6) );
  HDINVBD1 U171 ( .A(ACVQN1), .Z(P5) );
  HDINVBD1 U172 ( .A(ACVQN0), .Z(P4) );
  HDOAI222DL U173 ( .A1(B3), .A2(n177), .B1(n178), .B2(n152), .C1(P3), .C2(
        n179), .Z(MRVG4VD) );
  HDAOI21D1 U174 ( .A1(n180), .A2(ACVQN0), .B(n171), .Z(n178) );
  HDNOR2D1 U175 ( .A1(n180), .A2(ACVQN0), .Z(n171) );
  HDNAN2D1 U176 ( .A1(AX0), .A2(P0), .Z(n180) );
  HDOAI222DL U177 ( .A1(P3), .A2(n152), .B1(B2), .B2(n177), .C1(P2), .C2(n179), 
        .Z(MRVG3VD) );
  HDINVBD1 U178 ( .A(MRVQN3), .Z(P3) );
  HDOAI222DL U179 ( .A1(P2), .A2(n152), .B1(B1), .B2(n177), .C1(P1), .C2(n179), 
        .Z(MRVG2VD) );
  HDINVBD1 U180 ( .A(MRVQN2), .Z(P2) );
  HDOAI222DL U181 ( .A1(P1), .A2(n152), .B1(B0), .B2(n177), .C1(P0), .C2(n179), 
        .Z(MRVG1VD) );
  HDINVBD1 U182 ( .A(MRVQN0), .Z(P0) );
  HDNAN2D1 U183 ( .A1(n152), .A2(n179), .Z(n177) );
  HDOR2D1 U184 ( .A1(n176), .A2(READY), .Z(n152) );
  HDNOR3DL U185 ( .A1(CT1), .A2(CT2), .A3(CT0), .Z(n176) );
  HDINVBD1 U186 ( .A(MRVQN1), .Z(P1) );
  HDNOR3DL U187 ( .A1(n181), .A2(START), .A3(CNTVCO2), .Z(CNTVG3VD) );
  HDAOI21D1 U188 ( .A1(CT1), .A2(CT0), .B(CT2), .Z(n181) );
  HDNOR2D1 U189 ( .A1(START), .A2(n182), .Z(CNTVG2VD) );
  HDMUXB2D1 U190 ( .A0(CT1), .A1(n183), .SL(CT0), .Z(n182) );
  HDNOR2D1 U191 ( .A1(CT1), .A2(READY), .Z(n183) );
  HDINVBD1 U192 ( .A(n179), .Z(READY) );
  HDAOI21D1 U193 ( .A1(CT0), .A2(n179), .B(START), .Z(CNTVG1VD) );
  HDNAN3M1DL U194 ( .A1(CT1), .A2(CT2), .A3(CT0), .Z(n179) );
  HDINVBD1 U195 ( .A(CNTVCON2), .Z(CNTVCO2) );
  HDNAN3D1 U196 ( .A1(CT2), .A2(CT0), .A3(CT1), .Z(CNTVCON2) );
endmodule

