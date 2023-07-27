
		AREA mycode, CODE, READONLY
		ENTRY
		EXPORT __main

__main
		LDR		R0,=0xF62562FA
		LDR		R1,=0xF412963B
		
		MOV		R2,#0x35
		MOV 	R3,#0x21
		
		;When the system initializes starts with the C flag in high.
		ADDS	R5,R2,R3	;R5=R1+R0
		ADC		R6,R3,R2	;R6=R3+R2+carry bit(flag)
		
stop 	B	stop
		END