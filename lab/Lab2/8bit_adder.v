//# 4-bit adder
module adder(a, b, cin, s, cout);

	input	[7:0] 	a, b;
	input			cin;
	output	[7:0]	s;
	output			cout;

	wire    [6:0]   carry;

	fulladder fa_0(.a(a[0]), .b(b[0]), .cin(cin),      .s(s[0]), .cout(carry[0]));
	fulladder fa_1(.a(a[1]), .b(b[1]), .cin(carry[0]), .s(s[1]), .cout(carry[1]));
	fulladder fa_2(.a(a[2]), .b(b[2]), .cin(carry[1]), .s(s[2]), .cout(carry[2]));
	fulladder fa_3(.a(a[3]), .b(b[3]), .cin(carry[2]), .s(s[3]), .cout(carry[3]));
	fulladder fa_4(.a(a[4]), .b(b[4]), .cin(carry[3]), .s(s[4]), .cout(carry[4]));
	fulladder fa_5(.a(a[5]), .b(b[5]), .cin(carry[4]), .s(s[5]), .cout(carry[5]));
	fulladder fa_6(.a(a[6]), .b(b[6]), .cin(carry[5]), .s(s[6]), .cout(carry[6]));
	fulladder fa_7(.a(a[7]), .b(b[7]), .cin(carry[6]), .s(s[7]), .cout(cout));

endmodule
