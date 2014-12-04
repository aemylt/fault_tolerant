
module dff_test_0 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ2 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_1 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ2 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_2 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ2 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module s27 ( GND, VDD, CK, G0, G1, G17, G2, G3, test_si, test_so, test_se );
  input GND, VDD, CK, G0, G1, G2, G3, test_si, test_se;
  output G17, test_so;
  wire   G5, G10, G6, G7, G13, n39, n44, n45, n46, n47, n48, n49, n50, n52,
         n53, n54, n55, n56, n57, n58;
  assign test_so = G7;

  dff_test_2 DFF_0 ( .CK(CK), .Q(G5), .D(G10), .test_si(test_si), .test_se(
        test_se) );
  dff_test_0 DFF_1 ( .CK(CK), .Q(G6), .D(n39), .test_si(G5), .test_se(test_se)
         );
  dff_test_1 DFF_2 ( .CK(CK), .Q(G7), .D(G13), .test_si(G6), .test_se(test_se)
         );
  HDINVDL U38 ( .A(n47), .Z(n44) );
  HDINVBD1 U39 ( .A(n44), .Z(n45) );
  HDINVD3 U40 ( .A(G5), .Z(n57) );
  HDOAI31D2 U41 ( .A1(n48), .A2(G7), .A3(n54), .B(n53), .Z(n39) );
  HDAOI21D2 U42 ( .A1(n58), .A2(n46), .B(G2), .Z(G13) );
  HDINVBD32 U43 ( .A(G1), .Z(n46) );
  HDINVBD2 U44 ( .A(G7), .Z(n58) );
  HDAOI31D2 U45 ( .A1(n47), .A2(n58), .A3(n56), .B(n55), .Z(G10) );
  HDINVD1 U46 ( .A(G5), .Z(n47) );
  HDINVD2 U47 ( .A(n57), .Z(n48) );
  HDNAN3M1D2 U48 ( .A1(G0), .A2(G6), .A3(n57), .Z(n53) );
  HDNAN3DL U49 ( .A1(n55), .A2(n45), .A3(G6), .Z(n49) );
  HDINVDL U50 ( .A(n58), .Z(n50) );
  HDOA31DL U51 ( .A1(n48), .A2(n54), .A3(n50), .B(n49), .Z(G17) );
  HDINVBD1 U52 ( .A(G1), .Z(n52) );
  HDNAN2D1 U53 ( .A1(G3), .A2(n52), .Z(n54) );
  HDINVBD1 U54 ( .A(G0), .Z(n55) );
  HDINVBD1 U55 ( .A(n54), .Z(n56) );
endmodule

