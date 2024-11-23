`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/27 23:44:16
// Design Name: 
// Module Name: Regfiles
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

// 32个32位寄存器
module ram(
    input clk,//时钟
    input wena,// 1是写入,0是输出
    input [4:0] addr,//读出和写入的地址
    input [31:0] data_in,//写入的数据
    output reg [31:0] data_out,//读出的
    input rst//异步复位
    );
    //  ram ram1(clk,we,addr1,wdata,rdata1,rst);
    reg ena=1;
    reg [31:0] ram [0:31]; // 32个寄存器 位宽是32位
    integer i;
    // 下降沿写入数据
    always @(negedge clk) 
        begin
        if (ena) 
            begin
            if (wena)
                ram[addr] <= data_in;
        end
    end
    always @(*) begin
        if (ena&~wena)
                data_out <= ram[addr];
        else
        data_out<='bz;
    end
    //异步复位，rst等于0时全部寄存器清零
    always@(*)
        begin
        if(rst) 
            begin
            for (i = 0; i < 32; i=i+1)
                ram[i] = 32'h00000000;
            end
        end
endmodule

module Regfiles(clk,rst,we,raddr1,raddr2,waddr,wdata,rdata1,rdata2);
    input clk;//时钟
    input rst;//置零，高电平时全部寄存器清零
    input we;//写入还是写出
    input [4:0] raddr1;//写出的地址1
    input [4:0] raddr2;//写出的地址2
    input [4:0] waddr;//准备写的寄存器的地址
    input [31:0] wdata;//写入的数据，下降沿写入
    output [31:0] rdata1;//寄存器对应的输出数据1，由地址raddr1从寄存器ram中获取
    output [31:0] rdata2;//寄存器对应的输出数据2，由地址raddr2从寄存器ram中获取
    reg [4:0] addr1;
    reg [4:0] addr2;
    reg [31:0] data_out;//接收，赋值给rdata1或者radata2
    //相当于定义两个寄存器，两边同时进行操作，写入，但是输出data_out的不同
    ram ram1(clk,we,addr1,wdata,rdata1,rst);
    ram ram2(clk,we,addr2,wdata,rdata2,rst);
    always@(*)
        begin
        if(we) 
            begin
            //写入
            addr1<=waddr;
            addr2<=waddr;
            end
        else 
            begin
            //写出
            addr1<=raddr1;
            addr2<=raddr2;
            end
        end
endmodule