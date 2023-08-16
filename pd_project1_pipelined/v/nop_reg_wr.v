module nop_reg_wr(
	input rtype,
	input [1:0] alu_op,
	input en,
	output reg en_out
);

	always @ *
	begin
	
		if(rtype == 0) begin
		
			en_out = en;
		
		end
		else begin
		
			if(alu_op == 2'b11) begin
			
				en_out = 0;
			
			end
			else begin
			
				en_out = en;
			
			end
		
		end
	
	end

endmodule