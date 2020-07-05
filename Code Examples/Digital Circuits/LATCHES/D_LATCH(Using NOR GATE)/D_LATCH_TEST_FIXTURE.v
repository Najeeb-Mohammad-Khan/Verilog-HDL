`timescale 1ns / 1ps

module D_LATCH_TEST_FIXTURE;

	// Inputs
	reg D;

	// Outputs
	wire Q;
	wire P;

	// Instantiate the Unit Under Test (UUT)
	D_LATCH uut (
		.Q(Q), 
		.P(P), 
		.D(D)
	);

	initial begin
		// Initialize Inputs
		D = 0;
		#100;		//Wait for 100ns.

		D = 1;
		#100;		//Wait for 100ns.

	end
      
endmodule

