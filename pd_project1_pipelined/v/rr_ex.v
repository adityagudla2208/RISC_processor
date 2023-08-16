module rr_ex(

	input clk,
	input [15:0] pc_out_rr, imm6_rr, imm9_rr,
	input m3_sel_rr,
	input [15:0] pc_inc_rr, reg_data1_rr, reg_data2_rr,
	input m5_sel_rr,
	input [15:0] m1_out_rr,
	input m4_sel_rr,
	input [3:0] shft_amt_rr,
	input [1:0] alu_op_rr,
	input rtype_rr, instr1_rr, instr0_rr, m6_sel_rr,
	input [2:0] m7_sel_rr,
	input c_en_rr, z_en_rr,
	input [1:0] m8_sel_rr,
	input [2:0] m2_out_rr,
	input mem_wr_en_rr,
	
	output reg [15:0] pc_out_ex, imm6_ex, imm9_ex,
	output reg m3_sel_ex,
	output reg [15:0] pc_inc_ex, reg_data1_ex, reg_data2_ex,
	output reg m5_sel_ex,
	output reg [15:0] m1_out_ex,
	output reg m4_sel_ex,
	output reg [3:0] shft_amt_ex,
	output reg [1:0] alu_op_ex,
	output reg rtype_ex, instr1_ex, instr0_ex, m6_sel_ex,
	output reg [2:0] m7_sel_ex,
	output reg c_en_ex, z_en_ex,
	output reg [1:0] m8_sel_ex,
	output reg [2:0] m2_out_ex,
	output reg mem_wr_en_ex

);
	
	always @ (posedge clk)
	begin
	
		pc_out_ex		= pc_out_rr;
		imm6_ex			= imm6_rr;
		imm9_ex			= imm9_rr;
		m3_sel_ex		= m3_sel_rr;
		pc_inc_ex		= pc_inc_rr;
		reg_data1_ex	= reg_data1_rr;
		reg_data2_ex	= reg_data2_rr;
		m5_sel_ex		= m5_sel_rr;
		m1_out_ex		= m1_out_rr;
		m4_sel_ex		= m4_sel_rr;
		shft_amt_ex		= shft_amt_rr;
		alu_op_ex		= alu_op_rr;
		rtype_ex			= rtype_rr;
		instr1_ex		= instr1_rr;
		instr0_ex		= instr0_rr;
		m6_sel_ex		= m6_sel_rr;
		m7_sel_ex		= m7_sel_rr;
		c_en_ex			= c_en_rr;
		z_en_ex			= z_en_rr;
		m8_sel_ex		= m8_sel_rr;
		m2_out_ex		= m2_out_rr;
		mem_wr_en_ex	= mem_wr_en_rr;
		
	
	end

endmodule
