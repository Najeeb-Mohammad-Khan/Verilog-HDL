`timescale 1ns / 1ps

module SR_LATCH_TEST_FIXTURE;

	// Inputs
	reg S;
	reg R;

	// Outputs
	wire Q;
	wire P;

	// Instantiate the Unit Under Test (UUT)
	SR_LATCH uut (
		.Q(Q), 
		.P(P), 
		.S(S), 
		.R(R)
	);

	initial begin
		// Initialize Inputs
		S = 0;
		R = 0;
		#100;		//Wait for 100ns

		S = 1;
		#100;		//Wait for 100ns

		S = 0;
		R = 1;
		#100;		//Wait for 100ns

		S = 1;
		#100;		//Wait for 100ns


	end
      
endmodule

