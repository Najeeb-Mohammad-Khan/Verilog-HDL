`timescale 1ns / 1ps

module SR_LATCH(output Q,P,input S,R);		//Declaring SR LATCH Module where Q,P as OUTPUT and S,R as INPUT.

wire nor1,nor2;		//Declaring wires nand1 and nand2.

assign nor1 = Q;		//Connecting output port Q with wire nor1. 
assign nor2 = P;		//Connecting output port P with wire nor2.


nor F1(Q,S,nor2);		//Using inbuilt 'nor' gate.

nor F2(P,R,nor1);		//Using inbuilt 'nor' gate.

endmodule
