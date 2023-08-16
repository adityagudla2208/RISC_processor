// Copyright (C) 2019  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"
// CREATED		"Sat Apr 09 14:44:12 2022"

module pd_project1(
);



wire	[1:0] alu_op;
wire	c_en;
wire	clk;
wire	[15:0] instr;
wire	m1_sel;
wire	[1:0] m2_sel;
wire	m3_sel;
wire	m4_sel;
wire	m5_sel;
wire	m6_sel;
wire	[2:0] m7_sel;
wire	[1:0] m8_sel;
wire	mem_write_en;
wire	reg_wr_en;
wire	rtype;
wire	[3:0] shft_amt;
wire	z_en;
wire	[15:0] SYNTHESIZED_WIRE_38;
wire	[15:0] SYNTHESIZED_WIRE_1;
wire	[15:0] SYNTHESIZED_WIRE_2;
wire	[1:0] SYNTHESIZED_WIRE_3;
wire	[15:0] SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_40;
wire	[15:0] SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	[15:0] SYNTHESIZED_WIRE_41;
wire	[15:0] SYNTHESIZED_WIRE_42;
wire	[15:0] SYNTHESIZED_WIRE_43;
wire	[15:0] SYNTHESIZED_WIRE_44;
wire	[15:0] SYNTHESIZED_WIRE_18;
wire	[15:0] SYNTHESIZED_WIRE_45;
wire	SYNTHESIZED_WIRE_22;
wire	[15:0] SYNTHESIZED_WIRE_46;
wire	[15:0] SYNTHESIZED_WIRE_47;
wire	[15:0] SYNTHESIZED_WIRE_48;
wire	[15:0] SYNTHESIZED_WIRE_29;
wire	[15:0] SYNTHESIZED_WIRE_35;
wire	[2:0] SYNTHESIZED_WIRE_36;
wire	[15:0] SYNTHESIZED_WIRE_37;





add16	b2v_add1(
	.a(SYNTHESIZED_WIRE_38),
	.b(SYNTHESIZED_WIRE_1),
	.res(SYNTHESIZED_WIRE_47));


alu	b2v_alu(
	.a(SYNTHESIZED_WIRE_2),
	.alu_control(SYNTHESIZED_WIRE_3),
	.b(SYNTHESIZED_WIRE_39),
	.carry(SYNTHESIZED_WIRE_9),
	.zero(SYNTHESIZED_WIRE_40),
	.result(SYNTHESIZED_WIRE_41));


alu_op_ctrl	b2v_alu_control_unit(
	.rtype(rtype),
	.c_in(instr[1]),
	.z_in(instr[0]),
	.carry(SYNTHESIZED_WIRE_5),
	.zero(SYNTHESIZED_WIRE_6),
	.alu_op(alu_op),
	.alu_op_out(SYNTHESIZED_WIRE_3));

assign	SYNTHESIZED_WIRE_22 = m6_sel & SYNTHESIZED_WIRE_40;


sll	b2v_barrel_shifter(
	.a_in(SYNTHESIZED_WIRE_8),
	.shft_amt(shft_amt),
	.o(SYNTHESIZED_WIRE_39));


ctrl_unit	b2v_ctrl_block(
	.cz_in(instr[1:0]),
	.op_code(instr[15:12]),
	.m1_sel(m1_sel),
	.reg_wr_en(reg_wr_en),
	.m3_sel(m3_sel),
	.m4_sel(m4_sel),
	.m5_sel(m5_sel),
	.rtype(rtype),
	.m6_sel(m6_sel),
	.mem_write_en(mem_write_en),
	.c_en(c_en),
	.z_en(z_en),
	.alu_op(alu_op),
	.m2_sel(m2_sel),
	.m7_sel(m7_sel),
	.m8_sel(m8_sel),
	.shft_amt(shft_amt));


