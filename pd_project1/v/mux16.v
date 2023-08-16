module mux16(
	input [15:0] i1, i0,
	input s,
	output [15:0] y
);

	assign y = (s == 0) ? i0:i1;
	
endmodule
