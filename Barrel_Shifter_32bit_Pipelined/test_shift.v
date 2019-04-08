`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:55:17 04/08/2019
// Design Name:   shift
// Module Name:   /home/ise/Xilinx_P/barrel_shifter_pipelined/test_shift.v
// Project Name:  barrel_shifter_pipelined
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: shift
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_shift;

	// Inputs
	reg [31:0] I;
	reg [4:0] S;
	reg R;
	reg reset;
	reg clk;

	// Outputs
	wire [31:0] O;

	// Instantiate the Unit Under Test (UUT)
	shift uut (
		.I(I), 
		.S(S), 
		.R(R), 
		.reset(reset), 
		.O(O), 
		.clk(clk)
	);

	initial begin
	clk = 0;
	forever #5 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		reset = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#20;
		reset = 0;
		#20;
		
		I=10;
		R=1;
		S=2;
		
		#20;
		
		I=63;
		S=5;
		R=0;
		
		#20;
		
        
		// Add stimulus here

	end
      
endmodule

