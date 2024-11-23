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

// 32��32λ�Ĵ���
module ram(
    input clk,//ʱ��
    input wena,// 1��д��,0�����
    input [4:0] addr,//������д��ĵ�ַ
    input [31:0] data_in,//д�������
    output reg [31:0] data_out,//������
    input rst//�첽��λ
    );
    //  ram ram1(clk,we,addr1,wdata,rdata1,rst);
    reg ena=1;
    reg [31:0] ram [0:31]; // 32���Ĵ��� λ����32λ
    integer i;
    // �½���д������
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
    //�첽��λ��rst����0ʱȫ���Ĵ�������
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
    input clk;//ʱ��
    input rst;//���㣬�ߵ�ƽʱȫ���Ĵ�������
    input we;//д�뻹��д��
    input [4:0] raddr1;//д���ĵ�ַ1
    input [4:0] raddr2;//д���ĵ�ַ2
    input [4:0] waddr;//׼��д�ļĴ����ĵ�ַ
    input [31:0] wdata;//д������ݣ��½���д��
    output [31:0] rdata1;//�Ĵ�����Ӧ���������1���ɵ�ַraddr1�ӼĴ���ram�л�ȡ
    output [31:0] rdata2;//�Ĵ�����Ӧ���������2���ɵ�ַraddr2�ӼĴ���ram�л�ȡ
    reg [4:0] addr1;
    reg [4:0] addr2;
    reg [31:0] data_out;//���գ���ֵ��rdata1����radata2
    //�൱�ڶ��������Ĵ���������ͬʱ���в�����д�룬�������data_out�Ĳ�ͬ
    ram ram1(clk,we,addr1,wdata,rdata1,rst);
    ram ram2(clk,we,addr2,wdata,rdata2,rst);
    always@(*)
        begin
        if(we) 
            begin
            //д��
            addr1<=waddr;
            addr2<=waddr;
            end
        else 
            begin
            //д��
            addr1<=raddr1;
            addr2<=raddr2;
            end
        end
endmodule