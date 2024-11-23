`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/10/30 19:47:46
// Design Name: 
// Module Name: DataCompare8
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

//四位比较器
module DataCompare4(
    input [3:0] iData_a,
    input [3:0] iData_b,
    input [2:0] iData,
    output reg[2:0] oData
    );
    always @(*)
    begin
    if(iData_a[3]&~iData_b[3]) oData=3'b100;
    else if(~iData_a[3]&iData_b[3]) oData=3'b010;
    else if(iData_a[2]&~iData_b[2]) oData=3'b100;
    else if(~iData_a[2]&iData_b[2]) oData=3'b010;
    else if(iData_a[1]&~iData_b[1]) oData=3'b100;
    else if(~iData_a[1]&iData_b[1]) oData=3'b010;
    else if(iData_a[0]&~iData_b[0]) oData=3'b100;
    else if(~iData_a[0]&iData_b[0]) oData=3'b010;
    else oData=iData;
    end
endmodule

//八位比较器
module DataCompare8(
    input [7:0] iData_a,
    input [7:0] iData_b,
    output [2:0] oData
    );
    //实例化两个四位比较器
    //低四位
    reg [3:0] iData_a_1;
    reg [3:0] iData_b_1;
    reg [2:0] iData_1;
    wire [2:0] oData_1;
    DataCompare4 dc4_1(iData_a_1,iData_b_1,iData_1,oData_1);
    //高四位
    reg [3:0] iData_a_2;
    reg [3:0] iData_b_2;
    reg [2:0] iData_2;
    wire [2:0] oData_2;
    DataCompare4 dc4_2(iData_a_2,iData_b_2,iData_2,oData_2);
    
    always @(*)
    begin
    iData_1<=3'b001;
    iData_a_1<=iData_a[3:0];
    iData_b_1<=iData_b[3:0];
    iData_a_2<=iData_a[7:4];
    iData_b_2<=iData_b[7:4];
    iData_2<=oData_1;
    end
    assign oData=oData_2;
endmodule
