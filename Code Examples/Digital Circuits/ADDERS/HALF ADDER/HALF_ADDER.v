`timescale 1ns / 1ps

module HALF_ADDER(output Sum,Carry,input A,B);  //Declaring HALF ADDER Module where Sum,Carry as OUTPUT and A,B as INPUT. 

xor F1(Sum,A,B);	//Using inbuilt 'xor' gate to calculate SUM.
and F2(Carry,A,B);	//Using inbuilt 'and' gate to calculate CARRY.

endmodule
