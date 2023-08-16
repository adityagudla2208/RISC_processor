module instr_mem
(  
	input			[15:0]	pc,  
	output wire	[15:0]	instruction  
);  

	wire [3 : 0] rom_addr = pc[4 : 1];  

	/* 
	lw $3, 0($0) --   
	Loop: slti $1, $3, 50  
	beq $1, $0, Skip  
	add $4, $4, $3   
	addi $3, $3, 1   
	beq $0, $0, Loop--  
	Skip  
	*/  

	reg [15:0] rom[15:0];  
	
	initial  
	begin  
	
		rom[0]	= 16'hE48F; // addi R1 15 R1=15
		rom[1]	= 16'hE904; // addi R2 4 R2=4
		rom[2]	= 16'hF206; // addi R4 6 R4=6 
		rom[3]	= 16'hFB30; // addi R6 48 R6=48
		rom[4]	= 16'h0535; // mul R3 R1 R2 R3=R1*R2 
		rom[5]	= 16'h1156; // sll R5 R4 R2 R5=R4<<R2
		rom[6]	= 16'h1907; // srl R0 R6 R2 R0=R6>>R2  
		rom[7]	= 16'b0000000000000000;  
		rom[8]	= 16'b0000000000000000;  
		rom[9]	= 16'b0000000000000000;  
		rom[10]	= 16'b0000000000000000;  
		rom[11]	= 16'b0000000000000000;  
		rom[12]	= 16'b0000000000000000;  
		rom[13]	= 16'b0000000000000000;  
		rom[14]	= 16'b0000000000000000;  
		rom[15]	= 16'b0000000000000000;  
	
	end  
	
	assign instruction = (pc[15:0] < 32 )? rom[rom_addr[3:0]]: 16'd0;  

endmodule