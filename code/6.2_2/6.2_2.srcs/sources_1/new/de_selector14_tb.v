`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 21:49:19
// Design Name: 
// Module Name: de_selector14_tb
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

module de_selector14_tb();
reg iC,iS1,iS0;
wire oZ0,oZ1,oZ2,oZ3;
de_selector14 ds(iC,iS1,iS0,oZ0,oZ1,oZ2,oZ3);
initial
begin
    iC=0;
        iS1<=0;iS0<=0;
    #50 iS1<=0;iS0<=1;
    #50 iS1<=1;iS0<=0;
    #50 iS1<=1;iS0<=1;
end
endmodule
