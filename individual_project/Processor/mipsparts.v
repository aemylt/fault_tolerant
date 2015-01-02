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

  wire [31:0] result_0, result_1, result_2, result_3, result_4, result_5, result_6, result_7, result_8;
  wire zero_0, zero_1, zero_2, zero_3, zero_4, zero_5, zero_6, zero_7, zero_8;

  alu_m alu_0(.a(a), .b(b), .alucont(alucont), .result(result_0), .zero(zero_0));
  alu_m alu_1(.a(a), .b(b), .alucont(alucont), .result(result_1), .zero(zero_1));
  alu_m alu_2(.a(a), .b(b), .alucont(alucont), .result(result_2), .zero(zero_2));
  alu_m alu_3(.a(a), .b(b), .alucont(alucont), .result(result_3), .zero(zero_3));
  alu_m alu_4(.a(a), .b(b), .alucont(alucont), .result(result_4), .zero(zero_4));
  alu_m alu_5(.a(a), .b(b), .alucont(alucont), .result(result_5), .zero(zero_5));
  alu_m alu_6(.a(a), .b(b), .alucont(alucont), .result(result_6), .zero(zero_6));
  alu_m alu_7(.a(a), .b(b), .alucont(alucont), .result(result_7), .zero(zero_7));
  alu_m alu_8(.a(a), .b(b), .alucont(alucont), .result(result_8), .zero(zero_8));

  always@(*)
    result = (result_0 & result_1 & result_2 & result_3 & result_4) | (result_0 & result_1 & result_2 & result_3 & result_5) | (result_0 & result_1 & result_2 & result_3 & result_6) | (result_0 & result_1 & result_2 & result_3 & result_7) | (result_0 & result_1 & result_2 & result_3 & result_8) | (result_0 & result_1 & result_2 & result_4 & result_5) | (result_0 & result_1 & result_2 & result_4 & result_6) | (result_0 & result_1 & result_2 & result_4 & result_7) | (result_0 & result_1 & result_2 & result_4 & result_8) | (result_0 & result_1 & result_2 & result_5 & result_6) | (result_0 & result_1 & result_2 & result_5 & result_7) | (result_0 & result_1 & result_2 & result_5 & result_8) | (result_0 & result_1 & result_2 & result_6 & result_7) | (result_0 & result_1 & result_2 & result_6 & result_8) | (result_0 & result_1 & result_2 & result_7 & result_8) | (result_0 & result_1 & result_3 & result_4 & result_5) | (result_0 & result_1 & result_3 & result_4 & result_6) | (result_0 & result_1 & result_3 & result_4 & result_7) | (result_0 & result_1 & result_3 & result_4 & result_8) | (result_0 & result_1 & result_3 & result_5 & result_6) | (result_0 & result_1 & result_3 & result_5 & result_7) | (result_0 & result_1 & result_3 & result_5 & result_8) | (result_0 & result_1 & result_3 & result_6 & result_7) | (result_0 & result_1 & result_3 & result_6 & result_8) | (result_0 & result_1 & result_3 & result_7 & result_8) | (result_0 & result_1 & result_4 & result_5 & result_6) | (result_0 & result_1 & result_4 & result_5 & result_7) | (result_0 & result_1 & result_4 & result_5 & result_8) | (result_0 & result_1 & result_4 & result_6 & result_7) | (result_0 & result_1 & result_4 & result_6 & result_8) | (result_0 & result_1 & result_4 & result_7 & result_8) | (result_0 & result_1 & result_5 & result_6 & result_7) | (result_0 & result_1 & result_5 & result_6 & result_8) | (result_0 & result_1 & result_5 & result_7 & result_8) | (result_0 & result_1 & result_6 & result_7 & result_8) | (result_0 & result_2 & result_3 & result_4 & result_5) | (result_0 & result_2 & result_3 & result_4 & result_6) | (result_0 & result_2 & result_3 & result_4 & result_7) | (result_0 & result_2 & result_3 & result_4 & result_8) | (result_0 & result_2 & result_3 & result_5 & result_6) | (result_0 & result_2 & result_3 & result_5 & result_7) | (result_0 & result_2 & result_3 & result_5 & result_8) | (result_0 & result_2 & result_3 & result_6 & result_7) | (result_0 & result_2 & result_3 & result_6 & result_8) | (result_0 & result_2 & result_3 & result_7 & result_8) | (result_0 & result_2 & result_4 & result_5 & result_6) | (result_0 & result_2 & result_4 & result_5 & result_7) | (result_0 & result_2 & result_4 & result_5 & result_8) | (result_0 & result_2 & result_4 & result_6 & result_7) | (result_0 & result_2 & result_4 & result_6 & result_8) | (result_0 & result_2 & result_4 & result_7 & result_8) | (result_0 & result_2 & result_5 & result_6 & result_7) | (result_0 & result_2 & result_5 & result_6 & result_8) | (result_0 & result_2 & result_5 & result_7 & result_8) | (result_0 & result_2 & result_6 & result_7 & result_8) | (result_0 & result_3 & result_4 & result_5 & result_6) | (result_0 & result_3 & result_4 & result_5 & result_7) | (result_0 & result_3 & result_4 & result_5 & result_8) | (result_0 & result_3 & result_4 & result_6 & result_7) | (result_0 & result_3 & result_4 & result_6 & result_8) | (result_0 & result_3 & result_4 & result_7 & result_8) | (result_0 & result_3 & result_5 & result_6 & result_7) | (result_0 & result_3 & result_5 & result_6 & result_8) | (result_0 & result_3 & result_5 & result_7 & result_8) | (result_0 & result_3 & result_6 & result_7 & result_8) | (result_0 & result_4 & result_5 & result_6 & result_7) | (result_0 & result_4 & result_5 & result_6 & result_8) | (result_0 & result_4 & result_5 & result_7 & result_8) | (result_0 & result_4 & result_6 & result_7 & result_8) | (result_0 & result_5 & result_6 & result_7 & result_8) | (result_1 & result_2 & result_3 & result_4 & result_5) | (result_1 & result_2 & result_3 & result_4 & result_6) | (result_1 & result_2 & result_3 & result_4 & result_7) | (result_1 & result_2 & result_3 & result_4 & result_8) | (result_1 & result_2 & result_3 & result_5 & result_6) | (result_1 & result_2 & result_3 & result_5 & result_7) | (result_1 & result_2 & result_3 & result_5 & result_8) | (result_1 & result_2 & result_3 & result_6 & result_7) | (result_1 & result_2 & result_3 & result_6 & result_8) | (result_1 & result_2 & result_3 & result_7 & result_8) | (result_1 & result_2 & result_4 & result_5 & result_6) | (result_1 & result_2 & result_4 & result_5 & result_7) | (result_1 & result_2 & result_4 & result_5 & result_8) | (result_1 & result_2 & result_4 & result_6 & result_7) | (result_1 & result_2 & result_4 & result_6 & result_8) | (result_1 & result_2 & result_4 & result_7 & result_8) | (result_1 & result_2 & result_5 & result_6 & result_7) | (result_1 & result_2 & result_5 & result_6 & result_8) | (result_1 & result_2 & result_5 & result_7 & result_8) | (result_1 & result_2 & result_6 & result_7 & result_8) | (result_1 & result_3 & result_4 & result_5 & result_6) | (result_1 & result_3 & result_4 & result_5 & result_7) | (result_1 & result_3 & result_4 & result_5 & result_8) | (result_1 & result_3 & result_4 & result_6 & result_7) | (result_1 & result_3 & result_4 & result_6 & result_8) | (result_1 & result_3 & result_4 & result_7 & result_8) | (result_1 & result_3 & result_5 & result_6 & result_7) | (result_1 & result_3 & result_5 & result_6 & result_8) | (result_1 & result_3 & result_5 & result_7 & result_8) | (result_1 & result_3 & result_6 & result_7 & result_8) | (result_1 & result_4 & result_5 & result_6 & result_7) | (result_1 & result_4 & result_5 & result_6 & result_8) | (result_1 & result_4 & result_5 & result_7 & result_8) | (result_1 & result_4 & result_6 & result_7 & result_8) | (result_1 & result_5 & result_6 & result_7 & result_8) | (result_2 & result_3 & result_4 & result_5 & result_6) | (result_2 & result_3 & result_4 & result_5 & result_7) | (result_2 & result_3 & result_4 & result_5 & result_8) | (result_2 & result_3 & result_4 & result_6 & result_7) | (result_2 & result_3 & result_4 & result_6 & result_8) | (result_2 & result_3 & result_4 & result_7 & result_8) | (result_2 & result_3 & result_5 & result_6 & result_7) | (result_2 & result_3 & result_5 & result_6 & result_8) | (result_2 & result_3 & result_5 & result_7 & result_8) | (result_2 & result_3 & result_6 & result_7 & result_8) | (result_2 & result_4 & result_5 & result_6 & result_7) | (result_2 & result_4 & result_5 & result_6 & result_8) | (result_2 & result_4 & result_5 & result_7 & result_8) | (result_2 & result_4 & result_6 & result_7 & result_8) | (result_2 & result_5 & result_6 & result_7 & result_8) | (result_3 & result_4 & result_5 & result_6 & result_7) | (result_3 & result_4 & result_5 & result_6 & result_8) | (result_3 & result_4 & result_5 & result_7 & result_8) | (result_3 & result_4 & result_6 & result_7 & result_8) | (result_3 & result_5 & result_6 & result_7 & result_8) | (result_4 & result_5 & result_6 & result_7 & result_8);

  always@(*)
    zero = (zero_0 & zero_1 & zero_2 & zero_3 & zero_4) | (zero_0 & zero_1 & zero_2 & zero_3 & zero_5) | (zero_0 & zero_1 & zero_2 & zero_3 & zero_6) | (zero_0 & zero_1 & zero_2 & zero_3 & zero_7) | (zero_0 & zero_1 & zero_2 & zero_3 & zero_8) | (zero_0 & zero_1 & zero_2 & zero_4 & zero_5) | (zero_0 & zero_1 & zero_2 & zero_4 & zero_6) | (zero_0 & zero_1 & zero_2 & zero_4 & zero_7) | (zero_0 & zero_1 & zero_2 & zero_4 & zero_8) | (zero_0 & zero_1 & zero_2 & zero_5 & zero_6) | (zero_0 & zero_1 & zero_2 & zero_5 & zero_7) | (zero_0 & zero_1 & zero_2 & zero_5 & zero_8) | (zero_0 & zero_1 & zero_2 & zero_6 & zero_7) | (zero_0 & zero_1 & zero_2 & zero_6 & zero_8) | (zero_0 & zero_1 & zero_2 & zero_7 & zero_8) | (zero_0 & zero_1 & zero_3 & zero_4 & zero_5) | (zero_0 & zero_1 & zero_3 & zero_4 & zero_6) | (zero_0 & zero_1 & zero_3 & zero_4 & zero_7) | (zero_0 & zero_1 & zero_3 & zero_4 & zero_8) | (zero_0 & zero_1 & zero_3 & zero_5 & zero_6) | (zero_0 & zero_1 & zero_3 & zero_5 & zero_7) | (zero_0 & zero_1 & zero_3 & zero_5 & zero_8) | (zero_0 & zero_1 & zero_3 & zero_6 & zero_7) | (zero_0 & zero_1 & zero_3 & zero_6 & zero_8) | (zero_0 & zero_1 & zero_3 & zero_7 & zero_8) | (zero_0 & zero_1 & zero_4 & zero_5 & zero_6) | (zero_0 & zero_1 & zero_4 & zero_5 & zero_7) | (zero_0 & zero_1 & zero_4 & zero_5 & zero_8) | (zero_0 & zero_1 & zero_4 & zero_6 & zero_7) | (zero_0 & zero_1 & zero_4 & zero_6 & zero_8) | (zero_0 & zero_1 & zero_4 & zero_7 & zero_8) | (zero_0 & zero_1 & zero_5 & zero_6 & zero_7) | (zero_0 & zero_1 & zero_5 & zero_6 & zero_8) | (zero_0 & zero_1 & zero_5 & zero_7 & zero_8) | (zero_0 & zero_1 & zero_6 & zero_7 & zero_8) | (zero_0 & zero_2 & zero_3 & zero_4 & zero_5) | (zero_0 & zero_2 & zero_3 & zero_4 & zero_6) | (zero_0 & zero_2 & zero_3 & zero_4 & zero_7) | (zero_0 & zero_2 & zero_3 & zero_4 & zero_8) | (zero_0 & zero_2 & zero_3 & zero_5 & zero_6) | (zero_0 & zero_2 & zero_3 & zero_5 & zero_7) | (zero_0 & zero_2 & zero_3 & zero_5 & zero_8) | (zero_0 & zero_2 & zero_3 & zero_6 & zero_7) | (zero_0 & zero_2 & zero_3 & zero_6 & zero_8) | (zero_0 & zero_2 & zero_3 & zero_7 & zero_8) | (zero_0 & zero_2 & zero_4 & zero_5 & zero_6) | (zero_0 & zero_2 & zero_4 & zero_5 & zero_7) | (zero_0 & zero_2 & zero_4 & zero_5 & zero_8) | (zero_0 & zero_2 & zero_4 & zero_6 & zero_7) | (zero_0 & zero_2 & zero_4 & zero_6 & zero_8) | (zero_0 & zero_2 & zero_4 & zero_7 & zero_8) | (zero_0 & zero_2 & zero_5 & zero_6 & zero_7) | (zero_0 & zero_2 & zero_5 & zero_6 & zero_8) | (zero_0 & zero_2 & zero_5 & zero_7 & zero_8) | (zero_0 & zero_2 & zero_6 & zero_7 & zero_8) | (zero_0 & zero_3 & zero_4 & zero_5 & zero_6) | (zero_0 & zero_3 & zero_4 & zero_5 & zero_7) | (zero_0 & zero_3 & zero_4 & zero_5 & zero_8) | (zero_0 & zero_3 & zero_4 & zero_6 & zero_7) | (zero_0 & zero_3 & zero_4 & zero_6 & zero_8) | (zero_0 & zero_3 & zero_4 & zero_7 & zero_8) | (zero_0 & zero_3 & zero_5 & zero_6 & zero_7) | (zero_0 & zero_3 & zero_5 & zero_6 & zero_8) | (zero_0 & zero_3 & zero_5 & zero_7 & zero_8) | (zero_0 & zero_3 & zero_6 & zero_7 & zero_8) | (zero_0 & zero_4 & zero_5 & zero_6 & zero_7) | (zero_0 & zero_4 & zero_5 & zero_6 & zero_8) | (zero_0 & zero_4 & zero_5 & zero_7 & zero_8) | (zero_0 & zero_4 & zero_6 & zero_7 & zero_8) | (zero_0 & zero_5 & zero_6 & zero_7 & zero_8) | (zero_1 & zero_2 & zero_3 & zero_4 & zero_5) | (zero_1 & zero_2 & zero_3 & zero_4 & zero_6) | (zero_1 & zero_2 & zero_3 & zero_4 & zero_7) | (zero_1 & zero_2 & zero_3 & zero_4 & zero_8) | (zero_1 & zero_2 & zero_3 & zero_5 & zero_6) | (zero_1 & zero_2 & zero_3 & zero_5 & zero_7) | (zero_1 & zero_2 & zero_3 & zero_5 & zero_8) | (zero_1 & zero_2 & zero_3 & zero_6 & zero_7) | (zero_1 & zero_2 & zero_3 & zero_6 & zero_8) | (zero_1 & zero_2 & zero_3 & zero_7 & zero_8) | (zero_1 & zero_2 & zero_4 & zero_5 & zero_6) | (zero_1 & zero_2 & zero_4 & zero_5 & zero_7) | (zero_1 & zero_2 & zero_4 & zero_5 & zero_8) | (zero_1 & zero_2 & zero_4 & zero_6 & zero_7) | (zero_1 & zero_2 & zero_4 & zero_6 & zero_8) | (zero_1 & zero_2 & zero_4 & zero_7 & zero_8) | (zero_1 & zero_2 & zero_5 & zero_6 & zero_7) | (zero_1 & zero_2 & zero_5 & zero_6 & zero_8) | (zero_1 & zero_2 & zero_5 & zero_7 & zero_8) | (zero_1 & zero_2 & zero_6 & zero_7 & zero_8) | (zero_1 & zero_3 & zero_4 & zero_5 & zero_6) | (zero_1 & zero_3 & zero_4 & zero_5 & zero_7) | (zero_1 & zero_3 & zero_4 & zero_5 & zero_8) | (zero_1 & zero_3 & zero_4 & zero_6 & zero_7) | (zero_1 & zero_3 & zero_4 & zero_6 & zero_8) | (zero_1 & zero_3 & zero_4 & zero_7 & zero_8) | (zero_1 & zero_3 & zero_5 & zero_6 & zero_7) | (zero_1 & zero_3 & zero_5 & zero_6 & zero_8) | (zero_1 & zero_3 & zero_5 & zero_7 & zero_8) | (zero_1 & zero_3 & zero_6 & zero_7 & zero_8) | (zero_1 & zero_4 & zero_5 & zero_6 & zero_7) | (zero_1 & zero_4 & zero_5 & zero_6 & zero_8) | (zero_1 & zero_4 & zero_5 & zero_7 & zero_8) | (zero_1 & zero_4 & zero_6 & zero_7 & zero_8) | (zero_1 & zero_5 & zero_6 & zero_7 & zero_8) | (zero_2 & zero_3 & zero_4 & zero_5 & zero_6) | (zero_2 & zero_3 & zero_4 & zero_5 & zero_7) | (zero_2 & zero_3 & zero_4 & zero_5 & zero_8) | (zero_2 & zero_3 & zero_4 & zero_6 & zero_7) | (zero_2 & zero_3 & zero_4 & zero_6 & zero_8) | (zero_2 & zero_3 & zero_4 & zero_7 & zero_8) | (zero_2 & zero_3 & zero_5 & zero_6 & zero_7) | (zero_2 & zero_3 & zero_5 & zero_6 & zero_8) | (zero_2 & zero_3 & zero_5 & zero_7 & zero_8) | (zero_2 & zero_3 & zero_6 & zero_7 & zero_8) | (zero_2 & zero_4 & zero_5 & zero_6 & zero_7) | (zero_2 & zero_4 & zero_5 & zero_6 & zero_8) | (zero_2 & zero_4 & zero_5 & zero_7 & zero_8) | (zero_2 & zero_4 & zero_6 & zero_7 & zero_8) | (zero_2 & zero_5 & zero_6 & zero_7 & zero_8) | (zero_3 & zero_4 & zero_5 & zero_6 & zero_7) | (zero_3 & zero_4 & zero_5 & zero_6 & zero_8) | (zero_3 & zero_4 & zero_5 & zero_7 & zero_8) | (zero_3 & zero_4 & zero_6 & zero_7 & zero_8) | (zero_3 & zero_5 & zero_6 & zero_7 & zero_8) | (zero_4 & zero_5 & zero_6 & zero_7 & zero_8);

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
