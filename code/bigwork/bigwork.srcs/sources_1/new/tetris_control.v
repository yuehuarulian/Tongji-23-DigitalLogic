`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/25 21:52:45
// Design Name: 
// Module Name: tetris_control
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


module tetris_control(
    input rst,                       //0为没有开始
    input clk,                       //2s
    input[3:0] button,               //按键  3210 依次为左 右 旋转 加速向下
    output reg [199:0] tetris_whole,
    output reg [199:0] tetris_new,
    output reg game_over,
    output reg [31:0] score
);
reg over;                   //记录上一个有没有结束
reg [15:0]randn;                  //随机产生方块
//记录6种方块初始值
parameter TTS0_4 = 20'b0000_0000_0000_0000_0011 , TTS0_5 = 20'b0000_0000_0000_0000_0001, TTS0_6 = 20'b0000_0000_0000_0000_0001;
parameter TTS1_4 = 20'b0000_0000_0000_0000_0000 , TTS1_5 = 20'b0000_0000_0000_0000_0011, TTS1_6 = 20'b0000_0000_0000_0000_0011;
parameter TTS2_4 = 20'b0000_0000_0000_0000_0000 , TTS2_5 = 20'b0000_0000_0000_0000_1111, TTS2_6 = 20'b0000_0000_0000_0000_0000;
parameter TTS3_4 = 20'b0000_0000_0000_0000_0000 , TTS3_5 = 20'b0000_0000_0000_0000_0100, TTS3_6 = 20'b0000_0000_0000_0000_0111;
parameter TTS4_4 = 20'b0000_0000_0000_0000_0001 , TTS4_5 = 20'b0000_0000_0000_0000_0011, TTS4_6 = 20'b0000_0000_0000_0000_0001;
parameter TTS5_4 = 20'b0000_0000_0000_0000_0000 , TTS5_5 = 20'b0000_0000_0000_0000_0011, TTS5_6 = 20'b0000_0000_0000_0000_0110;

initial begin
    over <= 2'b1;
    randn <= 0;
    game_over <= 0;
    tetris_whole <= 200'b0;
    tetris_new <= 200'b0;
    score <= 32'b0;
end

reg [199:0] tmp;
reg [4:0]i,j;
always @ (posedge clk) begin
    if(rst && button[3] && !over && !tetris_new[19:0]) begin                                  //按键左移
        tmp[19:0] = tetris_new[1 * 20 + 19:1 * 20];
        tmp[1 * 20 + 19:1 * 20] = tetris_new[2 * 20 + 19:2 * 20];
        tmp[2 * 20 + 19:2 * 20] = tetris_new[3 * 20 + 19:3 * 20];
        tmp[3 * 20 + 19:3 * 20] = tetris_new[4 * 20 + 19:4 * 20];
        tmp[4 * 20 + 19:4 * 20] = tetris_new[5 * 20 + 19:5 * 20];
        tmp[5 * 20 + 19:5 * 20] = tetris_new[6 * 20 + 19:6 * 20];
        tmp[6 * 20 + 19:6 * 20] = tetris_new[7 * 20 + 19:7 * 20];
        tmp[7 * 20 + 19:7 * 20] = tetris_new[8 * 20 + 19:8 * 20];
        tmp[8 * 20 + 19:8 * 20] = tetris_new[9 * 20 + 19:9 * 20];
        tmp[8 * 20 + 19:8 * 20] = tetris_new[9 * 20 + 19:9 * 20];
        tmp[9 * 20 + 19:9 * 20] = 20'b0;
        if(tmp && !(tmp & tetris_whole))
            tetris_new = tmp;
    end
    else if(rst && button[2] && !over && !tetris_new[9 * 20 + 19:9 * 20]) begin                    //按键右移
        tmp[19:0] = 0;
        tmp[1 * 20 + 19:1 * 20] = tetris_new[0 * 20 + 19:0 * 20];
        tmp[2 * 20 + 19:2 * 20] = tetris_new[1 * 20 + 19:1 * 20];
        tmp[3 * 20 + 19:3 * 20] = tetris_new[2 * 20 + 19:2 * 20];
        tmp[4 * 20 + 19:4 * 20] = tetris_new[3 * 20 + 19:3 * 20];
        tmp[5 * 20 + 19:5 * 20] = tetris_new[4 * 20 + 19:4 * 20];
        tmp[6 * 20 + 19:6 * 20] = tetris_new[5 * 20 + 19:5 * 20];
        tmp[7 * 20 + 19:7 * 20] = tetris_new[6 * 20 + 19:6 * 20];
        tmp[8 * 20 + 19:8 * 20] = tetris_new[7 * 20 + 19:7 * 20];
        tmp[9 * 20 + 19:9 * 20] = tetris_new[8 * 20 + 19:8 * 20];
        if(tmp && !(tmp & tetris_whole))
            tetris_new = tmp;
    end
    else if(rst && button[1] && !over) begin                                                //按键旋转
        i = 0;
        while((i < 10) && (!tetris_new[i*20] & !tetris_new[i*20+1] & !tetris_new[i*20+2] & !tetris_new[i*20+3] & !tetris_new[i*20+4] & !tetris_new[i*20+5] & !tetris_new[i*20+6] & !tetris_new[i*20+7] & !tetris_new[i*20+8] & !tetris_new[i*20+9]
            & !tetris_new[i*20+10] & !tetris_new[i*20+11] & !tetris_new[i*20+12] & !tetris_new[i*20+13] & !tetris_new[i*20+14] & !tetris_new[i*20+15] & !tetris_new[i*20+16] & !tetris_new[i*20+17] & !tetris_new[i*20+18] & !tetris_new[i*20+19]))
            i = i + 1;
        j = 0;
        while((j < 20) && (!tetris_new[j] & !tetris_new[j+20] & !tetris_new[j+20*2] & !tetris_new[j+20*3] & !tetris_new[j+20*4] & !tetris_new[j+20*5] & !tetris_new[j+20*6] & !tetris_new[j+20*7] & !tetris_new[j+20*8] & !tetris_new[j+20*9]))
            j = j + 1;
        //i j  i*20+j
        case ((j + 3<=19 && tetris_new[i*20+j+3])||(i + 3<=9 && tetris_new[(i+3)*20+j]))
            1'b0: begin
                tmp = 0;
                if(j + 2 <= 19 && i + 2 <= 9 && (tetris_new[i * 20 + j + 2] | tetris_new[(i + 1) * 20 + j + 2] | tetris_new[(i + 2) * 20 + j + 2] | tetris_new[(i + 2) * 20 + j] | tetris_new[(i + 2) * 20 + j + 1])) begin//3*3
                    tmp[i * 20 + j] = tetris_new[i * 20 + j + 2];//0 0  0 2
                    tmp[i * 20 + j + 1] = tetris_new[(i + 1) * 20 + j + 2];//0 1  1 2
                    tmp[i * 20 + j + 2] = tetris_new[(i + 2) * 20 + j + 2];//0 2  2 2
                    tmp[(i + 1) * 20 + j] = tetris_new[i * 20 + j + 1];//1 0  0 1
                    tmp[(i + 1) * 20 + j + 1] = tetris_new[(i + 1) * 20 + j + 1];//1 1  1 1
                    tmp[(i + 1) * 20 + j + 2] = tetris_new[(i + 2) * 20 + j + 1];//1 2  2 1
                    tmp[(i + 2) * 20 + j] = tetris_new[i * 20 + j];//2 0  0 0
                    tmp[(i + 2) * 20 + j + 1] = tetris_new[(i + 1) * 20 + j];//2 1  1 0
                    tmp[(i + 2) * 20 + j + 2] = tetris_new[(i + 2) * 20 + j];//2 2  2 0
                end
            end
            1'b1: begin//四块长条的
                tmp = 0;
                if(j + 3 <= 19 && i + 3 <= 9) begin
                    tmp[i * 20 + j] = tetris_new[i * 20 + j + 3];//0 0  0 3
                    tmp[i * 20 + j + 1] = tetris_new[(i + 1) * 20 + j + 3];//0 1  1 3
                    tmp[i * 20 + j + 2] = tetris_new[(i + 2) * 20 + j + 3];//0 2  2 3
                    tmp[i * 20 + j + 3] = tetris_new[(i + 3) * 20 + j + 3];//0 3  3 3
                    tmp[(i + 1) * 20 + j] = tetris_new[i * 20 + j + 2];//1 0  0 2
                    tmp[(i + 1) * 20 + j + 1] = tetris_new[(i + 1) * 20 + j + 2];//1 1  1 2
                    tmp[(i + 1) * 20 + j + 2] = tetris_new[(i + 2) * 20 + j + 2];//1 2  2 2
                    tmp[(i + 1) * 20 + j + 3] = tetris_new[(i + 3) * 20 + j + 2];//1 3  3 2
                    tmp[(i + 2) * 20 + j] = tetris_new[i * 20 + j + 1];//2 0  0 1
                    tmp[(i + 2) * 20 + j + 1] = tetris_new[(i + 1) * 20 + j + 1];//2 1  1 1
                    tmp[(i + 2) * 20 + j + 2] = tetris_new[(i + 2) * 20 + j + 1];//2 2  2 1
                    tmp[(i + 2) * 20 + j + 3] = tetris_new[(i + 3) * 20 + j + 1];//2 3  3 1
                    tmp[(i + 3) * 20 + j] = tetris_new[i * 20 + j];//3 0  0 0
                    tmp[(i + 3) * 20 + j + 1] = tetris_new[(i + 1) * 20 + j];//3 1  1 0
                    tmp[(i + 3) * 20 + j + 2] = tetris_new[(i + 2) * 20 + j];//3 2  2 0
                    tmp[(i + 3) * 20 + j + 3] = tetris_new[(i + 3) * 20 + j];//3 3  3 0
                end
            end
        endcase
        if(tmp && !(tmp & tetris_whole))
            tetris_new = tmp;
    end
    else if(rst && button[0] && !over) begin                                                //下落    问题：在快到终点的时候会重叠
        tmp[0 * 20 + 19:0 * 20] = tetris_new[0 * 20 + 19:0 * 20] << 1;
        tmp[1 * 20 + 19:1 * 20] = tetris_new[1 * 20 + 19:1 * 20] << 1;
        tmp[2 * 20 + 19:2 * 20] = tetris_new[2 * 20 + 19:2 * 20] << 1;
        tmp[3 * 20 + 19:3 * 20] = tetris_new[3 * 20 + 19:3 * 20] << 1;
        tmp[4 * 20 + 19:4 * 20] = tetris_new[4 * 20 + 19:4 * 20] << 1;
        tmp[5 * 20 + 19:5 * 20] = tetris_new[5 * 20 + 19:5 * 20] << 1;
        tmp[6 * 20 + 19:6 * 20] = tetris_new[6 * 20 + 19:6 * 20] << 1;
        tmp[7 * 20 + 19:7 * 20] = tetris_new[7 * 20 + 19:7 * 20] << 1;
        tmp[8 * 20 + 19:8 * 20] = tetris_new[8 * 20 + 19:8 * 20] << 1;
        tmp[9 * 20 + 19:9 * 20] = tetris_new[9 * 20 + 19:9 * 20] << 1;
        if(tmp && !(tmp & tetris_whole) 
        && !((tmp[0 * 20 + 19:0 * 20] << 1) & tetris_whole[0 * 20 + 19:0 * 20]) && !tmp[0 * 20 + 18]
        && !((tmp[1 * 20 + 19:1 * 20] << 1) & tetris_whole[1 * 20 + 19:1 * 20]) && !tmp[1 * 20 + 18]
        && !((tmp[2 * 20 + 19:2 * 20] << 1) & tetris_whole[2 * 20 + 19:2 * 20]) && !tmp[2 * 20 + 19]
        && !((tmp[3 * 20 + 19:3 * 20] << 1) & tetris_whole[3 * 20 + 19:3 * 20]) && !tmp[3 * 20 + 19]
        && !((tmp[4 * 20 + 19:4 * 20] << 1) & tetris_whole[4 * 20 + 19:4 * 20]) && !tmp[4 * 20 + 19]
        && !((tmp[5 * 20 + 19:5 * 20] << 1) & tetris_whole[5 * 20 + 19:5 * 20]) && !tmp[5 * 20 + 19]
        && !((tmp[6 * 20 + 19:6 * 20] << 1) & tetris_whole[6 * 20 + 19:6 * 20]) && !tmp[6 * 20 + 19]
        && !((tmp[7 * 20 + 19:7 * 20] << 1) & tetris_whole[7 * 20 + 19:7 * 20]) && !tmp[7 * 20 + 19]
        && !((tmp[8 * 20 + 19:8 * 20] << 1) & tetris_whole[8 * 20 + 19:8 * 20]) && !tmp[8 * 20 + 19]
        && !((tmp[9 * 20 + 19:9 * 20] << 1) & tetris_whole[9 * 20 + 19:9 * 20]) && !tmp[9 * 20 + 19])
            tetris_new = tmp;
    end

    if(!rst) begin//低电平重置
        tetris_whole<=200'b0;
        tetris_new<=200'b0;
        over <= 2'b1;
        game_over <= 0;
        tetris_whole <= 200'b0;
        tetris_new <= 200'b0;
        score <= 32'b0;
    end
    else if(game_over) begin//游戏结束
        tetris_whole<=200'b0;
        tetris_new<=200'b0;
        score <= 32'b0;
    end//game_over end 游戏结束
    
    else begin//游戏没有结束
        if(over) begin                            //如果上一块已经落下出现新方块
            //把tetris_new和tetris_whole合并
            tetris_whole = tetris_whole | tetris_new;
            tetris_new = 200'b0;
            //消除
            if(tetris_whole[0 * 20 + 19] & tetris_whole[1 * 20 + 19] & tetris_whole[2 * 20 + 19] & tetris_whole[3 * 20 + 19] &
            tetris_whole[4 * 20 + 19] & tetris_whole[5 * 20 + 19] & tetris_whole[6 * 20 + 19] & tetris_whole[7 * 20 + 19] & 
            tetris_whole[8 * 20 + 19] & tetris_whole[9 * 20 + 19]) begin
                tetris_whole[0 * 20 + 19 : 0 * 20] = tetris_whole[0 * 20 + 19:0 * 20] << 1;
                tetris_whole[1 * 20 + 19 : 1 * 20] = tetris_whole[1 * 20 + 19:1 * 20] << 1;
                tetris_whole[2 * 20 + 19 : 2 * 20] = tetris_whole[2 * 20 + 19:2 * 20] << 1;
                tetris_whole[3 * 20 + 19 : 3 * 20] = tetris_whole[3 * 20 + 19:3 * 20] << 1;
                tetris_whole[4 * 20 + 19 : 4 * 20] = tetris_whole[4 * 20 + 19:4 * 20] << 1;
                                                                            
                tetris_whole[5 * 20 + 19 : 5 * 20] = tetris_whole[5 * 20 + 19:5 * 20] << 1;
                tetris_whole[6 * 20 + 19 : 6 * 20] = tetris_whole[6 * 20 + 19:6 * 20] << 1;
                tetris_whole[7 * 20 + 19 : 7 * 20] = tetris_whole[7 * 20 + 19:7 * 20] << 1;
                tetris_whole[8 * 20 + 19 : 8 * 20] = tetris_whole[8 * 20 + 19:8 * 20] << 1;
                tetris_whole[9 * 20 + 19 : 9 * 20] = tetris_whole[9 * 20 + 19:9 * 20] << 1;
                score = score + 32'd10;
            end
            if(tetris_whole[0 * 20 + 18] & tetris_whole[1 * 20 + 18] & tetris_whole[2 * 20 + 18] & tetris_whole[3 * 20 + 18] &
            tetris_whole[4 * 20 + 18] & tetris_whole[5 * 20 + 18] & tetris_whole[6 * 20 + 18] & tetris_whole[7 * 20 + 18] & 
            tetris_whole[8 * 20 + 18] & tetris_whole[9 * 20 + 18]) begin
                tetris_whole[0 * 20 + 18 : 0 * 20] = tetris_whole[0 * 20 + 18:0 * 20] << 1;
                tetris_whole[1 * 20 + 18 : 1 * 20] = tetris_whole[1 * 20 + 18:1 * 20] << 1;
                tetris_whole[2 * 20 + 18 : 2 * 20] = tetris_whole[2 * 20 + 18:2 * 20] << 1;
                tetris_whole[3 * 20 + 18 : 3 * 20] = tetris_whole[3 * 20 + 18:3 * 20] << 1;
                tetris_whole[4 * 20 + 18 : 4 * 20] = tetris_whole[4 * 20 + 18:4 * 20] << 1;
                tetris_whole[5 * 20 + 18 : 5 * 20] = tetris_whole[5 * 20 + 18:5 * 20] << 1;
                tetris_whole[6 * 20 + 18 : 6 * 20] = tetris_whole[6 * 20 + 18:6 * 20] << 1;
                tetris_whole[7 * 20 + 18 : 7 * 20] = tetris_whole[7 * 20 + 18:7 * 20] << 1;
                tetris_whole[8 * 20 + 18 : 8 * 20] = tetris_whole[8 * 20 + 18:8 * 20] << 1;
                tetris_whole[9 * 20 + 18 : 9 * 20] = tetris_whole[9 * 20 + 18:9 * 20] << 1;
                score = score + 32'd10;
            end
            if(tetris_whole[0 * 20 + 17] & tetris_whole[1 * 20 + 17] & tetris_whole[2 * 20 + 17] & tetris_whole[3 * 20 + 17] &
            tetris_whole[4 * 20 + 17] & tetris_whole[5 * 20 + 17] & tetris_whole[6 * 20 + 17] & tetris_whole[7 * 20 + 17] & 
            tetris_whole[8 * 20 + 17] & tetris_whole[9 * 20 + 17]) begin
                tetris_whole[0 * 20 + 17 : 0 * 20] = tetris_whole[0 * 20 + 17:0 * 20] << 1;
                tetris_whole[1 * 20 + 17 : 1 * 20] = tetris_whole[1 * 20 + 17:1 * 20] << 1;
                tetris_whole[2 * 20 + 17 : 2 * 20] = tetris_whole[2 * 20 + 17:2 * 20] << 1;
                tetris_whole[3 * 20 + 17 : 3 * 20] = tetris_whole[3 * 20 + 17:3 * 20] << 1;
                tetris_whole[4 * 20 + 17 : 4 * 20] = tetris_whole[4 * 20 + 17:4 * 20] << 1;
                tetris_whole[5 * 20 + 17 : 5 * 20] = tetris_whole[5 * 20 + 17:5 * 20] << 1;
                tetris_whole[6 * 20 + 17 : 6 * 20] = tetris_whole[6 * 20 + 17:6 * 20] << 1;
                tetris_whole[7 * 20 + 17 : 7 * 20] = tetris_whole[7 * 20 + 17:7 * 20] << 1;
                tetris_whole[8 * 20 + 17 : 8 * 20] = tetris_whole[8 * 20 + 17:8 * 20] << 1;
                tetris_whole[9 * 20 + 17 : 9 * 20] = tetris_whole[9 * 20 + 17:9 * 20] << 1;
                score = score + 32'd10;
            end
            if(tetris_whole[0 * 20 + 16] & tetris_whole[1 * 20 + 16] & tetris_whole[2 * 20 + 16] & tetris_whole[3 * 20 + 16] &
            tetris_whole[4 * 20 + 16] & tetris_whole[5 * 20 + 16] & tetris_whole[6 * 20 + 16] & tetris_whole[7 * 20 + 16] & 
            tetris_whole[8 * 20 + 16] & tetris_whole[9 * 20 + 16]) begin
                tetris_whole[0 * 20 + 16 : 0 * 20] = tetris_whole[0 * 20 + 16:0 * 20] << 1;
                tetris_whole[1 * 20 + 16 : 1 * 20] = tetris_whole[1 * 20 + 16:1 * 20] << 1;
                tetris_whole[2 * 20 + 16 : 2 * 20] = tetris_whole[2 * 20 + 16:2 * 20] << 1;
                tetris_whole[3 * 20 + 16 : 3 * 20] = tetris_whole[3 * 20 + 16:3 * 20] << 1;
                tetris_whole[4 * 20 + 16 : 4 * 20] = tetris_whole[4 * 20 + 16:4 * 20] << 1;
                tetris_whole[5 * 20 + 16 : 5 * 20] = tetris_whole[5 * 20 + 16:5 * 20] << 1;
                tetris_whole[6 * 20 + 16 : 6 * 20] = tetris_whole[6 * 20 + 16:6 * 20] << 1;
                tetris_whole[7 * 20 + 16 : 7 * 20] = tetris_whole[7 * 20 + 16:7 * 20] << 1;
                tetris_whole[8 * 20 + 16 : 8 * 20] = tetris_whole[8 * 20 + 16:8 * 20] << 1;
                tetris_whole[9 * 20 + 16 : 9 * 20] = tetris_whole[9 * 20 + 16:9 * 20] << 1;
                score = score + 32'd10;
            end
            if(tetris_whole[0 * 20 + 15] & tetris_whole[1 * 20 + 15] & tetris_whole[2 * 20 + 15] & tetris_whole[3 * 20 + 15] &
            tetris_whole[4 * 20 + 15] & tetris_whole[5 * 20 + 15] & tetris_whole[6 * 20 + 15] & tetris_whole[7 * 20 + 15] & 
            tetris_whole[8 * 20 + 15] & tetris_whole[9 * 20 + 15]) begin
                tetris_whole[0 * 20 + 15 : 0 * 20] = tetris_whole[0 * 20 + 15:0 * 20] << 1;
                tetris_whole[1 * 20 + 15 : 1 * 20] = tetris_whole[1 * 20 + 15:1 * 20] << 1;
                tetris_whole[2 * 20 + 15 : 2 * 20] = tetris_whole[2 * 20 + 15:2 * 20] << 1;
                tetris_whole[3 * 20 + 15 : 3 * 20] = tetris_whole[3 * 20 + 15:3 * 20] << 1;
                tetris_whole[4 * 20 + 15 : 4 * 20] = tetris_whole[4 * 20 + 15:4 * 20] << 1;
                tetris_whole[5 * 20 + 15 : 5 * 20] = tetris_whole[5 * 20 + 15:5 * 20] << 1;
                tetris_whole[6 * 20 + 15 : 6 * 20] = tetris_whole[6 * 20 + 15:6 * 20] << 1;
                tetris_whole[7 * 20 + 15 : 7 * 20] = tetris_whole[7 * 20 + 15:7 * 20] << 1;
                tetris_whole[8 * 20 + 15 : 8 * 20] = tetris_whole[8 * 20 + 15:8 * 20] << 1;
                tetris_whole[9 * 20 + 15 : 9 * 20] = tetris_whole[9 * 20 + 15:9 * 20] << 1;
                score = score + 32'd10;
            end
            if(tetris_whole[0 * 20 + 14] & tetris_whole[1 * 20 + 14] & tetris_whole[2 * 20 + 14] & tetris_whole[3 * 20 + 14] &
            tetris_whole[4 * 20 + 14] & tetris_whole[5 * 20 + 14] & tetris_whole[6 * 20 + 14] & tetris_whole[7 * 20 + 14] & 
            tetris_whole[8 * 20 + 14] & tetris_whole[9 * 20 + 14]) begin
                tetris_whole[0 * 20 + 14 : 0 * 20] = tetris_whole[0 * 20 + 14:0 * 20] << 1;
                tetris_whole[1 * 20 + 14 : 1 * 20] = tetris_whole[1 * 20 + 14:1 * 20] << 1;
                tetris_whole[2 * 20 + 14 : 2 * 20] = tetris_whole[2 * 20 + 14:2 * 20] << 1;
                tetris_whole[3 * 20 + 14 : 3 * 20] = tetris_whole[3 * 20 + 14:3 * 20] << 1;
                tetris_whole[4 * 20 + 14 : 4 * 20] = tetris_whole[4 * 20 + 14:4 * 20] << 1;
                tetris_whole[5 * 20 + 14 : 5 * 20] = tetris_whole[5 * 20 + 14:5 * 20] << 1;
                tetris_whole[6 * 20 + 14 : 6 * 20] = tetris_whole[6 * 20 + 14:6 * 20] << 1;
                tetris_whole[7 * 20 + 14 : 7 * 20] = tetris_whole[7 * 20 + 14:7 * 20] << 1;
                tetris_whole[8 * 20 + 14 : 8 * 20] = tetris_whole[8 * 20 + 14:8 * 20] << 1;
                tetris_whole[9 * 20 + 14 : 9 * 20] = tetris_whole[9 * 20 + 14:9 * 20] << 1;
                score = score + 32'd10;
            end
            if(tetris_whole[0 * 20 + 13] & tetris_whole[1 * 20 + 13] & tetris_whole[2 * 20 + 13] & tetris_whole[3 * 20 + 13] &
            tetris_whole[4 * 20 + 13] & tetris_whole[5 * 20 + 13] & tetris_whole[6 * 20 + 13] & tetris_whole[7 * 20 + 13] & 
            tetris_whole[8 * 20 + 13] & tetris_whole[9 * 20 + 13]) begin
                tetris_whole[0 * 20 + 13 : 0 * 20] = tetris_whole[0 * 20 + 13:0 * 20] << 1;
                tetris_whole[1 * 20 + 13 : 1 * 20] = tetris_whole[1 * 20 + 13:1 * 20] << 1;
                tetris_whole[2 * 20 + 13 : 2 * 20] = tetris_whole[2 * 20 + 13:2 * 20] << 1;
                tetris_whole[3 * 20 + 13 : 3 * 20] = tetris_whole[3 * 20 + 13:3 * 20] << 1;
                tetris_whole[4 * 20 + 13 : 4 * 20] = tetris_whole[4 * 20 + 13:4 * 20] << 1;
                tetris_whole[5 * 20 + 13 : 5 * 20] = tetris_whole[5 * 20 + 13:5 * 20] << 1;
                tetris_whole[6 * 20 + 13 : 6 * 20] = tetris_whole[6 * 20 + 13:6 * 20] << 1;
                tetris_whole[7 * 20 + 13 : 7 * 20] = tetris_whole[7 * 20 + 13:7 * 20] << 1;
                tetris_whole[8 * 20 + 13 : 8 * 20] = tetris_whole[8 * 20 + 13:8 * 20] << 1;
                tetris_whole[9 * 20 + 13 : 9 * 20] = tetris_whole[9 * 20 + 13:9 * 20] << 1;
                score = score + 32'd10;
            end
            if(tetris_whole[0 * 20 + 12] & tetris_whole[1 * 20 + 12] & tetris_whole[2 * 20 + 12] & tetris_whole[3 * 20 + 12] &
            tetris_whole[4 * 20 + 12] & tetris_whole[5 * 20 + 12] & tetris_whole[6 * 20 + 12] & tetris_whole[7 * 20 + 12] & 
            tetris_whole[8 * 20 + 12] & tetris_whole[9 * 20 + 12]) begin
                tetris_whole[0 * 20 + 12 : 0 * 20] = tetris_whole[0 * 20 + 12:0 * 20] << 1;
                tetris_whole[1 * 20 + 12 : 1 * 20] = tetris_whole[1 * 20 + 12:1 * 20] << 1;
                tetris_whole[2 * 20 + 12 : 2 * 20] = tetris_whole[2 * 20 + 12:2 * 20] << 1;
                tetris_whole[3 * 20 + 12 : 3 * 20] = tetris_whole[3 * 20 + 12:3 * 20] << 1;
                tetris_whole[4 * 20 + 12 : 4 * 20] = tetris_whole[4 * 20 + 12:4 * 20] << 1;
                tetris_whole[5 * 20 + 12 : 5 * 20] = tetris_whole[5 * 20 + 12:5 * 20] << 1;
                tetris_whole[6 * 20 + 12 : 6 * 20] = tetris_whole[6 * 20 + 12:6 * 20] << 1;
                tetris_whole[7 * 20 + 12 : 7 * 20] = tetris_whole[7 * 20 + 12:7 * 20] << 1;
                tetris_whole[8 * 20 + 12 : 8 * 20] = tetris_whole[8 * 20 + 12:8 * 20] << 1;
                tetris_whole[9 * 20 + 12 : 9 * 20] = tetris_whole[9 * 20 + 12:9 * 20] << 1;
                score = score + 32'd10;
            end
            if(tetris_whole[0 * 20 + 11] & tetris_whole[1 * 20 + 11] & tetris_whole[2 * 20 + 11] & tetris_whole[3 * 20 + 11] &
            tetris_whole[4 * 20 + 11] & tetris_whole[5 * 20 + 11] & tetris_whole[6 * 20 + 11] & tetris_whole[7 * 20 + 11] & 
            tetris_whole[8 * 20 + 11] & tetris_whole[9 * 20 + 11]) begin
                tetris_whole[0 * 20 + 11 : 0 * 20] = tetris_whole[0 * 20 + 11:0 * 20] << 1;
                tetris_whole[1 * 20 + 11 : 1 * 20] = tetris_whole[1 * 20 + 11:1 * 20] << 1;
                tetris_whole[2 * 20 + 11 : 2 * 20] = tetris_whole[2 * 20 + 11:2 * 20] << 1;
                tetris_whole[3 * 20 + 11 : 3 * 20] = tetris_whole[3 * 20 + 11:3 * 20] << 1;
                tetris_whole[4 * 20 + 11 : 4 * 20] = tetris_whole[4 * 20 + 11:4 * 20] << 1;
                tetris_whole[5 * 20 + 11 : 5 * 20] = tetris_whole[5 * 20 + 11:5 * 20] << 1;
                tetris_whole[6 * 20 + 11 : 6 * 20] = tetris_whole[6 * 20 + 11:6 * 20] << 1;
                tetris_whole[7 * 20 + 11 : 7 * 20] = tetris_whole[7 * 20 + 11:7 * 20] << 1;
                tetris_whole[8 * 20 + 11 : 8 * 20] = tetris_whole[8 * 20 + 11:8 * 20] << 1;
                tetris_whole[9 * 20 + 11 : 9 * 20] = tetris_whole[9 * 20 + 11:9 * 20] << 1;
                score = score + 32'd10;
            end
            if (tetris_whole[0 * 20 + 10] & tetris_whole[1 * 20 + 10] & tetris_whole[2 * 20 + 10] & tetris_whole[3 * 20 + 10] &
                tetris_whole[4 * 20 + 10] & tetris_whole[5 * 20 + 10] & tetris_whole[6 * 20 + 10] & tetris_whole[7 * 20 + 10] &
                tetris_whole[8 * 20 + 10] & tetris_whole[9 * 20 + 10]) begin
                tetris_whole[0 * 20 + 10 : 0 * 20] = tetris_whole[0 * 20 + 10:0 * 20] << 1;
                tetris_whole[1 * 20 + 10 : 1 * 20] = tetris_whole[1 * 20 + 10:1 * 20] << 1;
                tetris_whole[2 * 20 + 10 : 2 * 20] = tetris_whole[2 * 20 + 10:2 * 20] << 1;
                tetris_whole[3 * 20 + 10 : 3 * 20] = tetris_whole[3 * 20 + 10:3 * 20] << 1;
                tetris_whole[4 * 20 + 10 : 4 * 20] = tetris_whole[4 * 20 + 10:4 * 20] << 1;
                tetris_whole[5 * 20 + 10 : 5 * 20] = tetris_whole[5 * 20 + 10:5 * 20] << 1;
                tetris_whole[6 * 20 + 10 : 6 * 20] = tetris_whole[6 * 20 + 10:6 * 20] << 1;
                tetris_whole[7 * 20 + 10 : 7 * 20] = tetris_whole[7 * 20 + 10:7 * 20] << 1;
                tetris_whole[8 * 20 + 10 : 8 * 20] = tetris_whole[8 * 20 + 10:8 * 20] << 1;
                tetris_whole[9 * 20 + 10 : 9 * 20] = tetris_whole[9 * 20 + 10:9 * 20] << 1;
                score = score + 32'd10;
            end
            if (tetris_whole[0 * 20 + 9] & tetris_whole[1 * 20 + 9] & tetris_whole[2 * 20 + 9] & tetris_whole[3 * 20 + 9] &
                tetris_whole[4 * 20 + 9] & tetris_whole[5 * 20 + 9] & tetris_whole[6 * 20 + 9] & tetris_whole[7 * 20 + 9] &
                tetris_whole[8 * 20 + 9] & tetris_whole[9 * 20 + 9]) begin
                tetris_whole[0 * 20 + 9 : 0 * 20] = tetris_whole[0 * 20 + 9:0 * 20] << 1;
                tetris_whole[1 * 20 + 9 : 1 * 20] = tetris_whole[1 * 20 + 9:1 * 20] << 1;
                tetris_whole[2 * 20 + 9 : 2 * 20] = tetris_whole[2 * 20 + 9:2 * 20] << 1;
                tetris_whole[3 * 20 + 9 : 3 * 20] = tetris_whole[3 * 20 + 9:3 * 20] << 1;
                tetris_whole[4 * 20 + 9 : 4 * 20] = tetris_whole[4 * 20 + 9:4 * 20] << 1;
                tetris_whole[5 * 20 + 9 : 5 * 20] = tetris_whole[5 * 20 + 9:5 * 20] << 1;
                tetris_whole[6 * 20 + 9 : 6 * 20] = tetris_whole[6 * 20 + 9:6 * 20] << 1;
                tetris_whole[7 * 20 + 9 : 7 * 20] = tetris_whole[7 * 20 + 9:7 * 20] << 1;
                tetris_whole[8 * 20 + 9 : 8 * 20] = tetris_whole[8 * 20 + 9:8 * 20] << 1;
                tetris_whole[9 * 20 + 9 : 9 * 20] = tetris_whole[9 * 20 + 9:9 * 20] << 1;
                score = score + 32'd10;
            end
            if (tetris_whole[0 * 20 + 8] & tetris_whole[1 * 20 + 8] & tetris_whole[2 * 20 + 8] & tetris_whole[3 * 20 + 8] &
                tetris_whole[4 * 20 + 8] & tetris_whole[5 * 20 + 8] & tetris_whole[6 * 20 + 8] & tetris_whole[7 * 20 + 8] &
                tetris_whole[8 * 20 + 8] & tetris_whole[9 * 20 + 8]) begin
                tetris_whole[0 * 20 + 8 : 0 * 20] = tetris_whole[0 * 20 + 8:0 * 20] << 1;
                tetris_whole[1 * 20 + 8 : 1 * 20] = tetris_whole[1 * 20 + 8:1 * 20] << 1;
                tetris_whole[2 * 20 + 8 : 2 * 20] = tetris_whole[2 * 20 + 8:2 * 20] << 1;
                tetris_whole[3 * 20 + 8 : 3 * 20] = tetris_whole[3 * 20 + 8:3 * 20] << 1;
                tetris_whole[4 * 20 + 8 : 4 * 20] = tetris_whole[4 * 20 + 8:4 * 20] << 1;
                tetris_whole[5 * 20 + 8 : 5 * 20] = tetris_whole[5 * 20 + 8:5 * 20] << 1;
                tetris_whole[6 * 20 + 8 : 6 * 20] = tetris_whole[6 * 20 + 8:6 * 20] << 1;
                tetris_whole[7 * 20 + 8 : 7 * 20] = tetris_whole[7 * 20 + 8:7 * 20] << 1;
                tetris_whole[8 * 20 + 8 : 8 * 20] = tetris_whole[8 * 20 + 8:8 * 20] << 1;
                tetris_whole[9 * 20 + 8 : 9 * 20] = tetris_whole[9 * 20 + 8:9 * 20] << 1;
                score = score + 32'd10;
            end            
            if (tetris_whole[0 * 20 + 7] & tetris_whole[1 * 20 + 7] & tetris_whole[2 * 20 + 7] & tetris_whole[3 * 20 + 7] &
                tetris_whole[4 * 20 + 7] & tetris_whole[5 * 20 + 7] & tetris_whole[6 * 20 + 7] & tetris_whole[7 * 20 + 7] &
                tetris_whole[8 * 20 + 7] & tetris_whole[9 * 20 + 7]) begin
                tetris_whole[0 * 20 + 7 : 0 * 20] = tetris_whole[0 * 20 + 7:0 * 20] << 1;
                tetris_whole[1 * 20 + 7 : 1 * 20] = tetris_whole[1 * 20 + 7:1 * 20] << 1;
                tetris_whole[2 * 20 + 7 : 2 * 20] = tetris_whole[2 * 20 + 7:2 * 20] << 1;
                tetris_whole[3 * 20 + 7 : 3 * 20] = tetris_whole[3 * 20 + 7:3 * 20] << 1;
                tetris_whole[4 * 20 + 7 : 4 * 20] = tetris_whole[4 * 20 + 7:4 * 20] << 1;
                tetris_whole[5 * 20 + 7 : 5 * 20] = tetris_whole[5 * 20 + 7:5 * 20] << 1;
                tetris_whole[6 * 20 + 7 : 6 * 20] = tetris_whole[6 * 20 + 7:6 * 20] << 1;
                tetris_whole[7 * 20 + 7 : 7 * 20] = tetris_whole[7 * 20 + 7:7 * 20] << 1;
                tetris_whole[8 * 20 + 7 : 8 * 20] = tetris_whole[8 * 20 + 7:8 * 20] << 1;
                tetris_whole[9 * 20 + 7 : 9 * 20] = tetris_whole[9 * 20 + 7:9 * 20] << 1;
                score = score + 32'd10;
            end
            if (tetris_whole[0 * 20 + 6] & tetris_whole[1 * 20 + 6] & tetris_whole[2 * 20 + 6] & tetris_whole[3 * 20 + 6] &
                tetris_whole[4 * 20 + 6] & tetris_whole[5 * 20 + 6] & tetris_whole[6 * 20 + 6] & tetris_whole[7 * 20 + 6] &
                tetris_whole[8 * 20 + 6] & tetris_whole[9 * 20 + 6]) begin
                tetris_whole[0 * 20 + 6 : 0 * 20] = tetris_whole[0 * 20 + 6:0 * 20] << 1;
                tetris_whole[1 * 20 + 6 : 1 * 20] = tetris_whole[1 * 20 + 6:1 * 20] << 1;
                tetris_whole[2 * 20 + 6 : 2 * 20] = tetris_whole[2 * 20 + 6:2 * 20] << 1;
                tetris_whole[3 * 20 + 6 : 3 * 20] = tetris_whole[3 * 20 + 6:3 * 20] << 1;
                tetris_whole[4 * 20 + 6 : 4 * 20] = tetris_whole[4 * 20 + 6:4 * 20] << 1;
                tetris_whole[5 * 20 + 6 : 5 * 20] = tetris_whole[5 * 20 + 6:5 * 20] << 1;
                tetris_whole[6 * 20 + 6 : 6 * 20] = tetris_whole[6 * 20 + 6:6 * 20] << 1;
                tetris_whole[7 * 20 + 6 : 7 * 20] = tetris_whole[7 * 20 + 6:7 * 20] << 1;
                tetris_whole[8 * 20 + 6 : 8 * 20] = tetris_whole[8 * 20 + 6:8 * 20] << 1;
                tetris_whole[9 * 20 + 6 : 9 * 20] = tetris_whole[9 * 20 + 6:9 * 20] << 1;
                score = score + 32'd10;
            end
            if (tetris_whole[0 * 20 + 5] & tetris_whole[1 * 20 + 5] & tetris_whole[2 * 20 + 5] & tetris_whole[3 * 20 + 5] &
                tetris_whole[4 * 20 + 5] & tetris_whole[5 * 20 + 5] & tetris_whole[6 * 20 + 5] & tetris_whole[7 * 20 + 5] &
                tetris_whole[8 * 20 + 5] & tetris_whole[9 * 20 + 5]) begin
                tetris_whole[0 * 20 + 5 : 0 * 20] = tetris_whole[0 * 20 + 5:0 * 20] << 1;
                tetris_whole[1 * 20 + 5 : 1 * 20] = tetris_whole[1 * 20 + 5:1 * 20] << 1;
                tetris_whole[2 * 20 + 5 : 2 * 20] = tetris_whole[2 * 20 + 5:2 * 20] << 1;
                tetris_whole[3 * 20 + 5 : 3 * 20] = tetris_whole[3 * 20 + 5:3 * 20] << 1;
                tetris_whole[4 * 20 + 5 : 4 * 20] = tetris_whole[4 * 20 + 5:4 * 20] << 1;
                tetris_whole[5 * 20 + 5 : 5 * 20] = tetris_whole[5 * 20 + 5:5 * 20] << 1;
                tetris_whole[6 * 20 + 5 : 6 * 20] = tetris_whole[6 * 20 + 5:6 * 20] << 1;
                tetris_whole[7 * 20 + 5 : 7 * 20] = tetris_whole[7 * 20 + 5:7 * 20] << 1;
                tetris_whole[8 * 20 + 5 : 8 * 20] = tetris_whole[8 * 20 + 5:8 * 20] << 1;
                tetris_whole[9 * 20 + 5 : 9 * 20] = tetris_whole[9 * 20 + 5:9 * 20] << 1;
            end
            if (tetris_whole[0 * 20 + 4] & tetris_whole[1 * 20 + 4] & tetris_whole[2 * 20 + 4] & tetris_whole[3 * 20 + 4] &
                tetris_whole[4 * 20 + 4] & tetris_whole[5 * 20 + 4] & tetris_whole[6 * 20 + 4] & tetris_whole[7 * 20 + 4] &
                tetris_whole[8 * 20 + 4] & tetris_whole[9 * 20 + 4]) begin
                tetris_whole[0 * 20 + 4 : 0 * 20] = tetris_whole[0 * 20 + 4:0 * 20] << 1;
                tetris_whole[1 * 20 + 4 : 1 * 20] = tetris_whole[1 * 20 + 4:1 * 20] << 1;
                tetris_whole[2 * 20 + 4 : 2 * 20] = tetris_whole[2 * 20 + 4:2 * 20] << 1;
                tetris_whole[3 * 20 + 4 : 3 * 20] = tetris_whole[3 * 20 + 4:3 * 20] << 1;
                tetris_whole[4 * 20 + 4 : 4 * 20] = tetris_whole[4 * 20 + 4:4 * 20] << 1;
                tetris_whole[5 * 20 + 4 : 5 * 20] = tetris_whole[5 * 20 + 4:5 * 20] << 1;
                tetris_whole[6 * 20 + 4 : 6 * 20] = tetris_whole[6 * 20 + 4:6 * 20] << 1;
                tetris_whole[7 * 20 + 4 : 7 * 20] = tetris_whole[7 * 20 + 4:7 * 20] << 1;
                tetris_whole[8 * 20 + 4 : 8 * 20] = tetris_whole[8 * 20 + 4:8 * 20] << 1;
                tetris_whole[9 * 20 + 4 : 9 * 20] = tetris_whole[9 * 20 + 4:9 * 20] << 1;
            end

            //产生新方块
            case(randn % 6)
            3'd0:begin
                tetris_new[4 * 20 + 19:4 * 20] = TTS0_4;tetris_new[5 * 20 + 19:5 * 20] = TTS0_5;tetris_new[6 * 20 + 19:6 * 20] = TTS0_6;
            end
            3'd1:begin
                tetris_new[4 * 20 + 19:4 * 20] = TTS1_4;tetris_new[5 * 20 + 19:5 * 20] = TTS1_5;tetris_new[6 * 20 + 19:6 * 20] = TTS1_6;
            end
            3'd2:begin
                tetris_new[4 * 20 + 19:4 * 20] = TTS2_4;tetris_new[5 * 20 + 19:5 * 20] = TTS2_5;tetris_new[6 * 20 + 19:6 * 20] = TTS2_6;
            end
            3'd3:begin
                tetris_new[4 * 20 + 19:4 * 20] = TTS3_4;tetris_new[5 * 20 + 19:5 * 20] = TTS3_5;tetris_new[6 * 20 + 19:6 * 20] = TTS3_6;
            end
            3'd4:begin
                tetris_new[4 * 20 + 19:4 * 20] = TTS4_4;tetris_new[5 * 20 + 19:5 * 20] = TTS4_5;tetris_new[6 * 20 + 19:6 * 20] = TTS4_6;
            end
            3'd5:begin
                tetris_new[4 * 20 + 19:4 * 20] = TTS5_4;tetris_new[5 * 20 + 19:5 * 20] = TTS5_5;tetris_new[6 * 20 + 19:6 * 20] = TTS5_6;
            end
            endcase
            //判断有没有死亡 
            if(tetris_new & tetris_whole)
                game_over = 1'b1;
            over <= 1'b0;
            randn <= (randn + 1) * 11;
        end
        else begin                                //如果上一块还没有落下
            //上一块落下
            tetris_new[0 * 20 + 19:0 * 20] <= tetris_new[0 * 20 + 19:0 * 20] << 1;
            tetris_new[1 * 20 + 19:1 * 20] <= tetris_new[1 * 20 + 19:1 * 20] << 1;
            tetris_new[2 * 20 + 19:2 * 20] <= tetris_new[2 * 20 + 19:2 * 20] << 1;
            tetris_new[3 * 20 + 19:3 * 20] <= tetris_new[3 * 20 + 19:3 * 20] << 1;
            tetris_new[4 * 20 + 19:4 * 20] <= tetris_new[4 * 20 + 19:4 * 20] << 1;
            tetris_new[5 * 20 + 19:5 * 20] <= tetris_new[5 * 20 + 19:5 * 20] << 1;
            tetris_new[6 * 20 + 19:6 * 20] <= tetris_new[6 * 20 + 19:6 * 20] << 1;
            tetris_new[7 * 20 + 19:7 * 20] <= tetris_new[7 * 20 + 19:7 * 20] << 1;
            tetris_new[8 * 20 + 19:8 * 20] <= tetris_new[8 * 20 + 19:8 * 20] << 1; 
            tetris_new[9 * 20 + 19:9 * 20] <= tetris_new[9 * 20 + 19:9 * 20] << 1;
            //判断是否到底了
            if(((tetris_new[0 * 20 + 19:0 * 20] << 2) & tetris_whole[0 * 20 + 19:0 * 20]) || tetris_new[0 * 20 + 18])
                over <= 1'b1;
            else if(((tetris_new[1 * 20 + 19:1 * 20] << 2) & tetris_whole[1 * 20 + 19:1 * 20]) || tetris_new[1 * 20 + 18])
                over <= 1'b1;
            else if(((tetris_new[2 * 20 + 19:2 * 20] << 2) & tetris_whole[2 * 20 + 19:2 * 20]) || tetris_new[2 * 20 + 18])
                over <= 1'b1;
            else if(((tetris_new[3 * 20 + 19:3 * 20] << 2) & tetris_whole[3 * 20 + 19:3 * 20]) || tetris_new[3 * 20 + 18])
                over <= 1'b1;
            else if(((tetris_new[4 * 20 + 19:4 * 20] << 2) & tetris_whole[4 * 20 + 19:4 * 20]) || tetris_new[4 * 20 + 18])
                over <= 1'b1; 
            else if(((tetris_new[5 * 20 + 19:5 * 20] << 2) & tetris_whole[5 * 20 + 19:5 * 20]) || tetris_new[5 * 20 + 18])
                over <= 1'b1;
            else if(((tetris_new[6 * 20 + 19:6 * 20] << 2) & tetris_whole[6 * 20 + 19:6 * 20]) || tetris_new[6 * 20 + 18])
                over <= 1'b1;
            else if(((tetris_new[7 * 20 + 19:7 * 20] << 2) & tetris_whole[7 * 20 + 19:7 * 20]) || tetris_new[7 * 20 + 18])
                over <= 1'b1;
            else if(((tetris_new[8 * 20 + 19:8 * 20] << 2) & tetris_whole[8 * 20 + 19:8 * 20]) || tetris_new[8 * 20 + 18])
                over <= 1'b1;
            else if(((tetris_new[9 * 20 + 19:9 * 20] << 2) & tetris_whole[9 * 20 + 19:9 * 20]) || tetris_new[9 * 20 + 18]|| !tetris_new)
                over <= 1'b1;
        end
    end //游戏没有结束 end
end
endmodule
