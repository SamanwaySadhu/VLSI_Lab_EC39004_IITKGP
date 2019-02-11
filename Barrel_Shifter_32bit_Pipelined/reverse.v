`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    05:12:58 02/11/2019 
// Design Name: 
// Module Name:    reverse 
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
module reverse(
    input [31:0]I,
    input S,
    output [31:0]O
    );

genvar i;
generate
	for(i=0;i<32;i=i+1) begin:gen_loop
		mux2x1 m(I[i],I[31-i],S,O[i]);
	end
endgenerate

endmodule
