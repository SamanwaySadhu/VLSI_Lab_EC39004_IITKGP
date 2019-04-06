`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:08:13 04/04/2019 
// Design Name: 
// Module Name:    full_adder 
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
module full_adder(
    input a,
    input b,
    input c_in,
    output s,
    output c_out
    );
	wire w1,w2,w3;
	xor x(s,a,b,c_in);
	and a1(w1,a,b);
	and a2(w2,b,c_in);
	and a3(w3,a,c_in);
	or o(c_out,w1,w2,w3);

endmodule
