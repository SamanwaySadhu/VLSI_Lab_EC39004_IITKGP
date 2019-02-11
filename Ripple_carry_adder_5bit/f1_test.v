`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:43:31 01/20/2019
// Design Name:   full_adder1b
// Module Name:   /home/ise/Xilinx_P/Adder/f1_test.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder1b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module f1_test;

	// Inputs
	reg a;
	reg b;
	reg c_in;

	// Outputs
	wire s;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	full_adder1b uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.s(s), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 1;
		b = 1;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

