`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:23:22 01/20/2019 
// Design Name: 
// Module Name:    full_adder5b 
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
module full_adder5b(
    input [5:0]a,
    input [5:0]b,
    input c_in,
    output [5:0]s,
    output c_out
    );
wire t11,t12,t13,t14;
full_adder1b full_adder1(a[0],b[0],c_in,s[0],t11);
full_adder1b full_adder2(a[1],b[1],t11,s[1],t12);
full_adder1b full_adder3(a[2],b[2],t12,s[2],t13);
full_adder1b full_adder4(a[3],b[3],t13,s[3],t14);
full_adder1b full_adder5(a[4],b[4],t14,s[4],c_out);

endmodule
