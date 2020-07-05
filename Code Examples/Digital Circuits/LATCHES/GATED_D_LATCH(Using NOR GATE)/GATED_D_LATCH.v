`timescale 1ns / 1ps

module D_LATCH(output Q,P,input D,E);		//Declaring D LATCH Module where Q,P as OUTPUT and D,E as INPUT.

wire not1,and1,and2,nor1,nor2;

assign nor1 = Q;		//Connecting output port Q with wire nor1. 
assign nor2 = P;		//Connecting output port P with wire nor2.

not F1(not1,D);		//Using inbuilt 'not' gate.

and F2(and1,not1,E);		//Using inbuilt 'and' gate.

and F3(and2,D,E);		//Using inbuilt 'and' gate.

nor F4(Q,and1,nor2);		//Using inbuilt 'nor' gate.

nor F5(P,and2,nor1);		//Using inbuilt 'nor' gate.


endmodule