cz	b2v_cz_reg(
	.clk(clk),
	.carry(SYNTHESIZED_WIRE_9),
	.zero(SYNTHESIZED_WIRE_40),
	.c_en(c_en),
	.z_en(z_en),
	.c(SYNTHESIZED_WIRE_5),
	.z(SYNTHESIZED_WIRE_6));


data_memory	b2v_data_mem(
	.clk(clk),
	.mem_write_en(mem_write_en),
	.addr(SYNTHESIZED_WIRE_41),
	.mem_write_data(SYNTHESIZED_WIRE_42),
	.mem_read_data(SYNTHESIZED_WIRE_48));


instr_mem	b2v_instr_memory(
	.pc(SYNTHESIZED_WIRE_38),
	.instruction(instr));


mux16	b2v_m1(
	.s(m1_sel),
	.i0(SYNTHESIZED_WIRE_43),
	.i1(SYNTHESIZED_WIRE_44),
	.y(SYNTHESIZED_WIRE_18));


mux3	b2v_m2(
	
	.i1(instr[5:3]),
	.i2(instr[11:9]),
	.i3(instr[8:6]),
	.s(m2_sel),
	.y(SYNTHESIZED_WIRE_36));


mux16	b2v_m3(
	.s(m3_sel),
	.i0(SYNTHESIZED_WIRE_43),
	.i1(SYNTHESIZED_WIRE_44),
	.y(SYNTHESIZED_WIRE_1));


mux16	b2v_m4(
	.s(m4_sel),
	.i0(SYNTHESIZED_WIRE_18),
	.i1(SYNTHESIZED_WIRE_45),
	.y(SYNTHESIZED_WIRE_8));


mux16	b2v_m5(
	.s(m5_sel),
	.i0(SYNTHESIZED_WIRE_42),
	.i1(SYNTHESIZED_WIRE_45),
	.y(SYNTHESIZED_WIRE_2));


mux16	b2v_m6(
	.s(SYNTHESIZED_WIRE_22),
	.i0(SYNTHESIZED_WIRE_46),
	.i1(SYNTHESIZED_WIRE_47),
	.y(SYNTHESIZED_WIRE_29));


mux16_8to1	b2v_m7(
	.i0(SYNTHESIZED_WIRE_46),
	.i1(SYNTHESIZED_WIRE_47),
	.i2(SYNTHESIZED_WIRE_45),
	.i3(SYNTHESIZED_WIRE_48),
	.i4(SYNTHESIZED_WIRE_29),
	.s(m7_sel),
	.y(SYNTHESIZED_WIRE_35));


mux16_4to1	b2v_m8(
	.i0(SYNTHESIZED_WIRE_41),
	.i1(SYNTHESIZED_WIRE_48),
	.i2(SYNTHESIZED_WIRE_39),
	.i3(SYNTHESIZED_WIRE_46),
	.s(m8_sel),
	.y(SYNTHESIZED_WIRE_37));


pc_inc	b2v_pc_incrementer(
	.pc_in(SYNTHESIZED_WIRE_38),
	.pc_out(SYNTHESIZED_WIRE_46));


pc	b2v_prog_counter(
	.clk(clk),
	.pc_next(SYNTHESIZED_WIRE_35),
	.pc(SYNTHESIZED_WIRE_38));


reg_file	b2v_register_file(
	.clk(clk),
	.reg_wr_en(reg_wr_en),
	.reg_rd_addr1(instr[8:6]),
	.reg_rd_addr2(instr[11:9]),
	.reg_wr_addr(SYNTHESIZED_WIRE_36),
	.reg_wr_data(SYNTHESIZED_WIRE_37),
	.reg_rd_data1(SYNTHESIZED_WIRE_45),
	.reg_rd_data2(SYNTHESIZED_WIRE_42));


sign_ext6	b2v_sgn_ext_imm6(
	.in(instr[5:0]),
	.out(SYNTHESIZED_WIRE_44));


sign_ext9	b2v_sgn_ext_imm9(
	.in(instr[8:0]),
	.out(SYNTHESIZED_WIRE_43));


endmodule
