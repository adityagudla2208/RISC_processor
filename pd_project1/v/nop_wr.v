module nop_wr(
	input en,
	input [1:0] alu_op,
	output en_out
);

	assign en_out = ~(alu_op[1] & alu_op[0]) & en; 

endmodule
