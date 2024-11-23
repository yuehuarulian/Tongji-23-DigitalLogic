`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 19:24:21
// Design Name: 
// Module Name: Synchronous_D_FF_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Synchronous_D_FF_tb();
reg CLK,D,RST_n;
wire Q1,Q2;
Synchronous_D_FF sdff( CLK, D,RST_n, Q1, Q2 );
always
begin
#50 CLK<=1'b1;
#50 CLK<=1'b0;
end
initial
begin
RST_n<=1;
#40 D<=1'b0;
#40 D<=1'b1;
#40 D<=1'b0;
#40 D<=1'b1;
#20 RST_n<=0;
end
endmodule
