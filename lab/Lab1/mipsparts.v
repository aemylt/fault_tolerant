//------------------------------------------------
// mipsparts.v
// Components used in MIPS processor
//------------------------------------------------

module alu_m(input      [31:0] a, b, 
           input      [2:0]  alucont, 
           output reg [31:0] result,
           output            zero);

  wire [31:0] b2, sum, slt;

  assign b2 = alucont[2] ? ~b:b; 
  assign sum = a + b2 + alucont[2];
  assign slt = sum[31];

  always@(*)
    case(alucont[1:0])
      2'b00: result <= a & b;
      2'b01: result <= a | b;
      2'b10: result <= sum;
      2'b11: result <= slt;
    endcase

  assign zero = (result == 32'b0);
endmodule

module alu(input      [31:0] a, b, 
           input      [2:0]  alucont, 
           output     [31:0] result,
           output            zero);

  wire [31:0] result_0, result_1, result_2, result_0_1, result_0_2, result_1_2;
  wire zero_0, zero_1, zero_2, zero_0_1, zero_0_2, zero_1_2;

  alu_m alu_0(.a(a), .b(b), .alucont(alucont), .result(result_0), .zero(zero_0));
  alu_m alu_1(.a(a), .b(b), .alucont(alucont), .result(result_1), .zero(zero_1));
  alu_m alu_2(.a(a), .b(b), .alucont(alucont), .result(result_2), .zero(zero_2));

  and and_result_0_1_0(result_0_1[0], result_0[0], result_1[0]);
  and and_result_0_2_0(result_0_2[0], result_0[0], result_2[0]);
  and and_result_1_2_0(result_1_2[0], result_1[0], result_2[0]);
  or or_result_0(result[0], result_0_1[0], result_0_2[0], result_1_2[0]);
  and and_result_0_1_1(result_0_1[1], result_0[1], result_1[1]);
  and and_result_0_2_1(result_0_2[1], result_0[1], result_2[1]);
  and and_result_1_2_1(result_1_2[1], result_1[1], result_2[1]);
  or or_result_1(result[1], result_0_1[1], result_0_2[1], result_1_2[1]);
  and and_result_0_1_2(result_0_1[2], result_0[2], result_1[2]);
  and and_result_0_2_2(result_0_2[2], result_0[2], result_2[2]);
  and and_result_1_2_2(result_1_2[2], result_1[2], result_2[2]);
  or or_result_2(result[2], result_0_1[2], result_0_2[2], result_1_2[2]);
  and and_result_0_1_3(result_0_1[3], result_0[3], result_1[3]);
  and and_result_0_2_3(result_0_2[3], result_0[3], result_2[3]);
  and and_result_1_2_3(result_1_2[3], result_1[3], result_2[3]);
  or or_result_3(result[3], result_0_1[3], result_0_2[3], result_1_2[3]);
  and and_result_0_1_4(result_0_1[4], result_0[4], result_1[4]);
  and and_result_0_2_4(result_0_2[4], result_0[4], result_2[4]);
  and and_result_1_2_4(result_1_2[4], result_1[4], result_2[4]);
  or or_result_4(result[4], result_0_1[4], result_0_2[4], result_1_2[4]);
  and and_result_0_1_5(result_0_1[5], result_0[5], result_1[5]);
  and and_result_0_2_5(result_0_2[5], result_0[5], result_2[5]);
  and and_result_1_2_5(result_1_2[5], result_1[5], result_2[5]);
  or or_result_5(result[5], result_0_1[5], result_0_2[5], result_1_2[5]);
  and and_result_0_1_6(result_0_1[6], result_0[6], result_1[6]);
  and and_result_0_2_6(result_0_2[6], result_0[6], result_2[6]);
  and and_result_1_2_6(result_1_2[6], result_1[6], result_2[6]);
  or or_result_6(result[6], result_0_1[6], result_0_2[6], result_1_2[6]);
  and and_result_0_1_7(result_0_1[7], result_0[7], result_1[7]);
  and and_result_0_2_7(result_0_2[7], result_0[7], result_2[7]);
  and and_result_1_2_7(result_1_2[7], result_1[7], result_2[7]);
  or or_result_7(result[7], result_0_1[7], result_0_2[7], result_1_2[7]);
  and and_result_0_1_8(result_0_1[8], result_0[8], result_1[8]);
  and and_result_0_2_8(result_0_2[8], result_0[8], result_2[8]);
  and and_result_1_2_8(result_1_2[8], result_1[8], result_2[8]);
  or or_result_8(result[8], result_0_1[8], result_0_2[8], result_1_2[8]);
  and and_result_0_1_9(result_0_1[9], result_0[9], result_1[9]);
  and and_result_0_2_9(result_0_2[9], result_0[9], result_2[9]);
  and and_result_1_2_9(result_1_2[9], result_1[9], result_2[9]);
  or or_result_9(result[9], result_0_1[9], result_0_2[9], result_1_2[9]);
  and and_result_0_1_10(result_0_1[10], result_0[10], result_1[10]);
  and and_result_0_2_10(result_0_2[10], result_0[10], result_2[10]);
  and and_result_1_2_10(result_1_2[10], result_1[10], result_2[10]);
  or or_result_10(result[10], result_0_1[10], result_0_2[10], result_1_2[10]);
  and and_result_0_1_11(result_0_1[11], result_0[11], result_1[11]);
  and and_result_0_2_11(result_0_2[11], result_0[11], result_2[11]);
  and and_result_1_2_11(result_1_2[11], result_1[11], result_2[11]);
  or or_result_11(result[11], result_0_1[11], result_0_2[11], result_1_2[11]);
  and and_result_0_1_12(result_0_1[12], result_0[12], result_1[12]);
  and and_result_0_2_12(result_0_2[12], result_0[12], result_2[12]);
  and and_result_1_2_12(result_1_2[12], result_1[12], result_2[12]);
  or or_result_12(result[12], result_0_1[12], result_0_2[12], result_1_2[12]);
  and and_result_0_1_13(result_0_1[13], result_0[13], result_1[13]);
  and and_result_0_2_13(result_0_2[13], result_0[13], result_2[13]);
  and and_result_1_2_13(result_1_2[13], result_1[13], result_2[13]);
  or or_result_13(result[13], result_0_1[13], result_0_2[13], result_1_2[13]);
  and and_result_0_1_14(result_0_1[14], result_0[14], result_1[14]);
  and and_result_0_2_14(result_0_2[14], result_0[14], result_2[14]);
  and and_result_1_2_14(result_1_2[14], result_1[14], result_2[14]);
  or or_result_14(result[14], result_0_1[14], result_0_2[14], result_1_2[14]);
  and and_result_0_1_15(result_0_1[15], result_0[15], result_1[15]);
  and and_result_0_2_15(result_0_2[15], result_0[15], result_2[15]);
  and and_result_1_2_15(result_1_2[15], result_1[15], result_2[15]);
  or or_result_15(result[15], result_0_1[15], result_0_2[15], result_1_2[15]);
  and and_result_0_1_16(result_0_1[16], result_0[16], result_1[16]);
  and and_result_0_2_16(result_0_2[16], result_0[16], result_2[16]);
  and and_result_1_2_16(result_1_2[16], result_1[16], result_2[16]);
  or or_result_16(result[16], result_0_1[16], result_0_2[16], result_1_2[16]);
  and and_result_0_1_17(result_0_1[17], result_0[17], result_1[17]);
  and and_result_0_2_17(result_0_2[17], result_0[17], result_2[17]);
  and and_result_1_2_17(result_1_2[17], result_1[17], result_2[17]);
  or or_result_17(result[17], result_0_1[17], result_0_2[17], result_1_2[17]);
  and and_result_0_1_18(result_0_1[18], result_0[18], result_1[18]);
  and and_result_0_2_18(result_0_2[18], result_0[18], result_2[18]);
  and and_result_1_2_18(result_1_2[18], result_1[18], result_2[18]);
  or or_result_18(result[18], result_0_1[18], result_0_2[18], result_1_2[18]);
  and and_result_0_1_19(result_0_1[19], result_0[19], result_1[19]);
  and and_result_0_2_19(result_0_2[19], result_0[19], result_2[19]);
  and and_result_1_2_19(result_1_2[19], result_1[19], result_2[19]);
  or or_result_19(result[19], result_0_1[19], result_0_2[19], result_1_2[19]);
  and and_result_0_1_20(result_0_1[20], result_0[20], result_1[20]);
  and and_result_0_2_20(result_0_2[20], result_0[20], result_2[20]);
  and and_result_1_2_20(result_1_2[20], result_1[20], result_2[20]);
  or or_result_20(result[20], result_0_1[20], result_0_2[20], result_1_2[20]);
  and and_result_0_1_21(result_0_1[21], result_0[21], result_1[21]);
  and and_result_0_2_21(result_0_2[21], result_0[21], result_2[21]);
  and and_result_1_2_21(result_1_2[21], result_1[21], result_2[21]);
  or or_result_21(result[21], result_0_1[21], result_0_2[21], result_1_2[21]);
  and and_result_0_1_22(result_0_1[22], result_0[22], result_1[22]);
  and and_result_0_2_22(result_0_2[22], result_0[22], result_2[22]);
  and and_result_1_2_22(result_1_2[22], result_1[22], result_2[22]);
  or or_result_22(result[22], result_0_1[22], result_0_2[22], result_1_2[22]);
  and and_result_0_1_23(result_0_1[23], result_0[23], result_1[23]);
  and and_result_0_2_23(result_0_2[23], result_0[23], result_2[23]);
  and and_result_1_2_23(result_1_2[23], result_1[23], result_2[23]);
  or or_result_23(result[23], result_0_1[23], result_0_2[23], result_1_2[23]);
  and and_result_0_1_24(result_0_1[24], result_0[24], result_1[24]);
  and and_result_0_2_24(result_0_2[24], result_0[24], result_2[24]);
  and and_result_1_2_24(result_1_2[24], result_1[24], result_2[24]);
  or or_result_24(result[24], result_0_1[24], result_0_2[24], result_1_2[24]);
  and and_result_0_1_25(result_0_1[25], result_0[25], result_1[25]);
  and and_result_0_2_25(result_0_2[25], result_0[25], result_2[25]);
  and and_result_1_2_25(result_1_2[25], result_1[25], result_2[25]);
  or or_result_25(result[25], result_0_1[25], result_0_2[25], result_1_2[25]);
  and and_result_0_1_26(result_0_1[26], result_0[26], result_1[26]);
  and and_result_0_2_26(result_0_2[26], result_0[26], result_2[26]);
  and and_result_1_2_26(result_1_2[26], result_1[26], result_2[26]);
  or or_result_26(result[26], result_0_1[26], result_0_2[26], result_1_2[26]);
  and and_result_0_1_27(result_0_1[27], result_0[27], result_1[27]);
  and and_result_0_2_27(result_0_2[27], result_0[27], result_2[27]);
  and and_result_1_2_27(result_1_2[27], result_1[27], result_2[27]);
  or or_result_27(result[27], result_0_1[27], result_0_2[27], result_1_2[27]);
  and and_result_0_1_28(result_0_1[28], result_0[28], result_1[28]);
  and and_result_0_2_28(result_0_2[28], result_0[28], result_2[28]);
  and and_result_1_2_28(result_1_2[28], result_1[28], result_2[28]);
  or or_result_28(result[28], result_0_1[28], result_0_2[28], result_1_2[28]);
  and and_result_0_1_29(result_0_1[29], result_0[29], result_1[29]);
  and and_result_0_2_29(result_0_2[29], result_0[29], result_2[29]);
  and and_result_1_2_29(result_1_2[29], result_1[29], result_2[29]);
  or or_result_29(result[29], result_0_1[29], result_0_2[29], result_1_2[29]);
  and and_result_0_1_30(result_0_1[30], result_0[30], result_1[30]);
  and and_result_0_2_30(result_0_2[30], result_0[30], result_2[30]);
  and and_result_1_2_30(result_1_2[30], result_1[30], result_2[30]);
  or or_result_30(result[30], result_0_1[30], result_0_2[30], result_1_2[30]);
  and and_result_0_1_31(result_0_1[31], result_0[31], result_1[31]);
  and and_result_0_2_31(result_0_2[31], result_0[31], result_2[31]);
  and and_result_1_2_31(result_1_2[31], result_1[31], result_2[31]);
  or or_result_31(result[31], result_0_1[31], result_0_2[31], result_1_2[31]);

  and and_zero_0_1(zero_0_1, zero_0, zero_1);
  and and_zero_0_2(zero_0_2, zero_0, zero_2);
  and and_zero_1_2(zero_1_2, zero_1, zero_2);
  or or_zero(zero, zero_0_1, zero_0_2, zero_1_2);

endmodule

module regfile(input         clk, 
               input         we3, 
               input  [4:0]  ra1, ra2, wa3, 
               input  [31:0] wd3, 
               output [31:0] rd1, rd2);

  reg [31:0] rf[31:0];

  // three ported register file
  // read two ports combinationally
  // write third port on rising edge of clock
  // register 0 hardwired to 0

  always @(posedge clk)
    if (we3) rf[wa3] <= wd3;	

  assign rd1 = (ra1 != 0) ? rf[ra1] : 0;
  assign rd2 = (ra2 != 0) ? rf[ra2] : 0;
endmodule

module adder(input [31:0] a, b,
             output [31:0] y);

  assign y = a + b;
endmodule

module sl2(input  [31:0] a,
           output [31:0] y);

  // shift left by 2
  assign y = {a[29:0], 2'b00};
endmodule

module signext(input  [15:0] a,
               output [31:0] y);
              
  assign y = {{16{a[15]}}, a};
endmodule

module flopr #(parameter WIDTH = 8)
              (input                  clk, reset,
               input      [WIDTH-1:0] d, 
               output reg [WIDTH-1:0] q);

  always @(posedge clk, posedge reset)
    if (reset) q <= 0;
    else       q <= d;
endmodule

module flopenr #(parameter WIDTH = 8)
                (input                  clk, reset,
                 input                  en,
                 input      [WIDTH-1:0] d, 
                 output reg [WIDTH-1:0] q);
 
  always @(posedge clk, posedge reset)
    if      (reset) q <= 0;
    else if (en)    q <= d;
endmodule

module mux2 #(parameter WIDTH = 8)
             (input  [WIDTH-1:0] d0, d1, 
              input              s, 
              output [WIDTH-1:0] y);

  assign y = s ? d1 : d0; 
endmodule
