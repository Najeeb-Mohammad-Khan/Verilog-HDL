`timescale 1ns / 1ps

module GATED_SR_LATCH(output Q,P,input S,R,CLK);	//Declaring GATED SR LATCH Module where Q,P as OUTPUT and S,R,CLK as INPUT.

wire nand1,nand2,nand3,nand4;

assign nand3 = Q;		//Connecting output port Q with wire nand3.
assign nand4 = P;		//Connecting output port P with wire nand4.

nand F1(nand1,CLK,S);		//Using inbuilt 'nand' gate.

nand F2(nand2,CLK,R);		//Using inbuilt 'nand' gate.

nand F3(Q,nand1,nand4);		//Using inbuilt 'nand' gate.

nand F4(P,nand2,nand3);		//Using inbuilt 'nand' gate.

endmodule
