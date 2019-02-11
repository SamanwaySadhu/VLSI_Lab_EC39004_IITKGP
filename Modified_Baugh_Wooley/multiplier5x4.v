`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:48:02 01/28/2019 
// Design Name: 
// Module Name:    multiplier5x4 
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
module multiplier5x4(
    input [4:0]a,
    input [3:0]b,
    output [8:0]p
    );

//wires
wire [51:0]w;

//andgate instantiations 
assign w[0]=a[0]&b[0];
assign w[1]=a[1]&b[0];
assign w[2]=a[2]&b[0];
assign w[3]=a[3]&b[0];
assign w[4]=a[4]&b[0];

assign w[5]=a[0]&b[1];
assign w[6]=a[1]&b[1];
assign w[7]=a[2]&b[1];
assign w[8]=a[3]&b[1];
assign w[9]=a[4]&b[1];

assign w[10]=a[0]&b[2];
assign w[11]=a[1]&b[2];
assign w[12]=a[2]&b[2];
assign w[13]=a[3]&b[2];
assign w[14]=a[4]&b[2];

assign w[15]=a[0]&b[3];
assign w[16]=a[1]&b[3];
assign w[17]=a[2]&b[3];
assign w[18]=a[3]&b[3];
assign w[19]=a[4]&b[3];

assign p[0]=w[0];
//full adders instatiations
full_adder a10(1'b0,w[1],w[5],w[20],w[21]);
full_adder a11(1'b0,w[2],w[6],w[22],w[23]);
full_adder a12(1'b0,w[3],w[7],w[24],w[25]);
full_adder a13(1'b0,w[4],w[8],w[26],w[27]);

full_adder a20(w[10],w[21],w[22],w[28],w[29]);
full_adder a21(w[11],w[23],w[24],w[30],w[31]);
full_adder a22(w[12],w[25],w[26],w[32],w[33]);
full_adder a23(w[13],w[9],w[27],w[34],w[35]);

full_adder a30(w[15],w[29],w[30],w[36],w[37]);
full_adder a31(w[16],w[31],w[32],w[38],w[39]);
full_adder a32(w[17],w[33],w[34],w[40],w[41]);
full_adder a33(w[18],w[14],w[35],w[42],w[43]);

full_adder a40(1'b0,w[37],w[38],w[44],w[45]);
full_adder a41(w[39],w[40],w[45],w[46],w[47]);
full_adder a42(w[41],w[42],w[47],w[48],w[49]);
full_adder a43(w[19],w[43],w[49],w[50],w[51]);

//output assignments
assign p[1]=w[20];
assign p[2]=w[28];
assign p[3]=w[36];
assign p[4]=w[44];
assign p[5]=w[46];
assign p[6]=w[48];
assign p[7]=w[50];
assign p[8]=w[51];


endmodule
