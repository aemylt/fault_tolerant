
module FA_0 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n3;

  HDEXOR2D2 U4 ( .A1(cin), .A2(n3), .Z(sum) );
  HDEXOR2D2 U6 ( .A1(a), .A2(b), .Z(n3) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n3), .B2(cin), .Z(cout) );
endmodule


module FA_1 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n4;

  HDEXOR2D2 U4 ( .A1(cin), .A2(n4), .Z(sum) );
  HDEXOR2D2 U6 ( .A1(a), .A2(b), .Z(n4) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n4), .B2(cin), .Z(cout) );
endmodule


module FA_2 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n4;

  HDEXOR2D2 U4 ( .A1(cin), .A2(n4), .Z(sum) );
  HDEXOR2D2 U6 ( .A1(a), .A2(b), .Z(n4) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n4), .B2(cin), .Z(cout) );
endmodule


module FA_3 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n4;

  HDEXOR2D2 U4 ( .A1(cin), .A2(n4), .Z(sum) );
  HDEXOR2D2 U6 ( .A1(a), .A2(b), .Z(n4) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n4), .B2(cin), .Z(cout) );
endmodule


module FA_4 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n4;

  HDEXOR2D2 U4 ( .A1(cin), .A2(n4), .Z(sum) );
  HDEXOR2D2 U6 ( .A1(a), .A2(b), .Z(n4) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n4), .B2(cin), .Z(cout) );
endmodule


module FA_5 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n4;

  HDEXOR2D2 U4 ( .A1(cin), .A2(n4), .Z(sum) );
  HDEXOR2D2 U6 ( .A1(a), .A2(b), .Z(n4) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n4), .B2(cin), .Z(cout) );
endmodule


module FA_6 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n4;

  HDEXOR2D2 U4 ( .A1(cin), .A2(n4), .Z(sum) );
  HDEXOR2D2 U6 ( .A1(a), .A2(b), .Z(n4) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n4), .B2(cin), .Z(cout) );
endmodule


module FA_7 ( a, b, cin, sum, cout );
  input a, b, cin;
  output sum, cout;
  wire   n4;

  HDEXOR2D2 U4 ( .A1(cin), .A2(n4), .Z(sum) );
  HDEXOR2D2 U6 ( .A1(a), .A2(b), .Z(n4) );
  HDAO22DL U5 ( .A1(b), .A2(a), .B1(n4), .B2(cin), .Z(cout) );
endmodule


