`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:56:02 01/27/2019 
// Design Name: 
// Module Name:    layer_adder 
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
module layer_adder #(integer M = 5) (
    input [M-1:0]a,
    input [M-1:0]b,
    input [M-2:0]c_in,
    output [M-1:0]s,
    output [M-2:0]c_out,
    output P
    );

assign P=a[0];
assign s[M-1]=b[M-1];
genvar i;
generate
	for(i=1;i<M;i=i+1)begin:gen_loop
		full_adder f(a[i],b[i-1],c_in[i-1],s[i-1],c_out[i-1]);
	end
endgenerate

endmodule
