module alu(

	input [15:0] a,				// src1 rs 
	input [15:0] b,				// src2 rt
	input [1:0] alu_control,	// function sel  
	output reg [15:0] result,	// result
	output carry, zero

	);
	
	wire [16:0] carry_detect;
	
	assign carry_detect = a + b;

	always @(*)
	begin
		
		case(alu_control)
		
			2'b00: result = a + b; 				// add  
			2'b01: result = ~(a & b);			// nand
			2'b10: result = a - b;				// sub
			2'b11: result = 16'd0;				// nop

		endcase  
	
	end
	
	assign zero = (result == 16'd0) ? 1'b1 : 1'b0;
	assign carry = ((carry_detect > 16'hffff) && (alu_control != 2'b01)) ? 1'b1 : 1'b0;

endmodule