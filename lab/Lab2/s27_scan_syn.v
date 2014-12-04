
module dff_test_2 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_1 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module dff_test_0 ( CK, Q, D, test_si, test_se );
  input CK, D, test_si, test_se;
  output Q;


  HDSDFPQ1 Q_reg ( .D(D), .SD(test_si), .SE(test_se), .CK(CK), .Q(Q) );
endmodule


module s27 ( GND, VDD, CK, G0, G1, G17, G2, G3, test_si, test_so, test_se );
  input GND, VDD, CK, G0, G1, G2, G3, test_si, test_se;
  output G17, test_so;
  wire   G5, G10, G6, G11, G7, G13, n6, n7, n8;
  assign test_so = G7;

  dff_test_2 DFF_0 ( .CK(CK), .Q(G5), .D(G10), .test_si(test_si), .test_se(
        test_se) );
  dff_test_0 DFF_1 ( .CK(CK), .Q(G6), .D(G11), .test_si(G5), .test_se(test_se)
         );
  dff_test_1 DFF_2 ( .CK(CK), .Q(G7), .D(G13), .test_si(G6), .test_se(test_se)
         );
  HDINVBD1 U8 ( .A(G11), .Z(G17) );
  HDNOR2D1 U9 ( .A1(G2), .A2(n6), .Z(G13) );
  HDNOR2D1 U10 ( .A1(G11), .A2(n7), .Z(G10) );
  HDNOR2D1 U11 ( .A1(n8), .A2(G5), .Z(G11) );
  HDAOI22D1 U12 ( .A1(G3), .A2(n6), .B1(G6), .B2(n7), .Z(n8) );
  HDINVBD1 U13 ( .A(G0), .Z(n7) );
  HDNOR2D1 U14 ( .A1(G1), .A2(G7), .Z(n6) );
endmodule

