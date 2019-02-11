`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:21 02/10/2019 
// Design Name: 
// Module Name:    shift4 
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
module shift4(
    input [31:0]I,
    input S,
    output [31:0]O
    );

genvar i1;
generate
	for(i1=0;i1<4;i1=i1+1) begin: gen1_loop
		mux2x1 m5(I[i1],1'b0,S,O[i1]);
	end
	for(i1=4;i1<32;i1=i1+1) begin: gen2_loop
		mux2x1 m6(I[i1],I[i1-4],S,O[i1]);
	end
endgenerate

endmodule
