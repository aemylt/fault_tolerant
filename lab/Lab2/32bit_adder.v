//# 4-bit adder
module adder(a, b, cin, s, cout);

	input	[31:0] 	a, b;
	input			cin;
	output	[31:0]	s;
	output			cout;

	wire    [30:0]   carry;

	fulladder fa_0 (.a(a[0 ]), .b(b[0 ]), .cin(cin      ), .s(s[0 ]), .cout(carry[0 ]));
	fulladder fa_1 (.a(a[1 ]), .b(b[1 ]), .cin(carry[0 ]), .s(s[1 ]), .cout(carry[1 ]));
	fulladder fa_2 (.a(a[2 ]), .b(b[2 ]), .cin(carry[1 ]), .s(s[2 ]), .cout(carry[2 ]));
	fulladder fa_3 (.a(a[3 ]), .b(b[3 ]), .cin(carry[2 ]), .s(s[3 ]), .cout(carry[3 ]));
	fulladder fa_4 (.a(a[4 ]), .b(b[4 ]), .cin(carry[3 ]), .s(s[4 ]), .cout(carry[4 ]));
	fulladder fa_5 (.a(a[5 ]), .b(b[5 ]), .cin(carry[4 ]), .s(s[5 ]), .cout(carry[5 ]));
	fulladder fa_6 (.a(a[6 ]), .b(b[6 ]), .cin(carry[5 ]), .s(s[6 ]), .cout(carry[6 ]));
	fulladder fa_7 (.a(a[7 ]), .b(b[7 ]), .cin(carry[6 ]), .s(s[7 ]), .cout(carry[7 ]));
	fulladder fa_8 (.a(a[8 ]), .b(b[8 ]), .cin(carry[7 ]), .s(s[8 ]), .cout(carry[8 ]));
	fulladder fa_9 (.a(a[9 ]), .b(b[9 ]), .cin(carry[8 ]), .s(s[9 ]), .cout(carry[9 ]));
	fulladder fa_10(.a(a[10]), .b(b[10]), .cin(carry[9 ]), .s(s[10]), .cout(carry[10]));
	fulladder fa_11(.a(a[11]), .b(b[11]), .cin(carry[10]), .s(s[11]), .cout(carry[11]));
	fulladder fa_12(.a(a[12]), .b(b[12]), .cin(carry[11]), .s(s[12]), .cout(carry[12]));
	fulladder fa_13(.a(a[13]), .b(b[13]), .cin(carry[12]), .s(s[13]), .cout(carry[13]));
	fulladder fa_14(.a(a[14]), .b(b[14]), .cin(carry[13]), .s(s[14]), .cout(carry[14]));
	fulladder fa_15(.a(a[15]), .b(b[15]), .cin(carry[14]), .s(s[15]), .cout(carry[15]));
	fulladder fa_16(.a(a[16]), .b(b[16]), .cin(carry[15]), .s(s[16]), .cout(carry[16]));
	fulladder fa_17(.a(a[17]), .b(b[17]), .cin(carry[16]), .s(s[17]), .cout(carry[17]));
	fulladder fa_18(.a(a[18]), .b(b[18]), .cin(carry[17]), .s(s[18]), .cout(carry[18]));
	fulladder fa_19(.a(a[19]), .b(b[19]), .cin(carry[18]), .s(s[19]), .cout(carry[19]));
	fulladder fa_20(.a(a[20]), .b(b[20]), .cin(carry[19]), .s(s[20]), .cout(carry[20]));
	fulladder fa_21(.a(a[21]), .b(b[21]), .cin(carry[20]), .s(s[21]), .cout(carry[21]));
	fulladder fa_22(.a(a[22]), .b(b[22]), .cin(carry[21]), .s(s[22]), .cout(carry[22]));
	fulladder fa_23(.a(a[23]), .b(b[23]), .cin(carry[22]), .s(s[23]), .cout(carry[23]));
	fulladder fa_24(.a(a[24]), .b(b[24]), .cin(carry[23]), .s(s[24]), .cout(carry[24]));
	fulladder fa_25(.a(a[25]), .b(b[25]), .cin(carry[24]), .s(s[25]), .cout(carry[25]));
	fulladder fa_26(.a(a[26]), .b(b[26]), .cin(carry[25]), .s(s[26]), .cout(carry[26]));
	fulladder fa_27(.a(a[27]), .b(b[27]), .cin(carry[26]), .s(s[27]), .cout(carry[27]));
	fulladder fa_28(.a(a[28]), .b(b[28]), .cin(carry[27]), .s(s[28]), .cout(carry[28]));
	fulladder fa_29(.a(a[29]), .b(b[29]), .cin(carry[28]), .s(s[29]), .cout(carry[29]));
	fulladder fa_30(.a(a[30]), .b(b[30]), .cin(carry[29]), .s(s[30]), .cout(carry[30]));
	fulladder fa_31(.a(a[31]), .b(b[31]), .cin(carry[30]), .s(s[31]), .cout(cout     ));

endmodule
