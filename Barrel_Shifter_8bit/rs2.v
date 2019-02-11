`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:13:56 01/20/2019 
// Design Name: 
// Module Name:    rs2 
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
module rs2(
    input [7:0]I,
    input S,
    output [7:0]O
    );
mux2x1 mr21(I[0],I[3],S,O[0]);
mux2x1 mr22(I[1],I[3],S,O[1]);
mux2x1 mr23(I[2],I[4],S,O[2]);
mux2x1 mr24(I[3],I[5],S,O[3]);
mux2x1 mr25(I[4],I[6],S,O[4]);
mux2x1 mr26(I[5],I[7],S,O[5]);
mux2x1 mr27(I[6],0,S,O[6]);
mux2x1 mr28(I[7],0,S,O[7]);

endmodule
