`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:44:30 03/18/2019 
// Design Name: 
// Module Name:    sd_1011odm 
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
module sd_1011odm(
    input PI,
    input clk,
    input reset,
    output PO
    );
wire [1:0]Q,D;
wire w1,w3,w2,w4;
dff d6(D[0],clk,reset,Q[0]);
dff d7(D[1],clk,reset,Q[1]);
assign D[0]=PI;
and a1(PO,PI,Q[0],Q[1]);
not n1(w1,PI);
not n2(w2,Q[0]);
and a2(w3,PI,Q[1],w2);
and a3(w4,w1,Q[0]);
or o(D[1],w3,w4);

endmodule
