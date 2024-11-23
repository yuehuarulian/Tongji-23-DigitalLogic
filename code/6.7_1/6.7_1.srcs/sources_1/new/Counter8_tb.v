`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/13 19:55:23
// Design Name: 
// Module Name: Counter8_tb
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


module Counter8_tb();
reg I_CLK,rst_n;
wire [2:0] oQ;
wire [6:0] oDisplay;
Counter8 c8(I_CLK,rst_n,oQ,oDisplay);
initial
begin
I_CLK<=0;
rst_n<=0;
#4 rst_n<=1;
end
always
# 1 I_CLK<=~I_CLK;
endmodule
