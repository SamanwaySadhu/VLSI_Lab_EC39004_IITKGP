`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:56:20 04/03/2019 
// Design Name: 
// Module Name:    lutable 
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
module lutable(
    input [15:0]D,
    output [15:0]Do
    );

always @(D) begin
	casex(D)
		16'b011xxxxxxxxxxxxx : Do=16'b0000000000000010;
		16'b010xxxxxxxxxxxxx : Do=16'b0000000000000011;
		16'b0011xxxxxxxxxxxx : Do=16'b0000000000000100;
		16'b0010xxxxxxxxxxxx : Do=16'b0000000000000110;
		16'b00011xxxxxxxxxxx : Do=16'b0000000000001000;
		16'b00010xxxxxxxxxxx : Do=16'b0000000000001100;
		16'b000011xxxxxxxxxx : Do=16'b0000000000010000;
		16'b000010xxxxxxxxxx : Do=16'b0000000000011000;
		16'b0000011xxxxxxxxx : Do=16'b0000000000100000;
		16'b0000010xxxxxxxxx : Do=16'b0000000000110000;
		16'b00000011xxxxxxxx : Do=16'b0000000001000000;
		16'b00000010xxxxxxxx : Do=16'b0000000001100000;
		16'b000000011xxxxxxx : Do=16'b0000000010000000;
		16'b000000010xxxxxxx : Do=16'b0000000011000000;
		16'b0000000011xxxxxx : Do=16'b0000000100000000;
		16'b0000000010xxxxxx : Do=16'b0000000110000000;
		16'b00000000011xxxxx : Do=16'b0000001000000000;
		16'b00000000010xxxxx : Do=16'b0000001100000000;
		16'b000000000011xxxx : Do=16'b0000010000000000;
		16'b000000000010xxxx : Do=16'b0000011000000000;
		16'b0000000000011xxx : Do=16'b0000100000000000;
		16'b0000000000010xxx : Do=16'b0000110000000000;
		16'b00000000000011xx : Do=16'b0001000000000000;
		16'b00000000000010xx : Do=16'b0001100000000000;
		16'b000000000000011x : Do=16'b0010000000000000;
		16'b000000000000010x : Do=16'b0011000000000000;
		16'b000000000000001x : Do=16'b0110000000000000;
		default : Do=16'bxxxxxxxxxxxxxxxx;
	endcase
end

endmodule
