`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:34 02/10/2019 
// Design Name: 
// Module Name:    shift2 
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
module shift2(
    input [31:0]I,
    input S,
    output [31:0]O
    );

genvar i1;
generate
	for(i1=0;i1<2;i1=i1+1) begin: gen1_loop
		mux2x1 m7(I[i1],1'b0,S,O[i1]);
	end
	for(i1=2;i1<32;i1=i1+1) begin: gen2_loop
		mux2x1 m8(I[i1],I[i1-2],S,O[i1]);
	end
endgenerate

endmodule
