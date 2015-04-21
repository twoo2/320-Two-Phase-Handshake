`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:09:44 12/02/2014
// Design Name:   TwoPhaseHandshake
// Module Name:   C:/Users/Wooster/Documents/CSE320/Homework6/HW6/Problem3/TwoPhaseHS_tb.v
// Project Name:  Problem3
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TwoPhaseHandshake
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TwoPhaseHS_tb;

	// Inputs
	reg clkA;
	reg clkB;
	reg DataA;
	reg ReqA;

	// Outputs
	wire Ack;
	wire AckA;
	wire DataB;
	wire Req;
	wire ReqB;
	
	// Instantiate the Unit Under Test (UUT)
	TwoPhaseHandshake uut (.clkA(clkA), .clkB(clkB), .DataA(DataA), .ReqA(ReqA), .Ack(Ack), .AckA(AckA), .DataB(DataB), .Req(Req), .ReqB(ReqB));

	initial
		fork
			begin
				forever #5 clkA = ~clkA;
			end
			begin
				forever #6 clkB = ~clkB;
			end
			begin
				clkA = 0;
				clkB = 0;
				DataA = 1;
				ReqA = 0;
			end
			begin
				#100;
				@(posedge clkA) #1 ReqA = 1;
				@(posedge clkA) ReqA = 0;
				@(negedge AckA) #1 ReqA = 1;
				@(posedge clkA) ReqA = 0;
			end
		join
endmodule

