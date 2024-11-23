`timescale 1s / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 20:17:40
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(
    input CLK,
    input J,
    input K,
    input RST_n,
    output reg Q1,
    output reg Q2
    );
    always @(negedge RST_n or posedge CLK)
    begin
    if(~RST_n)
    begin
    Q1=1'b0;
    Q2=~Q1;
    end
    else  if((J==1'b0&&K==1'b1)||(J==1'b1&&K==1'b0))
        begin
        Q1=J;
        Q2=K;
        end
    else if(J==1'b0&&K==1'b0)
        ;
    else if(J==1'b1&&K==1'b1)
        begin
        Q1=~Q1;
        Q2=~Q2;
        end
    begin
    end
    end
endmodule
