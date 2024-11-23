`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 19:54:12
// Design Name: 
// Module Name: decoder_tb
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


module decoder_tb();
reg [2:0]iData;
reg [1:0] iEna;
wire [7:0]oData;
decoder de(iData,iEna,oData);
initial
begin
iEna<=2'bx1;
#50 iEna<=2'b0x;
#50 iEna<=2'b10;
    iData<=3'b000;
#50 iData<=3'b001;
#50 iData<=3'b010;
#50 iData<=3'b011;
#50 iData<=3'b100;
#50 iData<=3'b101;
#50 iData<=3'b110;
#50 iData<=3'b111;
end
endmodule
