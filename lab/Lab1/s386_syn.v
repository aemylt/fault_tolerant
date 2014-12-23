
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


module s386 ( GND, VDD, CK, v0, v1, v13_D_10, v13_D_11, v13_D_12, v13_D_6, 
        v13_D_7, v13_D_8, v13_D_9, v2, v3, v4, v5, v6, test_si, test_so, 
        test_se );
  input GND, VDD, CK, v0, v1, v2, v3, v4, v5, v6, test_si, test_se;
  output v13_D_10, v13_D_11, v13_D_12, v13_D_6, v13_D_7, v13_D_8, v13_D_9,
         test_so;
  wire   v12, v11, v10, v9, v8, v7, Lv13_D_12, Lv13_D_11, Lv13_D_10, Lv13_D_9,
         Lv13_D_8, Lv13_D_7, Lv13_D_6, Lv13_D_5, Lv13_D_4, Lv13_D_3, Lv13_D_2,
         Lv13_D_1, Lv13_D_0, n152, n153, n154, n155, n156, n157, n158, n159,
         n160, n161, n162, n163, n164, n165, n166, n167, n168, n169, n170,
         n171, n172, n173, n174, n175, n176, n177, n178, n179, n180, n181,
         n182, n183, n184, n185, n186, n187, n188, n189, n190, n191, n192,
         n193, n194, n195, n196, n197, n198, n199, n200, n201, n202, n203,
         n204, n205;
  assign test_so = v7;
  assign v13_D_12 = Lv13_D_12;
  assign v13_D_11 = Lv13_D_11;
  assign v13_D_10 = Lv13_D_10;
  assign v13_D_9 = Lv13_D_9;
  assign v13_D_8 = Lv13_D_8;
  assign v13_D_7 = Lv13_D_7;
  assign v13_D_6 = Lv13_D_6;

  dff_test_6 DFF_0 ( .CK(CK), .Q(v12), .D(Lv13_D_5), .test_si(test_si), 
        .test_se(test_se) );
  dff_test_1 DFF_1 ( .CK(CK), .Q(v11), .D(Lv13_D_4), .test_si(v12), .test_se(
        test_se) );
  dff_test_2 DFF_2 ( .CK(CK), .Q(v10), .D(Lv13_D_3), .test_si(v11), .test_se(
        test_se) );
  dff_test_3 DFF_3 ( .CK(CK), .Q(v9), .D(Lv13_D_2), .test_si(v10), .test_se(
        test_se) );
  dff_test_4 DFF_4 ( .CK(CK), .Q(v8), .D(Lv13_D_1), .test_si(v9), .test_se(
        test_se) );
  dff_test_5 DFF_5 ( .CK(CK), .Q(v7), .D(Lv13_D_0), .test_si(v8), .test_se(
        test_se) );
  HDOAI21DL U124 ( .A1(n152), .A2(n153), .B(n154), .Z(Lv13_D_9) );
  HDNAN3D1 U125 ( .A1(v4), .A2(n155), .A3(v8), .Z(n153) );
  HDNAN4D1 U126 ( .A1(n156), .A2(n157), .A3(n158), .A4(n159), .Z(n152) );
  HDNOR2D1 U127 ( .A1(v6), .A2(n154), .Z(Lv13_D_8) );
  HDOAI32DL U128 ( .A1(n159), .A2(v8), .A3(n160), .B1(n161), .B2(n162), .Z(
        Lv13_D_7) );
  HDOAI22DL U129 ( .A1(n163), .A2(n164), .B1(n165), .B2(n166), .Z(Lv13_D_6) );
  HDOAI21DL U130 ( .A1(v2), .A2(v7), .B(n167), .Z(n166) );
  HDOAI31DL U131 ( .A1(n168), .A2(v3), .A3(n169), .B(n157), .Z(n165) );
  HDOAI31DL U132 ( .A1(n170), .A2(n168), .A3(n161), .B(n163), .Z(Lv13_D_5) );
  HDMUXB2D1 U133 ( .A0(v7), .A1(n171), .SL(n157), .Z(n170) );
  HDINVBD1 U134 ( .A(v11), .Z(n157) );
  HDAND2D1 U135 ( .A1(n172), .A2(v3), .Z(n171) );
  HDOAI21DL U136 ( .A1(v5), .A2(n163), .B(n173), .Z(Lv13_D_4) );
  HDOAI31DL U137 ( .A1(n174), .A2(v7), .A3(n175), .B(n167), .Z(n173) );
  HDNOR3DL U138 ( .A1(n176), .A2(v8), .A3(v11), .Z(n174) );
  HDNAN4D1 U139 ( .A1(v12), .A2(v11), .A3(n177), .A4(n178), .Z(n163) );
  HDOAI21DL U140 ( .A1(v0), .A2(n179), .B(n180), .Z(Lv13_D_3) );
  HDAOI21D1 U141 ( .A1(n181), .A2(n182), .B(n183), .Z(n180) );
  HDOAI21DL U142 ( .A1(v5), .A2(n184), .B(v9), .Z(n182) );
  HDOAI21DL U143 ( .A1(v5), .A2(n185), .B(n186), .Z(Lv13_D_2) );
  HDAOI21D1 U144 ( .A1(n181), .A2(v0), .B(n183), .Z(n186) );
  HDINVBD1 U145 ( .A(n187), .Z(n183) );
  HDNOR3DL U146 ( .A1(n185), .A2(n184), .A3(n164), .Z(Lv13_D_12) );
  HDNAN3D1 U147 ( .A1(n188), .A2(n189), .A3(v9), .Z(n185) );
  HDOAI211DL U148 ( .A1(n190), .A2(n191), .B(n187), .C(n154), .Z(Lv13_D_11) );
  HDNAN4D1 U149 ( .A1(v10), .A2(v0), .A3(n188), .A4(n192), .Z(n154) );
  HDNAN3D1 U150 ( .A1(n193), .A2(n184), .A3(n194), .Z(n187) );
  HDAOI22D1 U151 ( .A1(v12), .A2(n195), .B1(v0), .B2(n156), .Z(n194) );
  HDOAI21DL U152 ( .A1(v0), .A2(n195), .B(v9), .Z(n193) );
  HDINVBD1 U153 ( .A(n155), .Z(n191) );
  HDNOR3DL U154 ( .A1(v12), .A2(v9), .A3(v10), .Z(n155) );
  HDAOI21D1 U155 ( .A1(n196), .A2(v11), .B(n175), .Z(n190) );
  HDNOR3M1DL U156 ( .A1(n181), .A2(n197), .A3(n192), .Z(Lv13_D_10) );
  HDINVBD1 U157 ( .A(v9), .Z(n192) );
  HDAOI21D1 U158 ( .A1(v5), .A2(v0), .B(n184), .Z(n197) );
  HDINVBD1 U159 ( .A(v10), .Z(n184) );
  HDNOR2D1 U160 ( .A1(n156), .A2(n179), .Z(n181) );
  HDINVBD1 U161 ( .A(n188), .Z(n179) );
  HDNOR3DL U162 ( .A1(v11), .A2(v12), .A3(n195), .Z(n188) );
  HDINVBD1 U163 ( .A(n178), .Z(n195) );
  HDINVBD1 U164 ( .A(v1), .Z(n156) );
  HDOAI22DL U165 ( .A1(v11), .A2(n198), .B1(n160), .B2(n199), .Z(Lv13_D_1) );
  HDMUXB2D1 U166 ( .A0(n200), .A1(v8), .SL(n159), .Z(n199) );
  HDNOR2D1 U167 ( .A1(v8), .A2(n164), .Z(n200) );
  HDINVBD1 U168 ( .A(v5), .Z(n164) );
  HDAOI32D1 U169 ( .A1(n177), .A2(n178), .A3(v12), .B1(n167), .B2(n201), .Z(
        n198) );
  HDNAN2M1D1 U170 ( .A1(n169), .A2(n202), .Z(n201) );
  HDMUXB2D1 U171 ( .A0(n203), .A1(n204), .SL(n168), .Z(n202) );
  HDNOR2D1 U172 ( .A1(n205), .A2(n176), .Z(n204) );
  HDNOR2D1 U173 ( .A1(n172), .A2(n158), .Z(n203) );
  HDINVBD1 U174 ( .A(v3), .Z(n158) );
  HDNOR2D1 U175 ( .A1(n176), .A2(v7), .Z(n172) );
  HDINVBD1 U176 ( .A(v2), .Z(n176) );
  HDNOR2D1 U177 ( .A1(n159), .A2(n205), .Z(n169) );
  HDINVBD1 U178 ( .A(v4), .Z(n205) );
  HDNOR2D1 U179 ( .A1(v7), .A2(v8), .Z(n178) );
  HDOAI22DL U180 ( .A1(n161), .A2(n162), .B1(n196), .B2(n160), .Z(Lv13_D_0) );
  HDNAN2D1 U181 ( .A1(v11), .A2(n167), .Z(n160) );
  HDNOR2D1 U182 ( .A1(n159), .A2(n168), .Z(n196) );
  HDINVBD1 U183 ( .A(v7), .Z(n159) );
  HDINVBD1 U184 ( .A(n175), .Z(n162) );
  HDNOR4D1 U185 ( .A1(n168), .A2(v11), .A3(v3), .A4(v4), .Z(n175) );
  HDINVBD1 U186 ( .A(v8), .Z(n168) );
  HDINVBD1 U187 ( .A(n167), .Z(n161) );
  HDNOR2M1DL U188 ( .A1(n177), .A2(v12), .Z(n167) );
  HDNOR4D1 U189 ( .A1(n189), .A2(v1), .A3(v10), .A4(v9), .Z(n177) );
  HDINVBD1 U190 ( .A(v0), .Z(n189) );
endmodule

