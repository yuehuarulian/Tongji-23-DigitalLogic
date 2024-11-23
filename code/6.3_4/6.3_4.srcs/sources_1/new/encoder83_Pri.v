`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 22:58:43
// Design Name: 
// Module Name: encoder83_Pri
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


module encoder83_Pri(
    input [7:0] iData,
    input iEI,
    output reg [2:0] oData,
    output reg oEO
    );
    
    always @(*)
    begin
        
        if (iEI) 
            begin
                oEO = 1;
                oData = 3'b111;
            end
        else if (iData == 8'b11111111) oEO = 0;
        else 
            begin
                oEO = 1;
                if (!iData[7]) oData = 3'b000;
                else if (!iData[6]) oData = 3'b001;
                else if (!iData[5]) oData = 3'b010;
                else if (!iData[4]) oData = 3'b011;
                else if (!iData[3]) oData = 3'b100;
                else if (!iData[2]) oData = 3'b101;
                else if (!iData[1]) oData = 3'b110;
                else if (!iData[0]) oData = 3'b111;
            end
    end    
endmodule
