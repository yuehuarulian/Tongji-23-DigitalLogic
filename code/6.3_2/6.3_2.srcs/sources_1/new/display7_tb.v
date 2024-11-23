`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 21:14:39
// Design Name: 
// Module Name: display7_tb
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


module display7_tb();
reg [3:0] iData;
wire [6:0] oData;
display7 dp(.iData(iData),.oData(oData));
initial 
begin
iData<='d0;
#50 iData<='d1;
#50 iData<='d2;
#50 iData<='d3;
#50 iData<='d4;
#50 iData<='d5;
#50 iData<='d6;
#50 iData<='d7;
#50 iData<='d8;
#50 iData<='d9;
end

endmodule
