`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 20:58:38
// Design Name: 
// Module Name: pcreg_tb
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


module pcreg_tb();
reg clk,rst,ena;
reg [31:0] data_in;
wire [31:0] data_out;
pcreg pc(.clk(clk), .rst(rst), .ena(ena), .data_in(data_in), .data_out(data_out));
initial 
begin
clk = 1;
end
always #30 clk = ~clk;
initial
begin
rst = 0;
ena = 0;
#20 ena = 1;
#110 rst = 1;
#20 rst = 0;
#20 ena = 0;
end
initial
begin
data_in=32'b01010101010101010101010101010101;
#50 data_in=32'b0000_0000_0000_0000_0000_0000_0000_0000;
#50 data_in=32'b01010101010101010101010101010101;
#50 data_in=32'b0000_0000_0000_0000_0000_0000_0000_0000;
#50 data_in=32'b01010101010101010101010101010101;
end
endmodule
