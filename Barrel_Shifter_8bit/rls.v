`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:19:14 01/20/2019 
// Design Name: 
// Module Name:    rls 
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
module rls(
    input [7:0]I,
    input [2:0]S,
    input P,
    output [7:0]O
    );
wire [7:0]Ol,Or;
mux2x1 m1(I[7],I[0],P,Ol[0]);
mux2x1 m2(I[6],I[1],P,Ol[1]);
mux2x1 m3(I[5],I[2],P,Ol[2]);
mux2x1 m4(I[4],I[3],P,Ol[3]);
mux2x1 m5(I[3],I[4],P,Ol[4]);
mux2x1 m6(I[2],I[5],P,Ol[5]);
mux2x1 m7(I[1],I[6],P,Ol[6]);
mux2x1 m8(I[0],I[7],P,Ol[7]);
ls sl(Ol,S,Or);
mux2x1 m9(Or[7],Or[0],P,O[0]);
mux2x1 ma(Or[6],Or[1],P,O[1]);
mux2x1 mb(Or[5],Or[2],P,O[2]);
mux2x1 mc(Or[4],Or[3],P,O[3]);
mux2x1 md(Or[3],Or[4],P,O[4]);
mux2x1 me(Or[2],Or[5],P,O[5]);
mux2x1 mf(Or[1],Or[6],P,O[6]);
mux2x1 mg(Or[0],Or[7],P,O[7]);

endmodule
