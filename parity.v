/**************************************************
File:		parity.v
Description:generates parity bit for a 7-bit input
Author:		Swap Gupta
Date:		Jan. 31, 2018
**************************************************/
module parity(data_in,parity_out);
input [6:0] data_in; 
output  parity_out;
    
wire parity_out ;
   
assign parity_out =  (data_in[0] ^ data_in[1]) ^  
                     (data_in[2] ^ data_in[3]) ^ 
                     (data_in[4] ^ data_in[5]) ^  
                     (data_in[6] ^ data_in[7]);
endmodule 