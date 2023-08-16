module mux16_8to1(
	input [15:0] i4, i3, i2, i1, i0,
	input [2:0] s,
	output reg [15:0] y
);

	always @(*)
	begin
	
		case (s)
			3'b001 	: y = i1;
			3'b010 	: y = i2;
			3'b011 	: y = i3;
			3'b100 	: y = i4;
			default 	: y = i0;
		endcase
	end
	
endmodule
