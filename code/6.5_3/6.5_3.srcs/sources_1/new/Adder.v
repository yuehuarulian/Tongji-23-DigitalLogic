`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 20:10:37
// Design Name: 
// Module Name: Adder
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


module FA(
    input iA,
    input iB,
    input iC,
    output oS,
    output oC
);
wire t1,t2,t3;
xor x1(t1,iA,iB);
xor x2(oS,t1,iC);
and a1(t2,t1,iC);
and a2(t3,iA,iB);
or o1(oC,t2,t3);
endmodule

module Adder(
    input [7:0] iData_a,
    input [7:0] iData_b,
    input iC,
    output [7:0] oData,
    output oData_C
    );
    wire oC0,oC1,oC2,oC3,oC4,oC5,oC6;
    FA FA0(iData_a[0],iData_b[0],iC,oData[0],oC0);
    FA FA1(iData_a[1],iData_b[1],oC0,oData[1],oC1);
    FA FA2(iData_a[2],iData_b[2],oC1,oData[2],oC2);
    FA FA3(iData_a[3],iData_b[3],oC2,oData[3],oC3);
    FA FA4(iData_a[4],iData_b[4],oC3,oData[4],oC4);
    FA FA5(iData_a[5],iData_b[5],oC4,oData[5],oC5);
    FA FA6(iData_a[6],iData_b[6],oC5,oData[6],oC6);
    FA FA7(iData_a[7],iData_b[7],oC6,oData[7],oData_C);
    
endmodule
