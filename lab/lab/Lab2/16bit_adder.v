//# 4-bit adder
module adder(a, b, cin, s, cout);

	input	[15:0] 	a, b;
	input			cin;
	output	[15:0]	s;
	output			cout;

	wire    [14:0]   carry;

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
	fulladder fa_15(.a(a[15]), .b(b[15]), .cin(carry[14]), .s(s[15]), .cout(cout     ));

endmodule
