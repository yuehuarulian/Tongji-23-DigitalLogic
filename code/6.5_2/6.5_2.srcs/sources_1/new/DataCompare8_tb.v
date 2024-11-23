`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 19:58:30
// Design Name: 
// Module Name: DataCompare8_tb
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


module DataCompare8_tb();
reg [7:0] iData_a;
reg [7:0] iData_b;
wire [2:0] oData;
DataCompare8 dc4_1(iData_a,iData_b,oData);
initial
begin
//大于 输出100
iData_a<=8'b1010_0000;
iData_b<=8'b0100_0000;
//小于 输出010
#50 iData_a<=8'b0010_0000;
    iData_b<=8'b0100_0000;
//等于 输出001
#50 iData_a<=8'b0100_0000;
    iData_b<=8'b0100_0000;

end
endmodule
