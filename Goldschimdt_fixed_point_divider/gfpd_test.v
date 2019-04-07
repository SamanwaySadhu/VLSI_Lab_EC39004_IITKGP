`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:17:17 04/06/2019
// Design Name:   gfpdivider
// Module Name:   /home/ise/Xilinx_P/goldschmidt/gfpd_test.v
// Project Name:  goldschmidt
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: gfpdivider
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module gfpd_test;

	// Inputs
	reg [15:0] N;
	reg [15:0] D;
	reg clk;
	reg reset;

	// Outputs
	wire [15:0] No;

	// Instantiate the Unit Under Test (UUT)
	gfpdivider uut (
		.N(N), 
		.D(D), 
		.clk(clk), 
		.reset(reset), 
		.No(No)
	);
	
	initial begin
	clk = 0;
	forever #5 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		N = 0;
		D = 0;
		clk = 0;
		reset = 1;

		// Wait 100 ns for global reset to finish
		#20;
		
		reset=0;
		
		#20;
		
		N=16'b0000000100000000;
		D=16'b0000001000000000;
		
		#200;
		
		N=16'b0000000100000000;
		D=16'b0000001010000000;
		
		#200;
        
		// Add stimulus here

	end
      
endmodule

