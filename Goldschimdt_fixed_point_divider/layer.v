`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:09:51 04/04/2019 
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
module layer(
    input [15:0]a,
    input b,
    output [15:0]l
    );
	
	genvar i;
	generate
		for(i=0;i<16;i=i+1) begin: a_loop
			and a(l[i],a[i],b);
		end
endgenerate

endmodule
