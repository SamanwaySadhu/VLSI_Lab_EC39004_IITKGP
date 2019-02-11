`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:07:26 01/20/2019
// Design Name:   ls
// Module Name:   /home/ise/Xilinx_P/barrel_shifter/ls_test.v
// Project Name:  barrel_shifter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ls
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ls_test;

	// Inputs
	reg [7:0] I;
	reg [2:0] S;

	// Outputs
	wire [7:0] O;

	// Instantiate the Unit Under Test (UUT)
	ls uut (
		.I(I), 
		.S(S), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		I = 8'b10110010;
		S = 3'b101;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

