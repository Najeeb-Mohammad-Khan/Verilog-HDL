`timescale 1ns / 1ps

module FULL_ADDER(output Sum,Carry_out,input A,B,Carry_in);	//Declaring FULL ADDER Module where Sum,Carry_out as OUTPUT and A,B,Carry_in as INPUT.

wire xor1,and1,and2;		//Declaring wires xor1,and1,and2.

xor F1(xor1,A,B);			

xor F2(Sum,xor1,Carry_in);	//Using inbuilt 'xor' gate to calculate Sum.

and F3(and1,xor1,Carry_in);

and F4(and2,A,B);

or F5(Carry_out,and1,and2);	//Using inbuilt 'or' gate to calculate Carry_out.	

endmodule
