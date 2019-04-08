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


wire [31:0] w_Ir,w_I1,w_I2,w_I4,w_I8,w_I16,O,w_I01,w_I02,w_I03,w_I04,w_I05,w_I06;
wire [31:0] w1;
wire R_q,R_q1,R_q2,R_q3,R_q4,R_q5,R_q6,S1,S2,S3,S4,S5,S6,S7,S8,S9,S10,S11,S12,S13,S14,S15,S16,S17,S18,S19,S20;
reg32 r1(I,clk,reset,w1);
dff dff1(R,clk,reset,R_q);
reverse rev1(w1,R_q,w_Ir);

reg32 r2(w_Ir,clk,reset,w_I01);
dff dff2(S[4],clk,reset,S1);
dff dff3(S1,clk,reset,S2);
shift16 s16(w_I01,S2,w_I16);

reg32 r3(w_I16,clk,reset,w_I02);
dff dff4(S[3],clk,reset,S3);
dff dff5(S3,clk,reset,S4);
dff dff6(S4,clk,reset,S5);
shift8 s8(w_I02,S5,w_I8);

reg32 r4(w_I8,clk,reset,w_I03);
dff dff7(S[2],clk,reset,S6);
dff dff8(S6,clk,reset,S7);
dff dff9(S7,clk,reset,S8);
dff dff10(S8,clk,reset,S9);
shift4 s4(w_I03,S9,w_I4);


reg32 r5(w_I4,clk,reset,w_I04);
dff dff11(S[1],clk,reset,S10);
dff dff12(S10,clk,reset,S11);
dff dff13(S11,clk,reset,S12);
dff dff14(S12,clk,reset,S13);
dff dff15(S13,clk,reset,S14);
shift2 s2(w_I04,S14,w_I2);

reg32 r6(w_I2,clk,reset,w_I05);
dff dff16(S[0],clk,reset,S15);
dff dff17(S15,clk,reset,S16);
dff dff18(S16,clk,reset,S17);
dff dff19(S17,clk,reset,S18);
dff dff20(S18,clk,reset,S19);
dff dff21(S19,clk,reset,S20);
shift1 s1(w_I05,S20,w_I1);



reg32 r7(w_I1,clk,reset,w_I06);
dff dff22(R_q,clk,reset,R_q1);
dff dff23(R_q1,clk,reset,R_q2);
dff dff24(R_q2,clk,reset,R_q3);
dff dff25(R_q3,clk,reset,R_q4);
dff dff26(R_q4,clk,reset,R_q5);
dff dff27(R_q5,clk,reset,R_q6);
reverse rev2(w_I06,R_q6,O);



endmodule
