`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/11/06 20:38:22
// Design Name: 
// Module Name: pcreg
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

module D_FF(
    input clk,
    input d,
    input rst,
    input ena,
    output reg Q1,
    output reg Q2
);
    always @(posedge clk or posedge rst)
    begin
        if (rst)
        begin
            Q1 = 0;
            Q2 = 1;
        end
        else
        begin
            if (ena)
            begin
                Q1 = d;
                Q2 = ~d;
            end
        end
    end
endmodule


module pcreg(
    input clk,
    input rst,
    input ena,
    input [31:0] data_in,
    output reg [31:0] data_out
    );
    wire [31:0]data_out_t;
     D_FF dff0 (clk,data_in[0],rst,ena,data_out_t[0]);
     D_FF dff1 (clk,data_in[1],rst,ena,data_out_t[1]);
     D_FF dff2 (clk,data_in[2],rst,ena,data_out_t[2]);
     D_FF dff3 (clk,data_in[3],rst,ena,data_out_t[3]);
     D_FF dff4 (clk,data_in[4],rst,ena,data_out_t[4]);                                                   
     D_FF dff5 (clk,data_in[5],rst,ena,data_out_t[5]);
     D_FF dff6 (clk,data_in[6],rst,ena,data_out_t[6]);
     D_FF dff7 (clk,data_in[7],rst,ena,data_out_t[7]);
     D_FF dff8 (clk,data_in[8],rst,ena,data_out_t[8]);
     D_FF dff9 (clk,data_in[9],rst,ena,data_out_t[9]);
     D_FF dff10 (clk,data_in[10],rst,ena,data_out_t[10]);                                                   
     D_FF dff11 (clk,data_in[11],rst,ena,data_out_t[11]);
     D_FF dff12 (clk,data_in[12],rst,ena,data_out_t[12]);
     D_FF dff13 (clk,data_in[13],rst,ena,data_out_t[13]);
     D_FF dff14 (clk,data_in[14],rst,ena,data_out_t[14]);
     D_FF dff15 (clk,data_in[15],rst,ena,data_out_t[15]);
     D_FF dff16 (clk,data_in[16],rst,ena,data_out_t[16]);                                                   
     D_FF dff17 (clk,data_in[17],rst,ena,data_out_t[17]);
     D_FF dff18 (clk,data_in[18],rst,ena,data_out_t[18]);
     D_FF dff19 (clk,data_in[19],rst,ena,data_out_t[19]);
     D_FF dff20 (clk,data_in[20],rst,ena,data_out_t[20]);
     D_FF dff21 (clk,data_in[21],rst,ena,data_out_t[21]);
     D_FF dff22 (clk,data_in[22],rst,ena,data_out_t[22]);                                                   
     D_FF dff23 (clk,data_in[23],rst,ena,data_out_t[23]);
     D_FF dff24 (clk,data_in[24],rst,ena,data_out_t[24]);
     D_FF dff25 (clk,data_in[25],rst,ena,data_out_t[25]);
     D_FF dff26 (clk,data_in[26],rst,ena,data_out_t[26]);
     D_FF dff27 (clk,data_in[27],rst,ena,data_out_t[27]);
     D_FF dff28 (clk,data_in[28],rst,ena,data_out_t[28]);                                                   
     D_FF dff29 (clk,data_in[29],rst,ena,data_out_t[29]);
     D_FF dff30 (clk,data_in[30],rst,ena,data_out_t[30]);
     D_FF dff31 (clk,data_in[31],rst,ena,data_out_t[31]);
     always @(*)
     data_out=data_out_t;
endmodule
