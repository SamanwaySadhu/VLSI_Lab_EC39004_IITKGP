`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:59:06 01/31/2019
// Design Name:   multiplierMxN
// Module Name:   /home/ise/Xilinx_P/braun_array/bw_test.v
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

module bw_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg P;

	// Outputs
	wire [7:0] p;

	// Instantiate the Unit Under Test (UUT)
	multiplierMxN uut (
		.a(a), 
		.b(b), 
		.P(P), 
		.p(p)
	);

	initial begin
		// Initialize Inputs
		a = 4'b1010;
		b = 4'b0010;
		P = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

