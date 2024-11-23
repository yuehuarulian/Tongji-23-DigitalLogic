`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 20:33:42
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb();
reg [7:0] iData_a;
reg [7:0] iData_b;
reg iC;
wire [7:0] oData;
wire oData_C;
Adder adder(iData_a,iData_b,iC,oData,oData_C);
initial
begin
iC<=1'b1;
iData_a<=8'b1000_0001;
iData_b<=8'b1000_1111;
end
endmodule
