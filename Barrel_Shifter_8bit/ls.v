`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:05:04 01/20/2019 
// Design Name: 
// Module Name:    ls 
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
module ls(
    input [7:0]I,
    input [2:0]S,
    output [7:0]O
    );
wire [7:0]O1,O2;
ls1 g1(I,S[0],O1);
ls2 g2(O1,S[1],O2);
ls4 g3(O2,S[2],O);

endmodule
