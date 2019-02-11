`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:08:43 01/28/2019
// Design Name:   multiplierMxN
// Module Name:   /home/ise/Xilinx_P/braun_array/mulmn_test.v
// Project Name:  braun_array
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplierMxN
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mulmn_test;

	// Inputs
	reg [4:0] a;
	reg [3:0] b;

	// Outputs
	wire [9:0] p;

	// Instantiate the Unit Under Test (UUT)
	multiplierMxN  uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 5'b10101;
		b = 4'b1011;

		// Wait 100 ns for global reset to finish
		#100;
        
		  
		// Add stimulus here

	end
      
endmodule

