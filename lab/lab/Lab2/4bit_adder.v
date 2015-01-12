//# 4-bit adder
module adder(a, b, cin, s, cout);

	input	[3:0] 	a, b;
	input			cin;
	output	[3:0]	s;
	output			cout;

	wire    [2:0]   carry;

	fulladder fa_0(.a(a[0]), .b(b[0]), .cin(cin),      .s(s[0]), .cout(carry[0]));
	fulladder fa_1(.a(a[1]), .b(b[1]), .cin(carry[0]), .s(s[1]), .cout(carry[1]));
	fulladder fa_2(.a(a[2]), .b(b[2]), .cin(carry[1]), .s(s[2]), .cout(carry[2]));
	fulladder fa_3(.a(a[3]), .b(b[3]), .cin(carry[2]), .s(s[3]), .cout(cout));

endmodule
