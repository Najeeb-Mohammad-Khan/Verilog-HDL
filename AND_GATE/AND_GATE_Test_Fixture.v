`timescale 1ns / 1ps

module AND_GATE_Test_Fixture;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	AND_GATE uut (
		.Y(Y), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		#100;  // Wait 100ns.
        
		A = 1;
		#100;  // Wait 100ns.
		
		A = 0;
		B = 1;
		#100;  // Wait 100ns.

		A = 1;
		#100;  // Wait 100ns.

	end
      
endmodule

