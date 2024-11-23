`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 22:02:34
// Design Name: 
// Module Name: encoder83
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


module encoder83(
    input [7:0] iData,
    output reg [2:0] oData
    );
    always @(*)
    begin
        if (iData[7]) oData = 3'b111;
        else if (iData[6]) oData = 3'b110;
        else if (iData[5]) oData = 3'b101;
        else if (iData[4]) oData = 3'b100;
        else if (iData[3]) oData = 3'b011;
        else if (iData[2]) oData = 3'b010;
        else if (iData[1]) oData = 3'b001;
        else if (iData[0]) oData = 3'b000;
    end
endmodule
