`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/13 20:29:59
// Design Name: 
// Module Name: Divider
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


module Divider(
    input I_CLK,
    input rst,
    output reg O_CLK = 0
    );
    parameter times = 20;
    reg [10:0]cnt = 0;
    always @(posedge I_CLK)
    begin
    if (rst) 
    begin
        O_CLK = 0;
        cnt = 0;
    end
    else
    begin
        if (cnt == times/2-1)
        begin
            O_CLK = ~O_CLK;
            cnt = 0;
        end
        else
        cnt = cnt + 1;
    end
    end
endmodule
