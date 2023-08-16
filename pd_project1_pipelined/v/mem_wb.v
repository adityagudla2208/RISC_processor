module mem_wb(

	input clk,
	input [15:0] pc_inc_out, bs_out, data_mem_out, alu_out,
	input [1:0] m8_sel,
	input [2:0] reg_wr_addr_out,
	output reg [15:0] pc_inc_out_wb, bs_out_wb, data_mem_out_wb, alu_out_wb,
	output reg [1:0] m8_sel_wb,
	output reg [2:0] reg_wr_addr_wb

);
	
	always @ (posedge clk)
	begin
	
		pc_inc_out_wb 		= pc_inc_out;
		bs_out_wb 			= bs_out;
		data_mem_out_wb 	= data_mem_out;
		alu_out_wb 			= alu_out ;
		m8_sel_wb			= m8_sel;
		reg_wr_addr_wb		= reg_wr_addr_out;
	
	end

endmodule
