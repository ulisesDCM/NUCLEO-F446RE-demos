#include <RTL.h>

/*Modified the function to a task*/
void Turn_GreenLed_On(void){

		for(;;)
		{
		
		}

}

/*Modified the function to a task*/
void Turn_GreenLed_Off(void){

		for(;;)
		{

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
		os_sys_init(init);	
}

// *******************************ARM University Program Copyright © ARM Ltd 2014*************************************   
