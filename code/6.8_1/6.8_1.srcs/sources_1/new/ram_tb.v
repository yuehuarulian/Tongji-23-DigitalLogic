`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 18:05:29
// Design Name: 
// Module Name: ram_tb
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


module ram_tb();
reg clk;
reg ena;
reg wena;
reg [4:0] addr;
reg [31:0] data_in;
wire [31:0] data_out;
ram Ram(.clk(clk),.ena(ena),.wena(wena),.addr(addr),.data_in(data_in),.data_out(data_out));
initial
begin
clk<=0;
ena<=0;
wena<=0;
end
always 
#5 clk=~clk;

initial
begin
#8 ena<=1;
   wena<=1;
   addr<=4'b0000;
   data_in<=32'b1010_1010_1010_0000_0000_1111_0000_1111;
#10 wena<=0;

#10 wena<=1;
   addr<=4'b1010;
   data_in<=32'b0000_1010_1010_0000_0000_1111_0000_1111;
#10 wena<=0;

#10 wena<=1;
   addr<=4'b1111;
   data_in<=32'b1010_0000_0000_0000_0000_1111_0000_1111;
#10 wena<=0;

end
endmodule
