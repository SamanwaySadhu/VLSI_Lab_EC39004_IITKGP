`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:52:34 01/20/2019 
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
not g1(t1,S);
and g2(t2,t1,I0);
and g3(t3,S,I1);
or g4(O,t2,t3);

endmodule
