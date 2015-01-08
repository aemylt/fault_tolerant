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
           output reg [31:0] result,
           output reg        zero);

  wire [31:0] result_0, result_1, result_2, result_3, result_4, result_5, result_6, result_0_out, result_1_out, result_2_out, result_3_out, result_4_out, result_5_out, result_6_out;
  wire zero_0, zero_1, zero_2, zero_3, zero_4, zero_5, zero_6, zero_0_out, zero_1_out, zero_2_out, zero_3_out, zero_4_out, zero_5_out, zero_6_out;
  reg [31:0] switchr_0 = 32'd4294967295, switchr_1 = 32'd4294967295, switchr_2 = 32'd4294967295, switchr_3 = 32'd4294967295, switchr_4 = 32'd4294967295, switchr_5 = 32'd4294967295, switchr_6 = 32'd4294967295;
  reg switchz_0 = 1'b1, switchz_1 = 1'b1, switchz_2 = 1'b1, switchz_3 = 1'b1, switchz_4 = 1'b1, switchz_5 = 1'b1, switchz_6 = 1'b1;

  alu_m alu_0(.a(a), .b(b), .alucont(alucont), .result(result_0_out), .zero(zero_0_out));
  alu_m alu_1(.a(a), .b(b), .alucont(alucont), .result(result_1_out), .zero(zero_1_out));
  alu_m alu_2(.a(a), .b(b), .alucont(alucont), .result(result_2_out), .zero(zero_2_out));
  alu_m alu_3(.a(a), .b(b), .alucont(alucont), .result(result_3_out), .zero(zero_3_out));
  alu_m alu_4(.a(a), .b(b), .alucont(alucont), .result(result_4_out), .zero(zero_4_out));
  alu_m alu_5(.a(a), .b(b), .alucont(alucont), .result(result_5_out), .zero(zero_5_out));
  alu_m alu_6(.a(a), .b(b), .alucont(alucont), .result(result_6_out), .zero(zero_6_out));

  genvar i;
  generate
    for (i = 0; i < 32; i = i + 1)
      begin : switch
        and and_result_0(result_0[i], result_0_out[i], switchr_0[i]);
        and and_result_1(result_1[i], result_1_out[i], switchr_1[i]);
        and and_result_2(result_2[i], result_2_out[i], switchr_2[i]);
        and and_result_3(result_3[i], result_3_out[i], switchr_3[i]);
        and and_result_4(result_4[i], result_4_out[i], switchr_4[i]);
        and and_result_5(result_5[i], result_5_out[i], switchr_5[i]);
        and and_result_6(result_6[i], result_6_out[i], switchr_6[i]);
      end
  endgenerate

  and and_zero_0(zero_0, zero_0_out, switchz_0);
  and and_zero_1(zero_1, zero_1_out, switchz_1);
  and and_zero_2(zero_2, zero_2_out, switchz_2);
  and and_zero_3(zero_3, zero_3_out, switchz_3);
  and and_zero_4(zero_4, zero_4_out, switchz_4);
  and and_zero_5(zero_5, zero_5_out, switchz_5);
  and and_zero_6(zero_6, zero_6_out, switchz_6);

  always@(*)
    result = (result_0 & result_1) | (result_0 & result_2) | (result_0 & result_3) | (result_0 & result_4) | (result_0 & result_5) | (result_0 & result_6) | (result_1 & result_2) | (result_1 & result_3) | (result_1 & result_4) | (result_1 & result_5) | (result_1 & result_6) | (result_2 & result_3) | (result_2 & result_4) | (result_2 & result_5) | (result_2 & result_6) | (result_3 & result_4) | (result_3 & result_5) | (result_3 & result_6) | (result_4 & result_5) | (result_4 & result_6) | (result_5 & result_6);

  always@(*)
    zero = (zero_0 & zero_1) | (zero_0 & zero_2) | (zero_0 & zero_3) | (zero_0 & zero_4) | (zero_0 & zero_5) | (zero_0 & zero_6) | (zero_1 & zero_2) | (zero_1 & zero_3) | (zero_1 & zero_4) | (zero_1 & zero_5) | (zero_1 & zero_6) | (zero_2 & zero_3) | (zero_2 & zero_4) | (zero_2 & zero_5) | (zero_2 & zero_6) | (zero_3 & zero_4) | (zero_3 & zero_5) | (zero_3 & zero_6) | (zero_4 & zero_5) | (zero_4 & zero_6) | (zero_5 & zero_6);

  always@(result)
    switchr_0 = switchr_0 & ~(result_0 ^ result);

  always@(result)
    switchr_1 = switchr_1 & ~(result_1 ^ result);

  always@(result)
    switchr_2 = switchr_2 & ~(result_2 ^ result);

  always@(result)
    switchr_3 = switchr_3 & ~(result_3 ^ result);

  always@(result)
    switchr_4 = switchr_4 & ~(result_4 ^ result);

  always@(result)
    switchr_5 = switchr_5 & ~(result_5 ^ result);

  always@(result)
    switchr_6 = switchr_6 & ~(result_6 ^ result);

  always@(zero)
    switchz_0 = switchz_0 & ~(zero_0 ^ zero);

  always@(zero)
    switchz_1 = switchz_1 & ~(zero_1 ^ zero);

  always@(zero)
    switchz_2 = switchz_2 & ~(zero_2 ^ zero);

  always@(zero)
    switchz_3 = switchz_3 & ~(zero_3 ^ zero);

  always@(zero)
    switchz_4 = switchz_4 & ~(zero_4 ^ zero);

  always@(zero)
    switchz_5 = switchz_5 & ~(zero_5 ^ zero);

  always@(zero)
    switchz_6 = switchz_6 & ~(zero_6 ^ zero);

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
