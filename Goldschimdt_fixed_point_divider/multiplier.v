`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:31:51 04/04/2019 
// Design Name: 
// Module Name:    multiplier 
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
module multiplier(
    input [15:0]a,
    input [15:0]b,
    output [31:0]p
    );

wire [15:0]l[15:0];
wire [15:0]s[14:0];
wire [14:0]co[14:0];

genvar i1;
generate
	for(i1=0;i1<16;i1=i1+1) begin: gen1_loop
		layer la(a,b[i1],l[i1]);
	end
endgenerate

layer_adder l0(l[0],l[1],15'b000000000000000,s[0],co[0],p[0]);
genvar i3;
generate
	for(i3=1;i3<15;i3=i3+1) begin: gen3_loop
		layer_adder l1(s[i3-1],l[i3+1],co[i3-1],s[i3],co[i3],p[i3]);
	end
endgenerate

assign p[15]=s[14][0];
wire [14:0]coo;
full_adder f0(s[14][1],co[14][0],1'b0,p[16],coo[0]);

genvar i4;
generate
	for(i4=1;i4<15;i4=i4+1) begin: gen4_loop
		full_adder f1(s[14][i4+1],co[14][i4],coo[i4-1],p[16+i4],coo[i4]);
	end
endgenerate

assign p[31]=coo[14];

endmodule
