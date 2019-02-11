`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:23:06 01/20/2019
// Design Name:   rls
// Module Name:   /home/ise/Xilinx_P/barrel_shifter/rls_test.v
// Project Name:  barrel_shifter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rls
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rls_test;

	// Inputs
	reg [7:0] I;
	reg [2:0] S;
	reg P;

	// Outputs
	wire [7:0] O;

	// Instantiate the Unit Under Test (UUT)
	rls uut (
		.I(I), 
		.S(S), 
		.P(P), 
		.O(O)
	);

	initial begin
		// Initialize Inputs
		I = 8'b10110010;
		S = 3'b101;
		P = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		I = 8'b10110010;
		S = 3'b101;
		P = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

