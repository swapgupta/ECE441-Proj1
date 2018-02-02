/*******************************************
File:		proj1_tb.v
Description:Testbench for Project 1 part 1
Author:		Swap Gupta
Date:		Jan. 31, 2018
*******************************************/
`timescale 100 ns / 1 ns

module parity_tb;
   reg  [6:0]  ctr;
   wire   a,b,c,d,e,f,g;
   wire   out_test;
   
// instantiate the design
parity instance1 (a,b,c,d,e,f,g,out_test);

initial
  begin        
     ctr = 7'b0;
  end

always           // Wait 10 time units
   #5   ctr = ctr + 1;
  
assign a = ctr[6];
assign b = ctr[5];
assign c = ctr[4];
assign d = ctr[3];
assign e = ctr[2];
assign f = ctr[1];
assign g = ctr[0];


endmodule