`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:23:27 01/28/2019
// Design Name:   multiplier5x4
// Module Name:   /home/ise/Xilinx_P/braun_array/mul54_test.v
// Project Name:  braun_array
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: multiplier5x4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module mul54_test;

	// Inputs
	reg [4:0] a;
	reg [3:0] b;

	// Outputs
	wire [8:0] p;

	// Instantiate the Unit Under Test (UUT)
	multiplier5x4 uut (
		.a(a), 
		.b(b), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 5'b10101;
		b = 4'b1010;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

