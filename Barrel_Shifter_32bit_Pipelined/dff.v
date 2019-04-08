`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:59:42 02/11/2019 
// Design Name: 
// Module Name:    dff 
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
module dff(
    input d,
    input clk,
	 input reset,
	 output reg q
    );

always@(posedge clk)
begin
	if(reset==1) q<=1'b0;
	else q<=d;
end 

endmodule
