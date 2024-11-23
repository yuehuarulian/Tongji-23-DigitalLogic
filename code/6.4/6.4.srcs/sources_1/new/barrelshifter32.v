`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 20:18:50
// Design Name: 
// Module Name: barrelshifter32
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


module barrelshifter32(
    input [31:0] a,
    input [4:0] b,
    input [1:0] aluc,
    output reg [31:0] c
    );
    reg [31:0] t;
    always@(*)
    begin
        if(!aluc[0])//ÓÒÒÆ
            begin
                c=a>>b;
                if(!aluc[1]&&a[31])//ËãÊý
                    begin
                        t=32'b11111111111111111111111111111111>>b;
                        c=~t|c;
                    end
            end
        else if(aluc[0])//×óÒÆ
            c=a<<b;
    end
endmodule
