`timescale 1ns / 1ps

module D_LATCH(output Q,P,input D);		//Declaring D LATCH Module where Q,P as OUTPUT and D as INPUT.

wire not1,nor1,nor2;

assign nor1 = Q;		//Connecting output port Q with wire nor1. 
assign nor2 = P;		//Connecting output port P with wire nor2.

not F1(not1,D);		//Using inbuilt 'not' gate.

nor F2(Q,not1,nor2);		//Using inbuilt 'nor' gate.

nor F3(P,D,nor1);		//Using inbuilt 'nor' gate.


endmodule
