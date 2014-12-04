
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
  wire   G5, G10, G6, G7, G13, n7, n8, n9, n10;
  assign test_so = G7;

  dff_test_2 DFF_0 ( .CK(CK), .Q(G5), .D(G10), .test_si(test_si), .test_se(
        test_se) );
  dff_test_0 DFF_1 ( .CK(CK), .Q(G6), .D(n10), .test_si(G5), .test_se(test_se)
         );
  dff_test_1 DFF_2 ( .CK(CK), .Q(G7), .D(G13), .test_si(G6), .test_se(test_se)
         );
  HDNOR2D1 U15 ( .A1(n10), .A2(n7), .Z(G10) );
  HDINVBD1 U16 ( .A(n10), .Z(G17) );
  HDNOR2D1 U17 ( .A1(n9), .A2(G5), .Z(n10) );
  HDAOI22D1 U18 ( .A1(G3), .A2(n8), .B1(G6), .B2(n7), .Z(n9) );
  HDNOR2D1 U19 ( .A1(G1), .A2(G7), .Z(n8) );
  HDNOR2D1 U20 ( .A1(G2), .A2(n8), .Z(G13) );
  HDINVBD1 U21 ( .A(G0), .Z(n7) );
endmodule

