/*******************************************
File:		proj1.v
Description:Project 1 part 1 implements
			Problem 2.31
Author:		Swap Gupta
Date:		Jan. 31, 2018
*******************************************/
`timescale 100 ns / 1 ns

module proj1(x1,x2,x3,f);
	input x1,x2,x3;
	output f;
 
	wire m0, m3, m5, m6;

	assign m0 = ~x1 & ~x2 & ~x3; 
	assign m3 = ~x1 & x2 & x3;
	assign m5 = x1 & ~x2 & x3;
	assign m6 = x1 & x2 & ~x3;	
	 	
	assign f = m0 | m3 | m5 | m6;

endmodule   