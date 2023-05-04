#include <RTL.h>
#include <gpio.h>

/*Modified the function to a task*/
void Turn_GreenLed_On(void){

		for(;;){
			gpio_set(P_LED_G,LED_ON);
		}

}

/*Modified the function to a task*/
void Turn_GreenLed_Off(void){

		for(;;){
			gpio_set(P_LED_G,LED_OFF);
		}

}

/*----------------------------------------------------------------------------
  The first task run by the OS and should do the initialization for other tasks
 *----------------------------------------------------------------------------*/
__task void init (void) {
	
	/*Create Tasks here*/
  os_tsk_delete_self (); // Delete the init(self) task
}

int main(void)
{
		gpio_set_mode(P_LED_G,Output);
		gpio_set_mode(P_LED_R,Output);
		gpio_set(P_LED_R,LED_ON);
		os_sys_init(init);	
}

// *******************************ARM University Program Copyright © ARM Ltd 2014*************************************   
