module pc(
	input clk,
	input [15:0] pc_next,
	output reg [15:0] pc
);

	initial pc = 0;
	
	always @(posedge clk)
		pc = pc_next;
	
endmodule
