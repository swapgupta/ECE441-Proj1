/*******************************************
File:		proj1_tb.v
Description:Testbench for Project 1 part 1
Author:		Swap Gupta
Date:		Jan. 31, 2018
*******************************************/
`timescale 100 ns / 1 ns

module proj1_tb;
   reg  [2:0]  ctr;
   wire   x1_test, x2_test, x3_test;
   wire   f_test;
   
// instantiate the design
proj1 instance1 (x1_test,x2_test,x3_test,f_test);


initial
  begin        
     ctr = 3'b0;
  end

always           // Wait 10 time units
   #5   ctr = ctr + 1;
  
assign x1_test = ctr[2];
assign x2_test = ctr[1];
assign x3_test = ctr[0];


endmodule