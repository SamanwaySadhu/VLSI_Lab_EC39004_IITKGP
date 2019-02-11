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
    input set,
    input reset,
    input clk,
    output reg q,
    output qbar
    );
assign qbar=~q;
always@(posedge clk)
begin
	if(reset==1) q<=1'b0;
	else if(set == 1) q<= 1'b1;
	else q<=d;
end 

endmodule
