
module test2 ( A, B, C, D, Y );
  input A, B, C, D;
  output Y;
  wire   n2;

  HDEXOR3D1 U3 ( .A1(B), .A2(A), .A3(n2), .Z(Y) );
  HDEXOR2D1 U4 ( .A1(D), .A2(C), .Z(n2) );
endmodule

