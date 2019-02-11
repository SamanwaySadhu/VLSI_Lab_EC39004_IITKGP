`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:11:20 01/20/2019 
// Design Name: 
// Module Name:    rs1 
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
module rs1(
    input [7:0]I,
    input S,
    output [7:0]O
    );
mux2x1 mr11(I[0],I[1],S,O[0]);
mux2x1 mr12(I[1],I[2],S,O[1]);
mux2x1 mr13(I[2],I[3],S,O[2]);
mux2x1 mr14(I[3],I[4],S,O[3]);
mux2x1 mr15(I[4],I[5],S,O[4]);
mux2x1 mr16(I[5],I[6],S,O[5]);
mux2x1 mr17(I[6],I[7],S,O[6]);
mux2x1 mr18(I[7],0,S,O[7]);

endmodule
