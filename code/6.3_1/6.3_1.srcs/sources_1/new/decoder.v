`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/16 19:45:01
// Design Name: 
// Module Name: decoder
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


module decoder(
    input  [2:0] iData,
    input  [1:0] iEna,//iEna[1]:G1       iEna[0]:G2
    output [7:0] oData
    );
    assign oData[0]=~iEna[1] | iEna[0] | iData[2] | iData[1] | iData[0];
    assign oData[1]=~iEna[1] | iEna[0] | iData[2] | iData[1] | ~iData[0];
    assign oData[2]=~iEna[1] | iEna[0] | iData[2] | ~iData[1] | iData[0];
    assign oData[3]=~iEna[1] | iEna[0] | iData[2] | ~iData[1] | ~iData[0];
    assign oData[4]=~iEna[1] | iEna[0] | ~iData[2] | iData[1] | iData[0];
    assign oData[5]=~iEna[1] | iEna[0] | ~iData[2] | iData[1] | ~iData[0];
    assign oData[6]=~iEna[1] | iEna[0] | ~iData[2] | ~iData[1] | iData[0];
    assign oData[7]=~iEna[1] | iEna[0] | ~iData[2] | ~iData[1] | ~iData[0];
endmodule
