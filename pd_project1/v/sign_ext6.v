module sign_ext6(
	input [5:0] in,
	output [15:0] out
);

	assign out = { { 10{in[5]} }, in };

endmodule
