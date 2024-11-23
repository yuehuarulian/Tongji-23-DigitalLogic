`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 20:26:29
// Design Name: 
// Module Name: JK_FF_tb
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


module JK_FF_tb();
reg CLK,J,K,RST_n;
wire Q1,Q2;
JK_FF jk(CLK,J,K,RST_n,Q1,Q2);
always
begin
#30 CLK<=1'b1;
#30 CLK<=1'b0;
end
initial
begin
RST_n<=1;
#40 J<=1'b0;
    K<=1'b1;
#40 J<=1'b1;
    K<=1'b0;
#40 J<=1'b0;
    K<=1'b0;
#40 J<=1'b1;
    K<=1'b1;
#20 RST_n<=0;
end
endmodule
