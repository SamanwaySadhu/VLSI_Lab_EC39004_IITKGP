`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:34:59 01/27/2019 
// Design Name: 
// Module Name:    layer 
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
module layer #(integer M = 5) (
    input [M-1:0]a,
    input b,
    output [M-1:0]l
    );
genvar i;
generate
	for(i=0;i<M;i=i+1) begin: a_loop
		and a(l[i],a[i],b);
	end
endgenerate

endmodule
