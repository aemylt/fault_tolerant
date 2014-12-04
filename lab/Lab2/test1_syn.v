
module test1 ( A, B, C, E, L );
  input A, B, C, E;
  output L;
  wire   n3;

  HDAOI31M10D1 U3 ( .A1(A), .A2(B), .A3(C), .B(n3), .Z(L) );
  HDINVBD1 U4 ( .A(E), .Z(n3) );
endmodule

