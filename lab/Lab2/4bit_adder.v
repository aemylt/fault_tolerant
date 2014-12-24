//# 4-bit adder
module adder(a, b, cin, s, cout);
`define WIDTH 4

	input	[`WIDTH-1:0] 	a, b;
	input			cin;
	output	[`WIDTH-1:0]	s;
	output			cout;

	wire    [`WIDTH-2:0]   carry;

	fulladder fa_0(.a(a[0]), .b(b[0]), .cin(cin),      .s(s[0]), .cout(carry[0]));
    genvar bit;
    generate
        for (bit = 1; bit < `WIDTH-1; bit = bit + 1)
        begin : ripple
            fulladder fa(.a(a[bit]), .b(b[bit]), .cin(carry[bit-1]), .s(s[bit]), .cout(carry[bit]));
        end
    endgenerate
	fulladder fa_3(.a(a[`WIDTH-1]), .b(b[`WIDTH-1]), .cin(carry[2]), .s(s[`WIDTH-1]), .cout(cout));

endmodule
