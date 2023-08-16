module pc_inc(
	input [15:0] pc_in,
	output [15:0] pc_out
);

	assign pc_out = pc_in + 16'd1;

endmodule
