module gates(a, b, y1, y2, y3, y4, y5, y6, y7);
    	input [3:0] a, b;
    	output [3:0] y1, y2, y3, y4, y5, y6, y7;
	/* Seven different logic gates acting on four bit busses */
assign y1= ~a; // NOT gate
assign y2= a & b; // AND gate
assign y3= a | b; //  OR gate
assign y4= ~(a & b); // NAND gate
assign y5= ~(a | b); // NOR gate
assign y6= a ^ b; // XOR gate
assign y7= ~(a ^ b); // XNOR gate
endmodule

