`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:13:02 04/04/2019 
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
module layer_adder(
    input [15:0]a,
    input [15:0]b,
    input [14:0]c_in,
    output [15:0]s,
    output [14:0]c_out,
    output P
    );
	
	assign P=a[0];
	assign s[15]=b[15];
	genvar i;
	generate
		for(i=1;i<16;i=i+1)begin:gen_loop
			full_adder f(a[i],b[i-1],c_in[i-1],s[i-1],c_out[i-1]);
		end
endgenerate

endmodule
