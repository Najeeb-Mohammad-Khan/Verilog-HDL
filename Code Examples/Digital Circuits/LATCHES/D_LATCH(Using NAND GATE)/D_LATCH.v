`timescale 1ns / 1ps

module D_LATCH(output Q,P,input D);		//Declaring D LATCH Module where Q,P as OUTPUT and D as INPUT.

wire not1,nand1,nand2;

assign nand1 = Q;		//Connecting output port Q with wire nand1. 
assign nand2 = P;		//Connecting output port P with wire nand2.

not F1(not1,D);		//Using inbuilt 'not' gate.

nand F2(Q,not1,nand2);		//Using inbuilt 'nand' gate.

nand F3(P,D,nand1);		//Using inbuilt 'nand' gate.


endmodule
