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
    output reg [15:0]Do
    );

always @(D) begin
	casex(D)
		16'b011xxxxxxxxxxxxx : assign Do=16'b0000000000000010;
		16'b010xxxxxxxxxxxxx : assign Do=16'b0000000000000011;
		16'b0011xxxxxxxxxxxx : assign Do=16'b0000000000000100;
		16'b0010xxxxxxxxxxxx : assign Do=16'b0000000000000110;
		16'b00011xxxxxxxxxxx : assign Do=16'b0000000000001000;
		16'b00010xxxxxxxxxxx : assign Do=16'b0000000000001100;
		16'b000011xxxxxxxxxx : assign Do=16'b0000000000010000;
		16'b000010xxxxxxxxxx : assign Do=16'b0000000000011000;
		16'b0000011xxxxxxxxx : assign Do=16'b0000000000100000;
		16'b0000010xxxxxxxxx : assign Do=16'b0000000000110000;
		16'b00000011xxxxxxxx : assign Do=16'b0000000001000000;
		16'b00000010xxxxxxxx : assign Do=16'b0000000001100000;
		16'b000000011xxxxxxx : assign Do=16'b0000000010000000;
		16'b000000010xxxxxxx : assign Do=16'b0000000011000000;
		16'b0000000011xxxxxx : assign Do=16'b0000000100000000;
		16'b0000000010xxxxxx : assign Do=16'b0000000110000000;
		16'b00000000011xxxxx : assign Do=16'b0000001000000000;
		16'b00000000010xxxxx : assign Do=16'b0000001100000000;
		16'b000000000011xxxx : assign Do=16'b0000010000000000;
		16'b000000000010xxxx : assign Do=16'b0000011000000000;
		16'b0000000000011xxx : assign Do=16'b0000100000000000;
		16'b0000000000010xxx : assign Do=16'b0000110000000000;
		16'b00000000000011xx : assign Do=16'b0001000000000000;
		16'b00000000000010xx : assign Do=16'b0001100000000000;
		16'b000000000000011x : assign Do=16'b0010000000000000;
		16'b000000000000010x : assign Do=16'b0011000000000000;
		16'b000000000000001x : assign Do=16'b0110000000000000;
		default : assign Do=16'bxxxxxxxxxxxxxxxx;
	endcase
end

endmodule
