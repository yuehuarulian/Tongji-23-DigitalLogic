`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/23 20:43:05
// Design Name: 
// Module Name: barrelshifter32_tb
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


module barrelshifter32_tb();
reg [31:0] a;
reg [4:0] b;
reg [1:0] aluc;
wire [31:0] c;
 barrelshifter32 bs32(a,b,aluc,c);
initial
begin
//À„ ˝”““∆
aluc<=2'b00;
a<=32'b11111111_11111111_11111111_11101101;
b<=5'b00011;
//À„ ˝◊Û“∆
#100 aluc<=2'b01;
//¬ﬂº≠”““∆
#100 aluc<=2'b10;
//¬ﬂº≠◊Û“∆
#100 aluc<=2'b11;
end
endmodule
