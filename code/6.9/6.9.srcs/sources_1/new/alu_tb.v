`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/20 21:27:46
// Design Name: 
// Module Name: alu_tb
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


module ALU_tb();
    reg [31:0] a;
    reg [31:0] b;
    reg [3:0] aluc;
    wire [31:0] r;
    wire zero;
    wire carry;
    wire negative;
    wire overflow;
    alu ALU(.a(a), .b(b), .aluc(aluc), .r(r), .zero(zero), .carry(carry), .negative(negative), .overflow(overflow));
    initial
    begin
        a <= 32'hffffffff;
        b <= 32'h0000ffff; 
        aluc <= 4'b0011;
        #40
        a <= 32'h00000000; 
        b <= 32'hffff1234;
        aluc <= 4'b1000;
        #40
        a <= 32'h00000008;
        b <= 32'hffffffff;
        aluc <= 4'b1100;
        #40
        a <= 32'h00000010; 
        b <= 32'h80000000;
        aluc <= 4'b1100;
        #40
        a <= 32'h00000001; 
        b <= 32'hffffffff;
        aluc <= 4'b1110;
        #40
        a <= 32'h00000008; 
        b <= 32'hffffffff;
        aluc <= 4'b1110;
        #40
        a <= 32'h0000001f; 
        b <= 32'h0000ffff;
        aluc <= 4'b1110;
    end
        initial
            begin
                //ADDU
                aluc = 4'b0000;
                a = 15;
                b = 16;
                #40 
                a = 32'b0;
                b = 32'b0;
                #40 
                a = 32'b10000000000000000000000000000000;
                b = 32'b10000000000000000000000000000000;
                //ADD
                #40
                aluc = 4'b0010;
                a = -5;
                b = 15;       
                #40
                a = 10;
                b = 15;
                #40
                a = -15;
                b = -17;
                #40 
                a = 32'b0;
                b = 32'b0;
                #40 
                a = 32'b01000000000000000000000000000000;
                b = 32'b01000000000000000000000000000000;
                #40
                a = 32'b10000000000000000000000000000000;
                b = 32'b11000000000000000000000000000000;
                //SUBU
                #40
                aluc = 4'b0001;
                a = 20;
                b = 15;
                #40
                a = 100;
                b = 99;
                #40
                a = 5;
                b = 10;
                //SUB
                #40
                aluc = 4'b0011;
                a = 20;
                b = 15;
                #40 
                a = -5;
                b = -10;
                #40
                a = -10;
                b = -5;
                #40
                a = 32'b1;
                b = 32'b0000000000000000000000111111111;
                //AND OR XOR NOR 
                #40
                aluc = 4'b0100;
                a = 32'b10001000100010001000100010001000;
                b = 32'b01001000110010011000100010001000;
                #40 aluc = 4'b0101;
                #40 aluc = 4'b0110;
                #40 aluc = 4'b0111;
                //LUI
                #40
                aluc = 4'b1001;
                a = 32'b1;
                b = 32'b1;
                aluc = 4'b1000;
                a = 32'b1;
                b = 32'b1;
                //SLT, SLTU
                #40
                aluc = 4'b1011;
                a = 20;
                b = 15;
                #40 
                a = 5;
                b = 10;
                aluc = 4'b1011;
                a = 20;
                b = 15;
                #40 
                a = 5;
                b = 10;
                #40
                a = -5;
                b = -10;
                #40
                a = -5;
                b = 10;
                //SRA SLL/SLR SRL
                b = 32'b11111111000000000;
                a = 32'b101;
                //aluc = 4'b1110;
                #40
                aluc = 4'b1111;   
                #40
                aluc = 4'b1101;
            end   
endmodule