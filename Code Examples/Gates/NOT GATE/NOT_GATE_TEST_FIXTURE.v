`timescale 1ns / 1ps

module NOT_GATE_TEST_FIXTURE;
	reg A;
	// Outputs
	wire Y;

	// Instantiate the Unit Under Test (UUT)
	NOT_GATE uut (
		.A(A),
		.Y(Y)
	);

	initial begin
		// Initialize Inputs

		A = 0;
		#100;	//Wait for 100ns
      
		A = 1;  //Wait for 100ns
		#100;

	end
      
endmodule

