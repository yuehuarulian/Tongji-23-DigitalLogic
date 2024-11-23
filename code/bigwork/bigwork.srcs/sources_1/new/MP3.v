`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/12/22 19:59:29
// Design Name: 
// Module Name: MP3
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


module MP3(
    input       clk,            //12.288/6MHZʱ��
    input       rst,
    input       play,           //��ʼ����ʼ��������
    input       SO,             //����                           MP3  MISO:G17
    input       DREQ,           //�������󣬸ߵ�ƽʱ�ɴ�������   MP3  DREQ:F18 
    input       [3:0]music_id,       //�ڼ��׸�
    output reg  XCS,            //SCI �����дָ��              MP3  XCS:C17 
    output reg  XDCS,           //SDI ��������                  MP3  XDCS:D17
    output       SCK,            //ʱ��                           MP3  SCLK;D18
    output reg  SI,             //����mp3                       MP3  MOSI:E18 
    output reg  XRESET         //Ӳ����λ���͵�ƽ��Ч           MP3  XREST:E17
    );
    parameter   H_RESET    = 4'd0,       //Ӳ��λ
                 S_RESET     = 4'd1,         //��λ
                 SET_CLOCKF  = 4'd2,         //����ʱ�ӼĴ���
                 SET_BASS    = 4'd3,         //���������Ĵ���
                 SET_VOL     = 4'd3,         //��������4
                 WAITE       = 4'd5,         //�ȴ�
                 PLAY        = 4'd6,         //����
                 END         = 6'd7;         //����
    

    reg [3:0]       state       = WAITE;            //״̬
    reg [31:0]      cntdown     = 32'd0;            //��ʱ
    reg [31:0]      cmd       = 32'd0;            //ָ����� 
    reg [7:0]       cntData   = 8'd32;            //SCIָ���ַλ������

    reg [31:0]      music_data     = 32'd0;           //��������
    reg [31:0]      cntSended     = 32'd32;           //SDI��ǰ4�ֽ��Ѵ���BIT

    reg [16:0]      addra       = 16'd0;            //ROM�еĵ�ַ
    wire [31:0]     data0;                          //ROM����
    wire [31:0]     data1;  
    wire [31:0]     data2;  
    wire [31:0]     data3;  
    wire [31:0]     data4;
//    wire [31:0]     data5;
    reg             ena         = 0;
    reg             [3:0]pre_id = 0;
    
    assign SCK = (clk & ena);
    //�ٶȿ���
    reg [31:0] mp3Speed=1700000;//�ӳ�
    always @(music_id) begin
        case (music_id)
            4'd0 : begin
                mp3Speed <= 1700000;
            end
            4'd1 : begin
                mp3Speed <= 1700000;
            end
            4'd2 : begin
                mp3Speed <= 1700000;
            end
            4'd3 : begin
                mp3Speed <= 600000;
            end
            4'd4 : begin
                mp3Speed <= 1700000;
            end
/*            4'd5 : begin
                mp3Speed <= 600000;
            end*/
        default: begin
                mp3Speed <= 1700000;
        end
        endcase
    end

    always @(negedge clk) begin
        if(!rst || pre_id != music_id || !play) begin
            pre_id <= music_id;
            XDCS <= 1'b1;
            ena <= 0;
            SI <= 1'b0;
            XCS <= 1'b1;
            state <= WAITE;
            XRESET <= 1'b1;
            addra <= 17'd0;
            cntSended <= 32'd32;
            music_data <= 32'd0;
        end
        else begin
            case (state)
                /*----------------�ȴ�---------------*/
                WAITE:begin
                if(cntdown > 0)
                    cntdown <= cntdown - 1'b1;
                //ת��Ӳ��λ
                else begin
                    cntdown <= 32'd1000;
                    state <= H_RESET;
                end
                end
                /*-----------------Ӳ��------------------*/
                H_RESET:begin
                if(cntdown > 0)
                    cntdown <= cntdown - 1'b1;
                else begin
                    XCS <= 1'b1;
                    XRESET <= 1'b0;
                    cntdown <= 32'd16700;               //��λ����ʱһ��ʱ

                    state <= S_RESET;                   //ת�Ƶ���λ
                    cmd <= 32'h02_00_08_04;            //��λָ
                    cntData <= 8'd32;                 //ָ��ء����ݳ���
                end
                end
                /*------------------��-----------------*/
                S_RESET:begin
                if(cntdown > 0) begin
                    XRESET <= (cntdown < 32'd16650);
                    cntdown <= cntdown - 1'b1;
                end
                else if(cntData == 0) begin           //��λ��
                    cntdown <= 32'd16600;

                    state <= SET_VOL;                   //ת�Ƶ�����VOL
                    cmd <= 32'h02_0b_00_00;
                    cntData <= 8'd32;

                    XCS <= 1'b1;                        //����XCS
                    ena <= 1'b0;                        //�ر�����ʱ��
                    SI <= 1'b0;
                end
                else if(DREQ) begin                     //��DREQ��Чʱ��ʼ��λ
                    XCS <= 1'b0;
                    ena <= 1'b1;
                    SI <= cmd[cntData - 1];
                    cntData <= cntData - 1'b1;
                end
                else begin
                    XCS <= 1'b1;                        //DREQ��Чʱ������
                    ena <= 1'b0;
                    SI <= 1'b0;
                end 
                end            

                /*----------��������----------*/
                PLAY:begin
                if(cntdown > 0)
                    cntdown <= cntdown - 1'b1;
                else if(play)begin
                    XDCS <= 1'b0;
                    ena <= 1'b1;
                    if(cntSended == 0) begin              //����4�ֽ�
                        XDCS <= 1'b1;                   //����XDCS
                        ena <= 1'b0;
                        SI <= 1'b0;
                        cntSended <= 32'd32;
                        case (music_id)
                            4'b0:music_data <= data0;
                            4'd1:music_data <= data1;
                            4'd2:music_data <= data2;
                            4'd3:music_data <= data3;
                            4'd4:music_data <= data4;
//                            4'd5:music_data <= data5;
                        default :;
                        endcase
                        addra <= addra + 1'b1;
                    end
                    else begin
                        //��DREQ��Ч ��ǰ�ֽ���δ������ �������
                        if(DREQ || (cntSended != 32 && cntSended != 24 && cntSended != 16 && cntSended != 8)) begin
                            SI <= music_data[cntSended - 1];
                            cntSended <= cntSended - 1'b1; 
                            ena <= 1;
                            XDCS <= 1'b0;
                        end
                        else begin      //DREQ���ͣ�ֹͣ��
                            ena <= 1'b0;
                            XDCS <= 1'b1;
                            SI <= 1'b0;
                        end
                    end
                end
                else;                                           
                end
                /*---------------------�Ĵ�����------------------*/
                default:
                if(cntdown > 0)
                    cntdown <= cntdown - 1'b1;
                else if(cntData == 0) begin           //������SCIд��
                    if(state == SET_CLOCKF) begin
                        cntdown <= mp3Speed;//32'd1700000;
                        state <= PLAY;
                    end
                    else if(state == SET_BASS) begin
                        cntdown <= 32'd2100;
                        cmd <= 32'h02_03_70_00;
                        state <= SET_CLOCKF;
                    end
                    else begin //SET_VAL
                        cntdown <= 32'd2100;
                        cmd <= 32'h02_02_00_00;
                        state <= SET_BASS;
                    end
                    cntData <= 8'd32;
                    XCS <= 1'b1;
                    ena <= 1'b0;
                    SI <= 1'b0;
                end
                else if(DREQ) begin                     //д��SCIָ��ء���
                    XCS <= 1'b0;
                    ena <= 1'b1;
                    SI <= cmd[cntData - 1];
                    cntData <= cntData - 1'b1;
                end
                else begin                              //DREQ���ͣ���
                    XCS <= 1'b1;
                    ena <= 1'b0;
                    SI <= 1'b0;
                end
            endcase
        end
    end

    blk_mem_gen_0 id_0_wings_of_piano (
    .clka(clk),             // ʱ��
    .addra(addra),          // ��ַ
    .douta(data0)           // �������
    );
    blk_mem_gen_1 id_1_PaperPlane (
    .clka(clk),             // ʱ��
    .addra(addra),          // ��ַ
    .douta(data1)           // �������
    );
    blk_mem_gen_2 id_2_Pure_32 (
    .clka(clk),             // ʱ��
    .addra(addra),          // ��ַ
    .douta(data2)           // �������
    );
    blk_mem_gen_3 id_3_lady (
    .clka(clk),             // ʱ��
    .addra(addra),          // ��ַ
    .douta(data3)           // �������
    );
    blk_mem_gen_4 id_4_Tempestissimo (
    .clka(clk),             // ʱ��
    .addra(addra),          // ��ַ
    .douta(data4)           // �������
    );
/*    blk_mem_gen_5 id_5_merry_chirstmas (
    .clka(clk),             // ʱ��
    .addra(addra),          // ��ַ
    .douta(data5)           // �������
    );*/
endmodule
