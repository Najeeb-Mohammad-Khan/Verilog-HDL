`timescale 1ns / 1ps

module HALF_ADDER_TEST_FIXTURE;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Sum;
	wire Carry;

	// Instantiate the Unit Under Test (UUT)
	HALF_ADDER uut (
		.Sum(Sum), 
		.Carry(Carry), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		#100;		//Wait for 100ns
        
		A = 1;
		#100;		//Wait for 100ns
        
		A = 0;
		B = 1;
		#100;		//Wait for 100ns

		A = 1;
		#100;		//Wait for 100ns
		
	end
      
endmodule

