;Hello World project

	AREA HELLOWORLD, CODE, READONLY
	ENTRY
	EXPORT __main
		
__main
	mov r5, #0x1234
	mov r3, #0x1234
	add r6,r5,r3
	
STOP B STOP
	END
		
	
	
