`timescale 1ns / 1ps

module SR_LATCH(output Q,P,input S,R);		//Declaring SR LATCH Module where Q,P as OUTPUT and S,R as INPUT.

wire nand1,nand2;		//Declaring wires nand1 and nand2.

assign nand1 = Q;		//Connecting output port Q with wire nand1. 
assign nand2 = P;		//Connecting output port P with wire nand2.


nand F1(Q,S,nand2);		//Using inbuilt 'nand' gate.

nand F2(P,R,nand1);		//Using inbuilt 'nand' gate.

endmodule
