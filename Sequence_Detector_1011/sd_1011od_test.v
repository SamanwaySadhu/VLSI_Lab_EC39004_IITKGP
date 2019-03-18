`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:24:52 03/18/2019
// Design Name:   sd_1011od
// Module Name:   /home/ise/Xilinx_P/sequence_detector/sd_1011od_test.v
// Project Name:  sequence_detector
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sd_1011od
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sd_1011od_test;

	// Inputs
	reg PI;
	reg clk;
	reg reset;

	// Outputs
	wire PO;

	// Instantiate the Unit Under Test (UUT)
	sd_1011ndm uut (
		.PI(PI), 
		.clk(clk), 
		.reset(reset), 
		.PO(PO)
	);

	initial begin
	clk = 0;
	forever #5 clk = ~clk;
	end 
	initial begin
		PI = 0;
		reset = 1;
  // Wait 100 ns for global reset to finish
		#30;
      reset = 0;
		#40;
		PI= 1;
		#10;
		PI= 0;
		#10;
		PI= 1; 
		#20;
		PI= 0; 
		#10;
		PI= 1; 
		#20;
		PI= 0;

	end
      
endmodule

