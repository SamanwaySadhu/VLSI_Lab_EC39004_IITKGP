`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:17:23 01/20/2019 
// Design Name: 
// Module Name:    rs 
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
module rs(
    input [7:0]I,
    input [2:0]S,
    output [7:0]O
    );
wire [7:0]Or1,Or2;
rs1 gr1(I,S[0],Or1);
rs2 gr2(Or1,S[1],Or2);
rs4 gr3(Or2,S[2],O);

endmodule
