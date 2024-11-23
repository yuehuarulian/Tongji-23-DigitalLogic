`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 22:09:21
// Design Name: 
// Module Name: encoder83_tb
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


module encoder83_tb();
reg [7:0] iData;
wire [2:0] oData;
encoder83 ec(.iData(iData),.oData(oData));
initial
begin
iData = 8'b10000000;
#50 iData = 8'b01000000;
#50 iData = 8'b00100000;
#50 iData = 8'b00010000;
#50 iData = 8'b00001000;
#50 iData = 8'b00000100;
#50 iData = 8'b00000010;
#50 iData = 8'b00000001;
end

endmodule
