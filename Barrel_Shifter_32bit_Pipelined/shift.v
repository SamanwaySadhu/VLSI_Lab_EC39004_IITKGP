`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:17:47 02/11/2019 
// Design Name: 
// Module Name:    shift 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module shift(
    input [31:0]I,
    input [4:0]S,
    input R,
	 input reset,
    output [31:0]O,
    input clk
    );

reg [31:0]s_I,s_O,s_Ir,s_I1,s_I2,s_I4,s_I8,s_I16;
reg [4:0]s_S;
reg s_R;

wire [31:0]w_O,w_I,w_Ir,w_I1,w_I2,w_I4,w_I8,w_I16,O;
wire qb1,qb2,qb3,qb4,qb5,qb6,qb7,qb8,qb9,qb10,qb11,qb12,qb13,qb14,qb15,qb16,qb17,qb18,qb19,qb20,qb21;
wire q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21;


reverse r1(s_I,s_R,w_Ir);

dff d1(s_S[4],1'b0,reset,clk,q1,qb1);
shift16 s16(s_Ir,q1,w_I16);

dff d2(s_S[3],1'b0,reset,clk,q2,qb2);
dff d3(q2,1'b0,reset,clk,q3,qb3);
shift8 s8(s_I16,q3,w_I8);

dff d4(s_S[2],1'b0,reset,clk,q4,qb4);
dff d5(q4,1'b0,reset,clk,q5,qb5);
dff d6(q5,1'b0,reset,clk,q6,qb6);
shift4 s4(s_I8,q6,w_I4);

dff d7(s_S[1],1'b0,reset,clk,q7,qb7);
dff d8(q7,1'b0,reset,clk,q8,qb8);
dff d9(q8,1'b0,reset,clk,q9,qb9);
dff d10(q9,1'b0,reset,clk,q10,qb10);
shift2 s2(s_I4,q10,w_I2);

dff d11(s_S[0],1'b0,reset,clk,q11,qb11);
dff d12(q11,1'b0,reset,clk,q12,qb12);
dff d13(q12,1'b0,reset,clk,q13,qb13);
dff d14(q13,1'b0,reset,clk,q14,qb14);
dff d15(q14,1'b0,reset,clk,q15,qb15);
shift1 s1(s_I2,q15,w_I1);

dff d16(s_R,1'b0,reset,clk,q16,qb16);
dff d17(q16,1'b0,reset,clk,q17,qb17);
dff d18(q17,1'b0,reset,clk,q18,qb18);
dff d19(q18,1'b0,reset,clk,q19,qb19);
dff d20(q19,1'b0,reset,clk,q20,qb20);
dff d21(q20,1'b0,reset,clk,q21,qb21);
reverse r2(s_I1,q21,w_O);

assign O=s_O;


always@(posedge clk)
	begin
		if(reset==1)
			s_I<=0;
			s_S<=0;
			s_R<=0;
			s_Ir<=0;
			s_I16<=0;
			s_I8<=0;
			s_I4<=0;
			s_I2<=0;
			s_I1<=0;
			s_O<=0;
		if(reset==0)
			s_I<=I;
			s_S<=S;
			s_R<=R;
			s_Ir<=w_Ir;
			s_I16<=w_I16;
			s_I8<=w_I8;
			s_I4<=w_I4;
			s_I2<=w_I2;
			s_I1<=w_I1;
			s_O<=w_O;
	end


endmodule
