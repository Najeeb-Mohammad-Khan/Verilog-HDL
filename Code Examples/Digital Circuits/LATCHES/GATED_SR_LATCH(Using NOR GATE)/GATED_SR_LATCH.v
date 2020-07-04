`timescale 1ns / 1ps

module GATED_SR_LATCH(output Q,P,input S,R,CLK);	//Declaring GATED SR LATCH Module where Q,P as OUTPUT and S,R,CLK as INPUT.

wire nand1,nand2,nor1,nor2;

assign nor1 = Q;		//Connecting output port Q with wire nor1.
assign nor2 = P;		//Connecting output port P with wire nor2.

nand F1(nand1,CLK,S);		//Using inbuilt 'nand' gate.

nand F2(nand2,CLK,R);		//Using inbuilt 'nand' gate.

nor F3(Q,nand1,nor2);		//Using inbuilt 'nor' gate.

nor F4(P,nand2,nor1);		//Using inbuilt 'nor' gate.

endmodule
