`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 19:23:07
// Design Name: 
// Module Name: DataCompare4_tb
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


module DataCompare4_tb();
reg [3:0] iData_a;
reg [3:0] iData_b;
reg [2:0] iData;
wire [2:0] oData;
DataCompare4 dc4(iData_a,iData_b,iData,oData);
initial
begin
//大于 输出100
iData<=4'b001;
iData_a<=4'b1010;
iData_b<=4'b0100;
//小于 输出010
#50 iData_a<=4'b0010;
    iData_b<=4'b0100;
//等于 输出001
#50 iData_a<=4'b0100;
    iData_b<=4'b0100;
//大于 输出100
#50 iData<=4'b100;
//小于 输出010
#50 iData<=4'b010;

end
endmodule
