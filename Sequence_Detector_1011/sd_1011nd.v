`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:17:29 03/18/2019 
// Design Name: 
// Module Name:    sd_1011nd 
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
module sd_1011nd(
    input PI,
    input clk,
    input reset,
    output PO
    );

wire [2:0]Q,D;
wire w1,w2,w3,w4,w5,w6;
dff d3(D[0],clk,reset,Q[0]);
dff d4(D[1],clk,reset,Q[1]);
dff d5(D[2],clk,reset,Q[2]);
not n1(w1,PI);
not n2(w2,Q[0]);
and a1(w3,Q[0],Q[1]);
not n3(w4,w3);
and a2(D[0],PI,w4);
and a3(D[2],PI,w3);
and a4(w5,PI,Q[1],w2);
and a5(w6,Q[0],w1);
or o(D[1],w5,w6);
assign PO=Q[2];

endmodule
