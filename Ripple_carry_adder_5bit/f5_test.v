`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:28:50 01/20/2019
// Design Name:   full_adder5b
// Module Name:   /home/ise/Xilinx_P/Adder/f5_test.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: full_adder5b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module f5_test;

	// Inputs
	reg [5:0] a;
	reg [5:0] b;
	reg c_in;

	// Outputs
	wire [5:0] s;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	full_adder5b uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.s(s), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs
		a = 5'b10101;
		b = 5'b01010;
		c_in = 1'b0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

