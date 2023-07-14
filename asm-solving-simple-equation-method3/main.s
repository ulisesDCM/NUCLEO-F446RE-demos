; P = Q + R + S
; Let Q = 2, R=4, S=5
	
	AREA	mycode, CODE, READONLY
		ENTRY
		EXPORT __main

__main
		ADRL	R4,vals	;R4 points to vals area.
		LDR		R1,[R4,#Q]	; Load Q=2 into R1
		LDR		R2,[R4,#R]	; Load R=4 into R2
		LDR		R3,[R4,#S]	; Load S=5 into R3
		
		ADD		R0,R1,R2
		ADD		R0,R0,R3
		
		STR		R0,[R4,#P]	
		
STOP	B	STOP

P		EQU		0
Q		EQU		4
R		EQU		8
S		EQU		12

	AREA	mycode, DATA, READONLY
vals	SPACE	4
		DCD		2
		DCD		4
		DCD		5
		ALIGN
	END	