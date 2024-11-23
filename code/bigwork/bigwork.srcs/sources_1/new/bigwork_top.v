`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/23 19:06:32
// Design Name: 
// Module Name: bigwork_top
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


module GAME_TOP(
    //ʱ��
    input           clk_100,                //100Mhz:E3
    //��λ����
    input           rst,                    //��λ:J15
    input           game_start,             //��ʼ��Ϸ L16
    //VGA
    output [3:0]    color_r,                //R
    output [3:0]    color_g,                //G
    output [3:0]    color_b,                //B
    output          hs,                     //��ͬ
    output          vs,                     //��ͬ
    //�߶������
    output [7:0] shift,
    output [6:0] oData,
    //MP3
    input           SO,                     //����:G17
    input           DREQ,                   //�������󣬸ߵ�ƽʱ�ɴ�������:F18
    output          XCS,                    //Ƭ???SCI ����� дָ��:C17
    output          XDCS,                   //Ƭ???SDI ��������:D17
    output          SCK,                    //ʱ��:D18
    output          SI,                     //����mp3:E18
    output          XRESET,                 //Ӳ����λ���͵�ƽ��Ч:E17
    //����
    input [3:0]     music_id,              //�ڼ��׸�  v10 U11 U12 H6
    input [3:0]     button                 //����������Ϸ����  3210 ����Ϊ��P17 ��M7 ��תN7 ��������P8

    );
    //ʱ��
    wire clk_65,clk_12,clk_1000,clk_2,locked;
    //��Ϸ�Ƿ����
    wire gameover;
/*    //��������
    wire [8:0] keys;
    wire key_state;*/
    //�÷�
    wire [31:0] score;
    //��Ƶ1
    clk_wiz_0 uut(
        .clk_in1(clk_100),
        .clk_out1(clk_65),
        .clk_out2(clk_12),//MP3
        .reset(~rst),//1��Ч
        .locked(locked)
    );

    //��Ƶ��2
    Divider uut_divider(
        .clk12Mhz(clk_12),
        .clk1000hz(clk_1000),
        .clk2Mhz(clk_2)
    );

    //VGA
    VGA uut_vga(
        .clk(clk_65),
        .rst(locked),
        .color_r(color_r),
        .color_g(color_g),
        .color_b(color_b),
        .hs(hs),
        .vs(vs),
        .game_over(game_over),
        .game_start(game_start),
        .button(button),
        .score(score)
    );
    
    //MP3
    MP3 uut_mp3(
        .clk(clk_2),
        .rst( rst),
        .play(game_start),
        .SO(SO),
        .DREQ(DREQ),
        .XCS(XCS),
        .XDCS(XDCS),
        .SCK(SCK),
        .SI(SI),
        .XRESET(XRESET),
        .music_id(music_id)
    );
    

    //�������ʾ����
    display_score uut_score(
        .clk_1000hz(clk_1000),
        .score(score),
        .shift(shift),//�ڼ��������(Ƭѡ)
        .oData(oData)
    );

endmodule
