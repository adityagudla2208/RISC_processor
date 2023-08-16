module exec_mem(

	input clk,
	input [15:0] pc_inc_out_ex, bs_out_ex, alu_out_ex,
	input [1:0] m8_sel_ex, 
	input [2:0] m2_out_ex,
	input [15:0] mem_wr_data_ex,
	input mem_wr_en_ex,
	
	output reg [15:0] pc_inc_out_mem, bs_out_mem, alu_out_mem,
	output reg [1:0] m8_sel_mem, 
	output reg [2:0] m2_out_mem,
	output reg [15:0] mem_wr_data_mem,
	output reg mem_wr_en_mem

);
	
	always @ (posedge clk)
	begin
	
		pc_inc_out_mem		= pc_inc_out_ex;
		bs_out_mem			= bs_out_ex;
		alu_out_mem			= alu_out_ex;
		m8_sel_mem			= m8_sel_ex;
		m2_out_mem			= m2_out_ex;
		mem_wr_data_mem	= mem_wr_data_ex;
		mem_wr_en_mem		= mem_wr_en_ex;
		
	
	end

endmodule