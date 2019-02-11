`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:15:38 01/20/2019 
// Design Name: 
// Module Name:    rs4 
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
module rs4(
    input [7:0]I,
    input S,
    output [7:0]O
    );
mux2x1 mr41(I[0],I[4],S,O[0]);
mux2x1 mr42(I[1],I[5],S,O[1]);
mux2x1 mr43(I[2],I[6],S,O[2]);
mux2x1 mr44(I[3],I[7],S,O[3]);
mux2x1 mr45(I[4],0,S,O[4]);
mux2x1 mr46(I[5],0,S,O[5]);
mux2x1 mr47(I[6],0,S,O[6]);
mux2x1 mr48(I[7],0,S,O[7]);

endmodule
