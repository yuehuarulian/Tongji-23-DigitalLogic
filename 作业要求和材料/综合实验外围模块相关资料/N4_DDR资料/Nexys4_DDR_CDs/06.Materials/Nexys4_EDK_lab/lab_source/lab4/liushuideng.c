/***************************** Include Files *********************************/
#include "xparameters.h"
#include "xgpio.h"
#include "led_ip.h"
#include "xstatus.h"


/************************** Constant Definitions *****************************/

int main(void)
{
	XGpio led;
	int Status;

	Status = XGpio_Initialize(&led, XPAR_LED_IP_0_DEVICE_ID);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	XGpio_SetDataDirection(&led, 1, 0);

	int i,j,k;
	int t;               //���ڼ�����(��Χ0~199)

	int duty_led[16];    //LED��ռ��(��Χ0~200;��ֵԽ��,LEDԽ��;��ͬ)
	int duty_led_buf[16];//����

	int num[16];
	int reg=0b0000000000000001;

	for(i=0;i<16;i++){
		if(i==0)
			num[i]=reg;
		else{
			reg=reg<<1;
			num[i]=reg;
		}
	}

 	char a;

 	while(1){
 	    print("please make the choice!\n\r");
        a=inbyte();      //�������Դ��ڵ�����

		for(i=0;i<16;i++)
		   duty_led[i]=0;

		duty_led_buf[0] = 80;
		duty_led_buf[1] = 150;
		duty_led_buf[2] = 300;
		duty_led_buf[3] = 600;
		duty_led_buf[4] = 300;
		duty_led_buf[5] = 150;
		duty_led_buf[6] = 80;
		duty_led_buf[7] = 0;
		duty_led_buf[8] = 0;
		duty_led_buf[9] = 0;
		duty_led_buf[10] = 0;
		duty_led_buf[11] = 0;
		duty_led_buf[12] = 0;
		duty_led_buf[13] = 0;
		duty_led_buf[14] = 0;
		duty_led_buf[15] = 0;

       for( j = 0 ; j<50 ; j++ ){         //������ˮ�Ƽ��ʱ��
	      for( i = 0 ; i<20 ; i++ ){      //������ˮ���ٶ�
	         for( t = 0 ; t<200  ; t++ ){ //����ռ�ձ�,����ÿ��LED������
	              if(a=='1')        //���ô�������Ϊ1��ˮ�ƴ�����������
	              {
                    for(k=0;k<16;k++){
                      if(t<duty_led[k])
                    	LED_IP_mWriteReg(XPAR_LED_IP_0_BASEADDR,0,num[k]);
                      else      //0�������1�������
                    	LED_IP_mWriteReg(XPAR_LED_IP_0_BASEADDR,0,0b0000000000000000);
                     }
	              }
	              else             //���ô�������Ϊ����ʱ����ˮ�ƴ�����������
	              {
	            	for(k=0;k<16;k++){
	            	  if(t<duty_led[k])
	            		 LED_IP_mWriteReg(XPAR_LED_IP_0_BASEADDR,0,num[15-k]);
	            	  else
	            		  LED_IP_mWriteReg(XPAR_LED_IP_0_BASEADDR,0,0b0000000000000000);
	            	  }
	              }
	          }
	    }

	  //ռ�ն����ƶ�
	    for(i=0;i<16;i++){
	    	if(i==15)
	    		duty_led[i]=duty_led_buf[0];
	    	else
	    		duty_led[i]=duty_led[i+1];
	    }

	    for(i=0;i<16;i++){
	   	   if(i==15)
	   	       duty_led_buf[i]=0;
	   	   else
	   	       duty_led_buf[i]=duty_led_buf[i+1];
	   	}
	 }
  }
 	cleanup_platform();
}

