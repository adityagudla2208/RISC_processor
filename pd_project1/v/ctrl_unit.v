module ctrl_unit(
	 input [3:0] op_code,
	 input [1:0] cz_in,
	 output reg m1_sel,
	 output reg [1:0] m2_sel,
	 output reg reg_wr_en,
	 output reg m3_sel,
	 output reg m4_sel,
	 output reg m5_sel,
	 output reg [3:0] shft_amt,
	 output reg rtype,
	 output reg [1:0] alu_op,
	 output reg m6_sel,
	 output reg [2:0] m7_sel,
	 output reg mem_write_en,
	 output reg [1:0] m8_sel,
	 output reg c_en,
	 output reg z_en
);

	initial begin
	
		m1_sel 			= 1'b0;
		m2_sel 			= 2'b00;
		reg_wr_en		= 1'b0;
		m3_sel			= 1'b0;
		m4_sel			= 1'b0;
		m5_sel			= 1'b0;
		shft_amt			= 4'b0000;
		rtype 			= 1'b0;
		alu_op 			= 2'b11;
		m6_sel 			= 1'b0;
		m7_sel			= 3'b000;
		mem_write_en 	= 1'b0;
		m8_sel 			= 2'b00;
		c_en 				= 1'b0;
		z_en 				= 1'b0;
		
	end

	always @(*) begin

		case(op_code) 
		
			4'b00_00: begin					// ADI
				
				m1_sel 			= 1'b1;
				m2_sel 			= 2'b11;
				reg_wr_en		= 1'b1;
				m3_sel			= 1'bx;
				m4_sel			= 1'b0;
				m5_sel			= 1'b0;
				shft_amt			= 4'b0000;
				rtype 			= 1'b0;
				alu_op 			= 2'b00;
				m6_sel 			= 1'bx;
				m7_sel			= 3'b000;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'b00;
				c_en 				= 1'b1;
				z_en 				= 1'b1;
			
			end
		
			4'b00_01: begin 					// ADD, ADC, ADZ, ADL
				
				m1_sel 			= 1'bx;
				m2_sel 			= 2'b01;
				reg_wr_en		= 1'b1;
				m3_sel			= 1'bx;
				m4_sel			= 1'b1;
				m5_sel			= 1'b0;
				shft_amt			= (cz_in == 2'b11) ? 4'b0001 : 4'b0000;
				rtype 			= 1'b1;
				alu_op 			= 2'b00;
				m6_sel 			= 1'bx;
				m7_sel			= 3'b000;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'b00;
				c_en 				= 1'b1;
				z_en 				= 1'b1;
			
			end
			
			4'b00_10: begin					// NDU, NDC, NDZ
				
				m1_sel 			= 1'bx;
				m2_sel 			= 2'b01;
				reg_wr_en		= 1'b1;
				m3_sel			= 1'bx;
				m4_sel			= 1'b1;
				m5_sel			= 1'b0;
				shft_amt			= 4'b0000;
				rtype 			= 1'b1;
				alu_op 			= 2'b01;
				m6_sel 			= 1'bx;
				m7_sel			= 3'b000;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'b00;
				c_en 				= 1'b0;
				z_en 				= 1'b1;
			
			end
			
			4'b00_11: begin					// LHI
			
				m1_sel 			= 1'b0;
				m2_sel 			= 2'b10;
				reg_wr_en		= 1'b1;
				m3_sel			= 1'bx;
				m4_sel			= 1'b0;
				m5_sel			= 1'bx;
				shft_amt			= 4'b0111;
				rtype 			= 1'b0;
				alu_op 			= 2'b11;
				m6_sel 			= 1'bx;
				m7_sel			= 3'b000;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'b10;
				c_en 				= 1'b0;
				z_en 				= 1'b0;
				
			end
			
			4'b01_00: begin					// LW
			
				m1_sel 			= 1'b1;
				m2_sel 			= 2'b10;
				reg_wr_en		= 1'b1;
				m3_sel			= 1'bx;
				m4_sel			= 1'b0;
				m5_sel			= 1'b1;
				shft_amt			= 4'b0000;
				rtype 			= 1'b0;
				alu_op 			= 2'b00;
				m6_sel 			= 1'bx;
				m7_sel			= 3'b000;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'b01;
				c_en 				= 1'b0;
				z_en 				= 1'b1;
				
			end
			
			4'b01_01: begin					// SW
			
				m1_sel 			= 1'b1;
				m2_sel 			= 2'bxx;
				reg_wr_en		= 1'b0;
				m3_sel			= 1'bx;
				m4_sel			= 1'b0;
				m5_sel			= 1'b1;
				shft_amt			= 4'b0000;
				rtype 			= 1'b0;
				alu_op 			= 2'b00;
				m6_sel 			= 1'bx;
				m7_sel			= 3'b000;
				mem_write_en 	= 1'b1;
				m8_sel 			= 2'bxx;
				c_en 				= 1'b0;
				z_en 				= 1'b0;
			
			end
			
			4'b10_00: begin					// BEQ
			
				m1_sel 			= 1'b1;
				m2_sel 			= 2'bxx;
				reg_wr_en		= 1'b0;
				m3_sel			= 1'b1;
				m4_sel			= 1'b1;
				m5_sel			= 1'b0;
				shft_amt			= 4'b0000;
				rtype 			= 1'b0;
				alu_op 			= 2'b10;
				m6_sel 			= 1'b1;
				m7_sel			= 3'b100;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'bxx;
				c_en 				= 1'b0;
				z_en 				= 1'b0;
			
			end
			
			4'b10_01: begin					// JAL
			
				m1_sel 			= 1'b0;
				m2_sel 			= 2'b10;
				reg_wr_en		= 1'b1;
				m3_sel			= 1'b0;
				m4_sel			= 1'bx;
				m5_sel			= 1'bx;
				shft_amt			= 4'b0000;
				rtype 			= 1'b0;
				alu_op 			= 2'b11;
				m6_sel 			= 1'b0;
				m7_sel			= 3'b001;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'b11;
				c_en 				= 1'b0;
				z_en 				= 1'b0;
			
			end
			
			
			4'b10_10: begin					// JLR
			
				m1_sel 			= 1'bx;
				m2_sel 			= 2'b10;
				reg_wr_en		= 1'b1;
				m3_sel			= 1'b0;
				m4_sel			= 1'bx;
				m5_sel			= 1'bx;
				shft_amt			= 4'b0000;
				rtype 			= 1'b0;
				alu_op 			= 2'b11;
				m6_sel 			= 1'b0;
				m7_sel			= 3'b010;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'b11;
				c_en 				= 1'b0;
				z_en 				= 1'b0;
			
			end
			
			4'b10_11: begin					// JRI
			
				m1_sel 			= 1'b0;
				m2_sel 			= 2'bxx;
				reg_wr_en		= 1'b0;
				m3_sel			= 1'b0;
				m4_sel			= 1'b0;
				m5_sel			= 1'b0;
				shft_amt			= 4'b0000;
				rtype 			= 1'b0;
				alu_op 			= 2'b00;
				m6_sel 			= 1'b0;
				m7_sel			= 3'b011;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'bxx;
				c_en 				= 1'b0;
				z_en 				= 1'b0;
			
			end
		
			default: begin
				
				m1_sel 			= 1'b0;
				m2_sel 			= 2'b00;
				reg_wr_en		= 1'b0;
				m3_sel			= 1'b0;
				m4_sel			= 1'b0;
				m5_sel			= 1'b0;
				shft_amt			= 4'b0000;
				rtype 			= 1'b0;
				alu_op 			= 2'b11;
				m6_sel 			= 1'b0;
				m7_sel			= 3'b000;
				mem_write_en 	= 1'b0;
				m8_sel 			= 2'b00;
				c_en 				= 1'b0;
				z_en 				= 1'b0;
				
			end

		endcase 

	end  

endmodule 