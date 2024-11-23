`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 17:56:36
// Design Name: 
// Module Name: ram
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


module ram(
    input clk,
    input ena,
    input wena,
    input [4:0] addr,
    input [31:0] data_in,
    output reg [31:0] data_out
    );
    reg [31:0] ram [0:31];
    always @(posedge clk) 
        begin
        if (ena) 
            begin
            if (wena) 
                ram[addr] <= data_in;
            end
        end
     always @(*) 
         begin
         if (ena&~wena)
             data_out <= ram[addr];
         else
             data_out<='bz;
     end
endmodule
