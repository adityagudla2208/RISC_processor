module mux16_4to1(
	input [15:0] i3, i2, i1, i0,
	input [1:0] s,
	output reg [15:0] y
);

	always @(*)
	begin
	
		case (s)
			2'b00 	: y = i0;
			2'b01 	: y = i1;
			2'b10 	: y = i2;
			2'b11 	: y = i3;
		endcase
	end
	
endmodule
