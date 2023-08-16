module if_id(

	input clk,
	input [15:0] pc_out_if, pc_inc_if,

	output reg [15:0] pc_out_id, pc_inc_id
);

	reg [15:0] pc_s = 16'h0000;
	reg [15:0] pcplus1_s = 16'h0000;
	
	always @(posedge clk)
	begin
      pc_out_id <= pc_s;
      pc_inc_id <= pcplus1_s;

      pc_s <= pc_out_if;
      pcplus1_s <= pc_inc_if;
		
	end

endmodule
