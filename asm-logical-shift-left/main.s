	
		AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main

__main	
		MOV		R0,#0x11
		LSL		R1,R0,#1	;shift 1 bit left = 34
		LSL		R2,R1,#1	;shift 1 bit left = 68
		
		
stop	B	stop
		END	