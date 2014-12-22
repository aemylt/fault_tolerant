
module dff_test_0 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


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


module s27 ( GND, VDD, CK, G0, G1, G17, G2, G3, test_si, test_so, test_se );
  input GND, VDD, CK, G0, G1, G2, G3, test_si, test_se;
  output G17, test_so;
  wire   G5, G10, G6, G7, G13, n1, n14, n15, n16, n17;
  assign test_so = G7;

  dff_test_2 DFF_0 ( .CK(CK), .Q(G5), .D(G10), .test_si(test_si), .test_se(
        test_se) );
  dff_test_0 DFF_1 ( .CK(CK), .Q(G6), .D(n1), .test_si(G5), .test_se(test_se)
         );
  dff_test_1 DFF_2 ( .CK(CK), .Q(G7), .D(G13), .test_si(G6), .test_se(test_se)
         );
  HDINVBD1 U16 ( .A(n1), .Z(G17) );
  HDAOI21D1 U17 ( .A1(n14), .A2(n15), .B(G2), .Z(G13) );
  HDNOR2D1 U18 ( .A1(n1), .A2(n16), .Z(G10) );
  HDNOR2D1 U19 ( .A1(G5), .A2(n17), .Z(n1) );
  HDAOI32D1 U20 ( .A1(n15), .A2(n14), .A3(G3), .B1(G6), .B2(n16), .Z(n17) );
  HDINVBD1 U21 ( .A(G0), .Z(n16) );
  HDINVBD1 U22 ( .A(G7), .Z(n14) );
  HDINVBD1 U23 ( .A(G1), .Z(n15) );
endmodule

