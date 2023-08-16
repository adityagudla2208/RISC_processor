module cz(
	input clk,
	input carry, zero,
	input c_en, z_en,
	output reg c, z
);

	initial 
	begin
	
		c = 0;
		z = 0;
	
	end

	always @(posedge clk)
	begin
		if (c_en)
			c = carry;
		if (z_en)
			z = zero;
	end

endmodule

