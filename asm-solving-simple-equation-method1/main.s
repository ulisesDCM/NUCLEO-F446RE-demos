; P = Q + R + S
; Let Q = 2, R=4, S=5

Q		EQU		2
R		EQU		4
S		EQU 	5
	
		AREA	mycode,CODE,READONLY
		ENTRY
		EXPORT __main
		
__main
		MOV		R1,#Q
		MOV		R2,#R
		MOV 	R3,#S
		
		ADD		R0,R1,R2
		ADD		R0,R0,R3
		
stop	B		stop

		END
	