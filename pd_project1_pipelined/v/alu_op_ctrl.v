module alu_op_ctrl(
	input rtype, c_in, z_in, carry, zero,
	input [1:0] alu_op,
	output reg [1:0] alu_op_out
);

	wire check_cz_out, check_flags;
	
	assign check_cz_out 	= (rtype & ~c_in & z_in & zero) | (rtype & c_in & carry & ~z_in);
	assign check_flags 	= (c_in ^ z_in) & rtype;
	
	wire [1:0] mux_ctrl;
	assign mux_ctrl = {~check_flags, check_cz_out};
	
	always @(*)
	begin
		case(mux_ctrl)
		
			2'b00: alu_op_out = 2'b11;			// nop
			default : alu_op_out = alu_op;	// default alu operation

		endcase
	end
	
endmodule
