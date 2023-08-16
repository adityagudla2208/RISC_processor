module reg_file (
	input	clk,
	
	//read port 1  
	input [2:0] reg_rd_addr1,  
	output [15:0] reg_rd_data1,  
	
	//read port 2  
	input [2:0] reg_rd_addr2,  
	output [15:0] reg_rd_data2,
	
	// write port  
	input	[2:0]	reg_wr_addr,
	input	[15:0] reg_wr_data,
	input	reg_wr_en
);  
	
	reg [15:0] reg_array [6:0];  
	
	initial begin
		reg_array[0] <= 16'hffff;
		reg_array[1] <= 16'h0001;
		reg_array[2] <= 16'h0000;
		reg_array[3] <= 16'h0001;
		reg_array[4] <= 16'hfffe;
		reg_array[5] <= 16'h6789;
		reg_array[6] <= 16'h6789;
	end
	
	// write port  
	//reg [2:0] i;  
	always @ (posedge clk)
	begin
	
		if(reg_wr_en) 
		begin  
			reg_array[reg_wr_addr] <= reg_wr_data;  
		end
		
	end
	
	assign reg_rd_data1 = reg_array[reg_rd_addr1];
	assign reg_rd_data2 = reg_array[reg_rd_addr2];

endmodule
