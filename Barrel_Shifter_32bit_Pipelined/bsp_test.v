`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   06:22:49 02/11/2019
// Design Name:   shift
// Module Name:   /home/ise/Xilinx_P/barrel_shifter_pipelined/bsp_test.v
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

module bsp_test;

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
	
	always
		begin
		#2;
		clk=~clk;
		end

	initial begin
		// Initialize Inputs
		I = 32'b00000000000000000001000011101110;
		S = 5'b00001;
		R = 1;
		reset=1;
		clk = 1;

		// Wait 100 ns for global reset to finish
		

		// Wait 100 ns for global reset to finish
		#100;
		
		I = 32'b00000000000000000001000011101110;
		S = 5'b00001;
		R = 0;
		reset=0;

		// Wait 100 ns for global reset to finish
		

		// Wait 100 ns for global reset to finish
		#100;
		
		I = 32'b00000000000000000001000011101110;
		S = 5'b00001;
		R = 1;
		reset=0;

		// Wait 100 ns for global reset to finish
		

		// Wait 100 ns for global reset to finish
		#100;
		
		
        
		// Add stimulus here

	end
      
endmodule

