`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:45:21 04/03/2019 
// Design Name: 
// Module Name:    reg16 
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
module reg16(
    input [15:0]D,
    input clk,
    input reset,
    output reg [15:0]Q
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

endmodule
