module sign_ext9(
	input [8:0] in,
	output [15:0] out
);

	assign out = { { 7{in[5]} }, in };

endmodule