module addsub ( a, b, clk, sub, sum, cout, test_si, test_se );
  input [7:0] a;
  input [7:0] b;
  output [7:0] sum;
  input clk, sub, test_si, test_se;
  output cout;

  wire   [7:0] bin;
  wire   [7:0] b_int;
  wire   [7:0] cout_int;
  wire   [7:0] sumout;
  wire   [7:0] ain;

  FA_0 FA0 ( .a(ain[0]), .b(b_int[0]), .cin(sub), .sum(sumout[0]), .cout(
        cout_int[0]) );
  FA_7 FA_unit_1 ( .a(ain[1]), .b(b_int[1]), .cin(cout_int[0]), .sum(sumout[1]), .cout(cout_int[1]) );
  FA_6 FA_unit_2 ( .a(ain[2]), .b(b_int[2]), .cin(cout_int[1]), .sum(sumout[2]), .cout(cout_int[2]) );
  FA_5 FA_unit_3 ( .a(ain[3]), .b(b_int[3]), .cin(cout_int[2]), .sum(sumout[3]), .cout(cout_int[3]) );
  FA_4 FA_unit_4 ( .a(ain[4]), .b(b_int[4]), .cin(cout_int[3]), .sum(sumout[4]), .cout(cout_int[4]) );
  FA_3 FA_unit_5 ( .a(ain[5]), .b(b_int[5]), .cin(cout_int[4]), .sum(sumout[5]), .cout(cout_int[5]) );
  FA_2 FA_unit_6 ( .a(ain[6]), .b(b_int[6]), .cin(cout_int[5]), .sum(sumout[6]), .cout(cout_int[6]) );
  FA_1 FA_unit_7 ( .a(ain[7]), .b(b_int[7]), .cin(cout_int[6]), .sum(sumout[7]), .cout(cout_int[7]) );
  HDEXOR2D2 U19 ( .A1(sub), .A2(bin[7]), .Z(b_int[7]) );
  HDEXOR2D2 U20 ( .A1(sub), .A2(bin[6]), .Z(b_int[6]) );
  HDEXOR2D2 U21 ( .A1(sub), .A2(bin[5]), .Z(b_int[5]) );
  HDEXOR2D2 U22 ( .A1(sub), .A2(bin[4]), .Z(b_int[4]) );
  HDEXOR2D2 U23 ( .A1(sub), .A2(bin[3]), .Z(b_int[3]) );
  HDEXOR2D2 U24 ( .A1(sub), .A2(bin[2]), .Z(b_int[2]) );
  HDEXOR2D2 U25 ( .A1(sub), .A2(bin[1]), .Z(b_int[1]) );
  HDEXOR2D2 U26 ( .A1(sub), .A2(bin[0]), .Z(b_int[0]) );
  HDSDFPQ1 \bin_reg[7]  ( .D(b[7]), .SD(bin[6]), .SE(test_se), .CK(clk), .Q(
        bin[7]) );
  HDSDFPQ1 \bin_reg[6]  ( .D(b[6]), .SD(bin[5]), .SE(test_se), .CK(clk), .Q(
        bin[6]) );
  HDSDFPQ1 \ain_reg[7]  ( .D(a[7]), .SD(ain[6]), .SE(test_se), .CK(clk), .Q(
        ain[7]) );
  HDSDFPQ1 \ain_reg[6]  ( .D(a[6]), .SD(ain[5]), .SE(test_se), .CK(clk), .Q(
        ain[6]) );
  HDSDFPQ1 \ain_reg[5]  ( .D(a[5]), .SD(ain[4]), .SE(test_se), .CK(clk), .Q(
        ain[5]) );
  HDSDFPQ1 \bin_reg[5]  ( .D(b[5]), .SD(bin[4]), .SE(test_se), .CK(clk), .Q(
        bin[5]) );
  HDSDFPQ1 \bin_reg[4]  ( .D(b[4]), .SD(bin[3]), .SE(test_se), .CK(clk), .Q(
        bin[4]) );
  HDSDFPQ1 \bin_reg[3]  ( .D(b[3]), .SD(bin[2]), .SE(test_se), .CK(clk), .Q(
        bin[3]) );
  HDSDFPQ1 \bin_reg[2]  ( .D(b[2]), .SD(bin[1]), .SE(test_se), .CK(clk), .Q(
        bin[2]) );
  HDSDFPQ1 \bin_reg[1]  ( .D(b[1]), .SD(bin[0]), .SE(test_se), .CK(clk), .Q(
        bin[1]) );
  HDSDFPQ1 \ain_reg[4]  ( .D(a[4]), .SD(ain[3]), .SE(test_se), .CK(clk), .Q(
        ain[4]) );
  HDSDFPQ1 \ain_reg[3]  ( .D(a[3]), .SD(ain[2]), .SE(test_se), .CK(clk), .Q(
        ain[3]) );
  HDSDFPQ1 \ain_reg[2]  ( .D(a[2]), .SD(ain[1]), .SE(test_se), .CK(clk), .Q(
        ain[2]) );
  HDSDFPQ1 \ain_reg[1]  ( .D(a[1]), .SD(ain[0]), .SE(test_se), .CK(clk), .Q(
        ain[1]) );
  HDSDFPQ1 \ain_reg[0]  ( .D(a[0]), .SD(test_si), .SE(test_se), .CK(clk), .Q(
        ain[0]) );
  HDSDFPQ1 \bin_reg[0]  ( .D(b[0]), .SD(ain[7]), .SE(test_se), .CK(clk), .Q(
        bin[0]) );
  HDSDFPQ1 \sum_reg[0]  ( .D(sumout[0]), .SD(cout), .SE(test_se), .CK(clk), 
        .Q(sum[0]) );
  HDSDFPQ1 \sum_reg[1]  ( .D(sumout[1]), .SD(sum[0]), .SE(test_se), .CK(clk), 
        .Q(sum[1]) );
  HDSDFPQ1 \sum_reg[2]  ( .D(sumout[2]), .SD(sum[1]), .SE(test_se), .CK(clk), 
        .Q(sum[2]) );
  HDSDFPQ1 \sum_reg[3]  ( .D(sumout[3]), .SD(sum[2]), .SE(test_se), .CK(clk), 
        .Q(sum[3]) );
  HDSDFPQ1 \sum_reg[4]  ( .D(sumout[4]), .SD(sum[3]), .SE(test_se), .CK(clk), 
        .Q(sum[4]) );
  HDSDFPQ1 \sum_reg[5]  ( .D(sumout[5]), .SD(sum[4]), .SE(test_se), .CK(clk), 
        .Q(sum[5]) );
  HDSDFPQ1 \sum_reg[6]  ( .D(sumout[6]), .SD(sum[5]), .SE(test_se), .CK(clk), 
        .Q(sum[6]) );
  HDSDFPQ1 \sum_reg[7]  ( .D(sumout[7]), .SD(sum[6]), .SE(test_se), .CK(clk), 
        .Q(sum[7]) );
  HDSDFPQ1 cout_reg ( .D(cout_int[7]), .SD(bin[7]), .SE(test_se), .CK(clk), 
        .Q(cout) );
endmodule

