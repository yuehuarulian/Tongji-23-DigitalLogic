`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 20:17:33
// Design Name: 
// Module Name: selector41_tb
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


module selector41_tb();
reg [3:0] iC0;
reg [3:0] iC1;
reg [3:0] iC2;
reg [3:0] iC3;
reg iS1;
reg iS0;
wire [3:0] oZ;
selector41 sel(iC0,iC1,iC2,iC3,iS1,iS0,oZ);
initial
begin
        iS0 <= 0;
        iS1 <= 0;
    #40 iS0 <= 1;
        iS1 <= 0;
    #40 iS0 <= 0;
        iS1 <= 1;
    #40 iS0 <= 1;
        iS1 <= 1;
end

initial 
begin
    iC0 <= 4'b0001;
    iC1 <= 4'b0010;
    iC2 <= 4'b0011;
    iC3 <= 4'b0100;
end
endmodule
