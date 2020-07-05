`timescale 1ns / 1ps


module GATED_D_LATCH(output Q,P,input D,E);		//Declaring GATED D LATCH Module where Q,P as OUTPUT and D,E as INPUT.

wire not1,nand1,nand2,nand3,nand4;

assign nand3 = Q;		//Connecting output port Q with wire nand3. 
assign nand4 = P;		//Connecting output port P with wire nand4.

not F1(not1,D);		//Using inbuilt 'nor' gate.

nand F2(nand1,not1,E);		//Using inbuilt 'nand' gate.

nand F3(nand2,D,E);		//Using inbuilt 'nand' gate.

nand F4(Q,nand4,nand1);		//Using inbuilt 'nand' gate.

nand F5(P,nand3,nand2);		//Using inbuilt 'nand' gate.

endmodule
