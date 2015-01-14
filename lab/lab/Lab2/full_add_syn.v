
module fulladder ( a, b, cin, s, cout );
  input a, b, cin;
  output s, cout;
  wire   n2;

  HDEXOR2D1 U4 ( .A1(cin), .A2(n2), .Z(s) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n2), .B2(cin), .Z(cout) );
  HDEXOR2D1 U6 ( .A1(a), .A2(b), .Z(n2) );
endmodule

