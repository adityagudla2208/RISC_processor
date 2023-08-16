module alu(       
	input [15:0] a,				//src1 rs 
	input [15:0] b,				//src2 rt
	input [2:0] alu_control,	//function sel  
	output reg [15:0] result,	//result       
	output zero  
);

	wire [15:0] sll_op;
	wire [15:0] srl_op;

	always @(*)  //fpga4student.com: FPga projects, Verilog projects, VHDL projects
	begin   
		
		case(alu_control)  
		
			3'b000: result = a + b; // add  
			3'b001: result = a - b; // sub  
			3'b010: result = a & b; // and  
			3'b011: result = a | b; // or  
			3'b100: result = (a<b) ? 16'd1 : 16'd0;	//slt 
			3'b101: result = a * b;			// mul
			3'b110: result = sll_op;// sll
			3'b111: result = srl_op;// srl
			default:result = 16'd0; // add  
		
		endcase  
	
	end

	sll sll_uut(a,b[3:0],sll_op);
	srl srl_uut(a,b[3:0],srl_op);
	
	assign zero = (result==16'd0) ? 1'b1: 1'b0;  

endmodule