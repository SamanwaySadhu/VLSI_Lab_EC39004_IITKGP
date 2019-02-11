`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:17:52 01/20/2019 
// Design Name: 
// Module Name:    carry 
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
module carry(
    input a,
    input b,
    input c_in,
    output c_out
    );
wire t2,t3,t4;
and g3(t2,a,b);
and g4(t3,c,b);
and g5(t4,c,a);
or g6(c_out,t2,t3,t4);

endmodule
