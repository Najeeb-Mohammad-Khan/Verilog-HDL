`timescale 1ns / 1ps

module OR_GATE_TEST_FIXTURE;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	OR_GATE uut (
		.Y(Y), 
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

