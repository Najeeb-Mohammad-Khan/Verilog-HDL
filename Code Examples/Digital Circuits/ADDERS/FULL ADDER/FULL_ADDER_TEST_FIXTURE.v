`timescale 1ns / 1ps

module FULL_ADDER_TEST_FIXTURE;

	// Inputs
	reg A;
	reg B;
	reg Carry_in;

	// Outputs
	wire Sum;
	wire Carry_out;

	// Instantiate the Unit Under Test (UUT)
	FULL_ADDER uut (
		.Sum(Sum), 
		.Carry_out(Carry_out), 
		.A(A), 
		.B(B), 
		.Carry_in(Carry_in)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		Carry_in = 0;
		#100;		//Wait for 100ns

		A = 1;
		#100		//Wait for 100ns

		A = 0;
		B = 1;
		#100;		//Wait for 100ns

		B = 0;
		Carry_in = 1;
		#100;		//Wait for 100ns

		A = 1;
		B = 1;
		Carry_in = 0;
		#100;		//Wait for 100ns

		A = 0;
		B = 1;
		Carry_in = 1;
		#100;		//Wait for 100ns

		A = 1;
		B = 0;
		Carry_in = 1;
		#100;		//Wait for 100ns

		A = 1;
		B = 1;
		Carry_in = 1;
		#100;		//Wait for 100ns


	end
      
endmodule

