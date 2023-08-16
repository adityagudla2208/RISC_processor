module id_rr(

	input clk,
	input m1_sel_id,
	input [1:0] m2_sel_id,
	input reg_wr_en_id,
	input m3_sel_id, m4_sel_id, m5_sel_id,
	input [3:0] shft_amt_id,
	input rtype_id,
	input [1:0] alu_op_id,
	input m6_sel_id, mem_write_en_id,
	input [1:0] m8_sel_id,
	input c_en_id, z_en_id,
	input [15:0] pc_out_id, pc_inc_id,
	input [2:0] instr_rb_id, instr_ra_id, instr_rc_id,
	input [5:0] instr_imm6_id,
	input [8:0] instr_imm9_id,
	input instr1_id, instr0_id,
	
	output reg m1_sel_rr,
	output reg [1:0] m2_sel_rr,
	output reg reg_wr_en_rr,
	output reg m3_sel_rr, m4_sel_rr, m5_sel_rr,
	output reg [3:0] shft_amt_rr,
	output reg rtype_rr,
	output reg [1:0] alu_op_rr,
	output reg m6_sel_rr, mem_write_en_rr,
	output reg [1:0] m8_sel_rr,
	output reg c_en_rr, z_en_rr,
	output reg [15:0] pc_out_rr, pc_inc_rr,
	output reg [2:0] instr_rb_rr, instr_ra_rr, instr_rc_rr,
	output reg [5:0] instr_imm6_rr,
	output reg [8:0] instr_imm9_rr,
	output reg instr1_rr, instr0_rr
	
);

	always @(posedge clk)
	begin
	
		m1_sel_rr			= m1_sel_id;
		m2_sel_rr			= m2_sel_id;
		reg_wr_en_rr		= reg_wr_en_id;
		m3_sel_rr			= m3_sel_id;
		m4_sel_rr			= m4_sel_id;
		m5_sel_rr			= m5_sel_id;
		shft_amt_rr			= shft_amt_id;
		rtype_rr				= rtype_id;
		alu_op_rr			= alu_op_id;
		m6_sel_rr			= m6_sel_id;
		mem_write_en_rr	= mem_write_en_id;
		m8_sel_rr			= m8_sel_id;
		c_en_rr				= c_en_id;
		z_en_rr				= z_en_id;
		pc_out_rr			= pc_out_id;
		pc_inc_rr			= pc_inc_id;
		instr_rb_rr			= instr_rb_id;
		instr_ra_rr			= instr_ra_id;
		instr_rc_rr			= instr_rc_id;
		instr_imm6_rr		= instr_imm6_id;
		instr_imm9_rr		= instr_imm9_id;
		instr1_rr			= instr1_id;
		instr0_rr			= instr0_id;
		
	end

endmodule
