
module addsub ( a, b, sub, sum, cout );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input sub;
  output cout;

  wire   [7:0] b_int;
  wire   [6:0] cout_int;

  FA_7 FA0 ( .a(a[0]), .b(b_int[0]), .cin(sub), .sum(sum[0]), .cout(
        cout_int[0]) );
  FA_6 FA_unit_1 ( .a(a[1]), .b(b_int[1]), .cin(cout_int[0]), .sum(sum[1]), 
        .cout(cout_int[1]) );
  FA_5 FA_unit_2 ( .a(a[2]), .b(b_int[2]), .cin(cout_int[1]), .sum(sum[2]), 
        .cout(cout_int[2]) );
  FA_4 FA_unit_3 ( .a(a[3]), .b(b_int[3]), .cin(cout_int[2]), .sum(sum[3]), 
        .cout(cout_int[3]) );
  FA_3 FA_unit_4 ( .a(a[4]), .b(b_int[4]), .cin(cout_int[3]), .sum(sum[4]), 
        .cout(cout_int[4]) );
  FA_2 FA_unit_5 ( .a(a[5]), .b(b_int[5]), .cin(cout_int[4]), .sum(sum[5]), 
        .cout(cout_int[5]) );
  FA_1 FA_unit_6 ( .a(a[6]), .b(b_int[6]), .cin(cout_int[5]), .sum(sum[6]), 
        .cout(cout_int[6]) );
  FA_0 FA_unit_7 ( .a(a[7]), .b(b_int[7]), .cin(cout_int[6]), .sum(sum[7]), 
        .cout(cout) );
  HDEXOR2D1 U9 ( .A1(sub), .A2(b[7]), .Z(b_int[7]) );
  HDEXOR2D1 U10 ( .A1(sub), .A2(b[6]), .Z(b_int[6]) );
  HDEXOR2D1 U11 ( .A1(sub), .A2(b[5]), .Z(b_int[5]) );
  HDEXOR2D1 U12 ( .A1(sub), .A2(b[4]), .Z(b_int[4]) );
  HDEXOR2D1 U13 ( .A1(sub), .A2(b[3]), .Z(b_int[3]) );
  HDEXOR2D1 U14 ( .A1(sub), .A2(b[2]), .Z(b_int[2]) );
  HDEXOR2D1 U15 ( .A1(sub), .A2(b[1]), .Z(b_int[1]) );
  HDEXOR2D1 U16 ( .A1(sub), .A2(b[0]), .Z(b_int[0]) );
endmodule

