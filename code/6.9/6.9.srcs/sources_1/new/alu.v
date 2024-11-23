`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/20 19:36:24
// Design Name: 
// Module Name: alu
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


module alu(
    input [31:0] a,
    input [31:0] b,
    input [3:0] aluc,
    output reg [31:0] r,
    output reg zero,
    output reg carry,
    output reg negative,
    output reg overflow
    );
    wire signed [31:0]a1;
    wire signed [31:0]b1;
    assign a1 = a;
    assign b1 = b;
    //无符号加法
    wire [31:0] Addu;
    assign Addu = a + b;
    //有符号加法
    wire [31:0] Add;
    assign Add = a1 + b1;
    //无符号减法
    wire [31:0] Subu;
    assign Subu = a - b;
    //有符号减法
    wire [31:0] Sub;
    assign Sub = a1 - b1;
    //按位与
    wire [31:0] And;
    assign And = a & b;
    //按位或
    wire [31:0] Or;
    assign Or = a | b;
    //按位异或
    wire [31:0] Xor;
    assign Xor = a ^ b;
    //按位或非
    wire [31:0] Nor;
    assign Nor = ~(a | b);
    //置高位立即数（LUI）
    wire [31:0] Lui;
    assign Lui = (b & 32'h0000ffff) << 16;
    //有符号的a<b?  Slt
    wire [31:0] Slt;
    assign Slt = (a1 < b1)?1:0;
    //无符号的a<b?
    wire [31:0] Sltu;
    assign Sltu = (a < b)?1:0;
    //算数右移（SRA）
    wire [31:0] Sra;
    assign Sra = b1 >>> a1;
    //逻辑左移（SLA）/算数左移（SLL）
    wire [31:0] Sll_Sla;
    assign Sll_Sla = b << a;
    //逻辑右移（SRL)
    wire [31:0] Srl;
    assign Srl = b >> a;
    
    
    reg [32:0] an,bn,cn; //无符号数
    always @(*)
    begin
    an={1'b0,a[31:0]};
    bn={1'b0,b[31:0]};
    //无符号加法
    if (aluc == 4'b0000)
        begin
        r = Addu;
        cn = an + bn;
        carry = cn[32];
        end
    
    else if (aluc == 4'b0010)
        begin
        r = Add;
        if( a1[31]== 1 && b1[31]==1 && Add[31] == 0)//负+负=正
           overflow <= 1'b1;
        else if ( a1[31]== 0 && b1[31]==0 && Add[31] == 1)//正+正=负
           overflow <= 1'b1;
        else
           overflow <= 1'b0;
        end
    else if (aluc == 4'b0001)
        begin
        r = Subu;
        cn <= an - bn; 
        carry <= cn[32];
        end
    else if (aluc == 4'b0011)
        begin
        r = Sub;
        if( a1[31]== 0 && b1[31]==1 && Sub[31] == 1)//正-负=负
           overflow <= 1'b1;
        else if ( a1[31]== 1 && b1[31]==0 && Sub[31] == 0)//负-正=正
           overflow <= 1'b1;
        else
           overflow <= 1'b0;
        end
    else if (aluc == 4'b0100)
        r = And;
    else if (aluc == 4'b0101)
        r = Or;
    else if (aluc == 4'b0110)
        r = Xor;
    else if (aluc == 4'b0111)
        r = Nor;
    else if (aluc[3:1] == 3'b100)
        r = Lui;
    else if (aluc == 4'b1011)
        begin
        r = Slt;
        zero <= (a == b? 1:0);
        if (a1 - b1<0)
            negative <= 1'b1;
        else
            negative <= 1'b0;
        end
    else if (aluc == 4'b1010)
        begin
        r = Sltu;
        cn <= an - bn; 
        zero <= (a == b? 1:0);
        carry <= cn[32];
        end
    else if (aluc == 4'b1100)
        begin
        r = Sra;
        carry <= (b1>>>(a-1)) & 32'b1;///
        end
    else if (aluc[3:1] == 3'b111)
        begin
        r = Sll_Sla;
        carry <= (b<<(a-1))>>31 & 32'b1;///
        end
    else if (aluc == 4'b1101)
        begin
        r = Srl;
        carry <= (b>>(a-1)) & 32'b1;///
        end
    if(aluc != 4'b1011 && aluc != 4'b1010)
        zero <= (r == 0 ? 1:0);
    if(aluc != 4'b1011)
        negative <= r[31];
    end
endmodule
