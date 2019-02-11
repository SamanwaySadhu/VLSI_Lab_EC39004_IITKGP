`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:21:00 01/20/2019 
// Design Name: 
// Module Name:    full_adder1b 
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
module full_adder1b(
    input a,
    input b,
    input c_in,
    output s,
    output c_out
    );
sum sum1(a,b,c_in,s);
carry carry1(a,b,c_in,c_out);

endmodule
