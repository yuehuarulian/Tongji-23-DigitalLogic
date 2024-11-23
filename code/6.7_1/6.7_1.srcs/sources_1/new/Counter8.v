`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/13 19:30:08
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
    parameter times = 100_000_000;
    reg [30:0]cnt = 0;
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

module Counter8(
    input CLK,
    input rst_n,
    output [2:0] oQ,
    output [6:0] oDisplay
    );
    wire O_CLK;
    Divider dr(CLK, 1'b0, O_CLK);
    JK_FF FF0(O_CLK, 1'b1, 1'b1, rst_n, oQ[0]);
    JK_FF FF1(O_CLK, oQ[0], oQ[0], rst_n, oQ[1]);
    JK_FF FF2(O_CLK, oQ[1]&oQ[0], oQ[1]&oQ[0], rst_n, oQ[2]);
    wire [3:0]iData={1'b0,oQ};
    display7 dis7( iData,oDisplay);
endmodule
