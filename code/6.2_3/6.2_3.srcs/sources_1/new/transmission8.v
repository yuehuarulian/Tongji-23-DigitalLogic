`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/09 22:16:09
// Design Name: 
// Module Name: transmission8
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


module selector81(
    input iC0,
    input iC1,
    input iC2,
    input iC3,
    input iC4,
    input iC5,
    input iC6,
    input iC7,
    input iS2,
    input iS1,
    input iS0,
    output oZ
    );
    assign oZ = (~iS2 && ~iS1 && ~iS0)? iC0:
                (~iS2 && ~iS1 && iS0)? iC1:
                (~iS2 && iS1 && ~iS0)? iC2:
                (~iS2 && iS1 && iS0)? iC3:
                (iS2 && ~iS1 && ~iS0)? iC4:
                (iS2 && ~iS1 && iS0)? iC5:
                (iS2 && iS1 && ~iS0)? iC6:iC7;

   
endmodule


module de_selector18(
    input iC,
    input iS2,
    input iS1,
    input iS0,
    output oZ0,
    output oZ1,
    output oZ2,
    output oZ3,
    output oZ4,
    output oZ5,
    output oZ6,
    output oZ7
    );
    or(oZ0,iS2,iS1,iS0,iC);
    or(oZ1,iS2,iS1,~iS0,iC);
    or(oZ2,iS2,~iS1,iS0,iC);
    or(oZ3,iS2,~iS1,~iS0,iC);
    or(oZ4,~iS2,iS1,iS0,iC);
    or(oZ5,~iS2,iS1,~iS0,iC);                          
    or(oZ6,~iS2,~iS1,iS0,iC);
    or(oZ7,~iS2,~iS1,~iS0,iC);
endmodule



module transmission8(
    input [7:0] iData,
    input A,
    input B,
    input C,
    output [7:0] oData
    );
    wire t;
    selector81 sel81(iData[0], iData[1], iData[2],iData[3],iData[4],iData[5],iData[6],iData[7],A,B,C,t);    
    de_selector18 deS18(t,A,B,C,oData[0],oData[1],oData[2],oData[3],oData[4],oData[5],oData[6],oData[7]);
endmodule
