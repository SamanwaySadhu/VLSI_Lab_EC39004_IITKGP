`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:03:01 01/20/2019 
// Design Name: 
// Module Name:    ls4 
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
module ls4(
    input [7:0]I,
    input S,
    output [7:0]O
    );
mux2x1 m41(I[0],0,S,O[0]);
mux2x1 m42(I[1],0,S,O[1]);
mux2x1 m43(I[2],0,S,O[2]);
mux2x1 m44(I[3],0,S,O[3]);
mux2x1 m45(I[4],I[0],S,O[4]);
mux2x1 m46(I[5],I[1],S,O[5]);
mux2x1 m47(I[6],I[2],S,O[6]);
mux2x1 m48(I[7],I[3],S,O[7]);

endmodule
