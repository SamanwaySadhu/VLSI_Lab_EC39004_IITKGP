`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:54:26 02/10/2019 
// Design Name: 
// Module Name:    mux2x1 
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
module mux2x1(
    input I0,
    input I1,
    input S,
    output O
    );

wire t1,t2,t3;
not n(t1,S);
and a1(t2,I0,t1);
and a2(t3,I1,S);
or o(O,t2,t3);

endmodule
