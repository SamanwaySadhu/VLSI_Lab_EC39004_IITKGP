`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:00:29 01/20/2019 
// Design Name: 
// Module Name:    ls2 
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
module ls2(
    input [7:0]I,
    input S,
    output [7:0]O
    );
mux2x1 m21(I[0],0,S,O[0]);
mux2x1 m22(I[1],0,S,O[1]);
mux2x1 m23(I[2],I[0],S,O[2]);
mux2x1 m24(I[3],I[1],S,O[3]);
mux2x1 m25(I[4],I[2],S,O[4]);
mux2x1 m26(I[5],I[3],S,O[5]);
mux2x1 m27(I[6],I[4],S,O[6]);
mux2x1 m28(I[7],I[5],S,O[7]);

endmodule
