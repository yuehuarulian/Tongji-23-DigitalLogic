`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/28 12:33:55
// Design Name: 
// Module Name: Regfiles_tb
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


module Regfiles_tb();
    reg clk;
    reg rst;
    reg we;
    reg [4:0] raddr1;
    reg [4:0] raddr2;
    reg [4:0] waddr;
    reg [31:0] wdata;
    wire [31:0] rdata1;
    wire [31:0] rdata2;
    
    Regfiles Rf(
            .clk(clk),
            .rst(rst),
            .we(we),
            .raddr1(raddr1),
            .raddr2(raddr2),
            .waddr(waddr),
            .wdata(wdata),
            .rdata1(rdata1),
            .rdata2(rdata2)
        );
    integer i = 0;
        
    initial
    begin
        raddr1 = 5'b0;
        raddr2 = 5'b0;
        clk = 0;
        rst = 0;
        #2 rst = 1;
        #2 rst =0;        
    end
    always #2 clk = ~clk;
    
    initial
    begin
    we = 0;
    #20 we = 1;
        while(i <= 31)
            begin
            waddr = i;
            wdata = 31 - i;
            #10
            i = i + 1;
            end
        i = 0;
        we = 0;
        while(i <= 31)
            begin
            raddr1 = i;
            raddr2 = 31 - i;
            #20
            i = i + 1;
            end
    end
endmodule