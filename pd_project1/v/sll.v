module sll(

	input [15:0] a_in,
	input [3:0] shft_amt,
	output[15:0] o

);
	wire [0:15] a;
	assign a = a_in;
	
	wire [0:15] out;
	assign o = out;

	mux m_3_15 (a[15],0,shft_amt[3],y_3_15);	mux m_3_14 (a[14],0,shft_amt[3],y_3_14);	mux m_3_13 (a[13],0,shft_amt[3],y_3_13);	mux m_3_12 (a[12],0,shft_amt[3],y_3_12);	mux m_3_11 (a[11],0,shft_amt[3],y_3_11);	mux m_3_10 (a[10],0,shft_amt[3],y_3_10);	mux m_3_9 (a[9],0,shft_amt[3],y_3_9);	mux m_3_8 (a[8],0,shft_amt[3],y_3_8);	mux m_3_7 (a[7],a[15],shft_amt[3],y_3_7);	mux m_3_6 (a[6],a[14],shft_amt[3],y_3_6);	mux m_3_5 (a[5],a[13],shft_amt[3],y_3_5);	mux m_3_4 (a[4],a[12],shft_amt[3],y_3_4);	mux m_3_3 (a[3],a[11],shft_amt[3],y_3_3);	mux m_3_2 (a[2],a[10],shft_amt[3],y_3_2);	mux m_3_1 (a[1],a[9],shft_amt[3],y_3_1);	mux m_3_0 (a[0],a[8],shft_amt[3],y_3_0);
	mux m_2_15 (y_3_15,0,shft_amt[2],y_2_15);	mux m_2_14 (y_3_14,0,shft_amt[2],y_2_14);	mux m_2_13 (y_3_13,0,shft_amt[2],y_2_13);	mux m_2_12 (y_3_12,0,shft_amt[2],y_2_12);	mux m_2_11 (y_3_11,y_3_15,shft_amt[2],y_2_11);	mux m_2_10 (y_3_10,y_3_14,shft_amt[2],y_2_10);	mux m_2_9 (y_3_9,y_3_13,shft_amt[2],y_2_9);	mux m_2_8 (y_3_8,y_3_12,shft_amt[2],y_2_8);	mux m_2_7 (y_3_7,y_3_11,shft_amt[2],y_2_7);	mux m_2_6 (y_3_6,y_3_10,shft_amt[2],y_2_6);	mux m_2_5 (y_3_5,y_3_9,shft_amt[2],y_2_5);	mux m_2_4 (y_3_4,y_3_8,shft_amt[2],y_2_4);	mux m_2_3 (y_3_3,y_3_7,shft_amt[2],y_2_3);	mux m_2_2 (y_3_2,y_3_6,shft_amt[2],y_2_2);	mux m_2_1 (y_3_1,y_3_5,shft_amt[2],y_2_1);	mux m_2_0 (y_3_0,y_3_4,shft_amt[2],y_2_0);
	mux m_1_15 (y_2_15,0,shft_amt[1],y_1_15);	mux m_1_14 (y_2_14,0,shft_amt[1],y_1_14);	mux m_1_13 (y_2_13,y_2_15,shft_amt[1],y_1_13);	mux m_1_12 (y_2_12,y_2_14,shft_amt[1],y_1_12);	mux m_1_11 (y_2_11,y_2_13,shft_amt[1],y_1_11);	mux m_1_10 (y_2_10,y_2_12,shft_amt[1],y_1_10);	mux m_1_9 (y_2_9,y_2_11,shft_amt[1],y_1_9);	mux m_1_8 (y_2_8,y_2_10,shft_amt[1],y_1_8);	mux m_1_7 (y_2_7,y_2_9,shft_amt[1],y_1_7);	mux m_1_6 (y_2_6,y_2_8,shft_amt[1],y_1_6);	mux m_1_5 (y_2_5,y_2_7,shft_amt[1],y_1_5);	mux m_1_4 (y_2_4,y_2_6,shft_amt[1],y_1_4);	mux m_1_3 (y_2_3,y_2_5,shft_amt[1],y_1_3);	mux m_1_2 (y_2_2,y_2_4,shft_amt[1],y_1_2);	mux m_1_1 (y_2_1,y_2_3,shft_amt[1],y_1_1);	mux m_1_0 (y_2_0,y_2_2,shft_amt[1],y_1_0);
	mux m_0_15 (y_1_15,0,shft_amt[0],out[15]);	mux m_0_14 (y_1_14,y_1_15,shft_amt[0],out[14]);	mux m_0_13 (y_1_13,y_1_14,shft_amt[0],out[13]);	mux m_0_12 (y_1_12,y_1_13,shft_amt[0],out[12]);	mux m_0_11 (y_1_11,y_1_12,shft_amt[0],out[11]);	mux m_0_10 (y_1_10,y_1_11,shft_amt[0],out[10]);	mux m_0_9 (y_1_9,y_1_10,shft_amt[0],out[9]);	mux m_0_8 (y_1_8,y_1_9,shft_amt[0],out[8]);	mux m_0_7 (y_1_7,y_1_8,shft_amt[0],out[7]);	mux m_0_6 (y_1_6,y_1_7,shft_amt[0],out[6]);	mux m_0_5 (y_1_5,y_1_6,shft_amt[0],out[5]);	mux m_0_4 (y_1_4,y_1_5,shft_amt[0],out[4]);	mux m_0_3 (y_1_3,y_1_4,shft_amt[0],out[3]);	mux m_0_2 (y_1_2,y_1_3,shft_amt[0],out[2]);	mux m_0_1 (y_1_1,y_1_2,shft_amt[0],out[1]);	mux m_0_0 (y_1_0,y_1_1,shft_amt[0],out[0]);

endmodule
