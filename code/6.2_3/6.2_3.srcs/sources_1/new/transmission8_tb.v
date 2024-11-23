`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 22:25:15
// Design Name: 
// Module Name: transmission8_tb
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


module transmission8_tb();
reg [7:0] iData;
reg A;
reg B;
reg C;
wire [7:0] oData;
transmission8 tr8(iData,A,B,C,oData);
always
begin
    #25 iData<=8'b0000_0000;
    #25 iData<=8'b1111_1111;
end
initial
begin
    #25 A<=0;B<=0;C<=0;
    #50 A<=0;B<=0;C<=1;
    #50 A<=0;B<=1;C<=0;
    #50 A<=0;B<=1;C<=1;
    #50 A<=1;B<=0;C<=0;
    #50 A<=1;B<=0;C<=1;
    #50 A<=1;B<=1;C<=0;
    #50 A<=1;B<=1;C<=1;
end
endmodule
