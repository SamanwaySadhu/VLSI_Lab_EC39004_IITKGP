`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:31:03 04/06/2019 
// Design Name: 
// Module Name:    reg32 
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
module reg32(
    input [31:0]D,
    input clk,
    input reset,
    output [31:0]Q
    );

dff d00(D[0],clk,reset,Q[0]);
dff d01(D[1],clk,reset,Q[1]);
dff d02(D[2],clk,reset,Q[2]);
dff d03(D[3],clk,reset,Q[3]);
dff d04(D[4],clk,reset,Q[4]);
dff d05(D[5],clk,reset,Q[5]);
dff d06(D[6],clk,reset,Q[6]);
dff d07(D[7],clk,reset,Q[7]);
dff d08(D[8],clk,reset,Q[8]);
dff d09(D[9],clk,reset,Q[9]);
dff d10(D[10],clk,reset,Q[10]);
dff d11(D[11],clk,reset,Q[11]);
dff d12(D[12],clk,reset,Q[12]);
dff d13(D[13],clk,reset,Q[13]);
dff d14(D[14],clk,reset,Q[14]);
dff d15(D[15],clk,reset,Q[15]);
dff d16(D[16],clk,reset,Q[16]);
dff d17(D[17],clk,reset,Q[17]);
dff d18(D[18],clk,reset,Q[18]);
dff d19(D[19],clk,reset,Q[19]);
dff d20(D[20],clk,reset,Q[20]);
dff d21(D[21],clk,reset,Q[21]);
dff d22(D[22],clk,reset,Q[22]);
dff d23(D[23],clk,reset,Q[23]);
dff d24(D[24],clk,reset,Q[24]);
dff d25(D[25],clk,reset,Q[25]);
dff d26(D[26],clk,reset,Q[26]);
dff d27(D[27],clk,reset,Q[27]);
dff d28(D[28],clk,reset,Q[28]);
dff d29(D[29],clk,reset,Q[29]);
dff d30(D[30],clk,reset,Q[30]);
dff d31(D[31],clk,reset,Q[31]);


endmodule
