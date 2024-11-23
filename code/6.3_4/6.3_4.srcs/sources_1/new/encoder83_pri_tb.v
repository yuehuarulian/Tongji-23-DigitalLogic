`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 23:10:34
// Design Name: 
// Module Name: encoder83_pri_tb
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


module encoder83_pri_tb();
reg [7:0] iData;
reg iEI;
wire [2:0] oData;
wire oEO;
encoder83_Pri ecp(.iData(iData), .iEI(iEI), .oData(oData), .oEO(oEO));
initial 
begin
iEI <= 1;
#50 iEI<=0;
    iData<=8'b11111111;
#50 iData<=8'b0xxxxxxx;
#50 iData<=8'b10xxxxxx;
#50 iData<=8'b110xxxxx;
#50 iData<=8'b1110xxxx;
#50 iData<=8'b11110xxx;
#50 iData<=8'b111110xx;
#50 iData<=8'b1111110x;
#50 iData<=8'b11111110;

end


endmodule
