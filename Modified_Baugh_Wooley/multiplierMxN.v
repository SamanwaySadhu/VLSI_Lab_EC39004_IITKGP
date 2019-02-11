`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:33:38 01/28/2019 
// Design Name: 
// Module Name:    multiplierMxN 
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
module multiplierMxN #(integer M = 4, integer N=4) (
    input [M-1:0]a,
    input [N-1:0]b,
	 input P,
    output [(M+N)-1:0]p
    );

wire [M-1:0]l[N-1:0];
wire [M-1:0]l1[N-1:0];
wire [M-1:0]s[N-2:0];
wire [M-2:0]co[N-2:0];

genvar i1;
generate
	for(i1=0;i1<N;i1=i1+1) begin: gen1_loop
		layer #(.M(M)) la(a,b[i1],l1[i1]);
	end
endgenerate

genvar im1,im2;
generate
	for(im1=0;im1<(M-1);im1=im1+1) begin: genm1_loop
		assign l[im1][N-1]=P^l1[im1][N-1];
		for(im2=0;im2<(N-1);im2=im2+1) begin: genm2_loop
			assign l[im1][im2]=l1[im1][im2];
		end
	end
endgenerate

genvar in;
generate
	for(in=0;in<(N-1);in=in+1) begin: genn_loop
		assign l[M-1][in]=P^l1[M-1][in];
	end
endgenerate
assign l[M-1][N-1]=l1[M-1][N-1];

wire [M-2:0]z;
genvar i2;
generate
	for(i2=0;i2<=(M-2);i2=i2+1) begin:gen2_loop
		assign z[i2]=1'b0;
	end
endgenerate

layer_adder #(.M(M)) l0(l[0],l[1],z,s[0],co[0],p[0]);
genvar i3;
generate
	for(i3=1;i3<(N-1);i3=i3+1) begin: gen3_loop
		layer_adder #(.M(M)) l1(s[i3-1],l[i3+1],co[i3-1],s[i3],co[i3],p[i3]);
	end
endgenerate

assign p[N-1]=s[N-2][0];
wire [M-2:0]coo;
full_adder f0(s[N-2][1],co[N-2][0],P,p[N],coo[0]);
genvar i4;
generate
	for(i4=1;i4<(M-1);i4=i4+1) begin: gen4_loop
		full_adder f1(s[N-2][i4+1],co[N-2][i4],coo[i4-1],p[N+i4],coo[i4]);
	end
endgenerate

assign p[M+N-1]=coo[M-2]^P;

endmodule
