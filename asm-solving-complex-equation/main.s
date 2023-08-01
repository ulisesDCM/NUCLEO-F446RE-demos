;	(A + 8B + 7C - 27) /4 
;	Led A=25, B=19, C=99

			AREA mycode, CODE, READONLY
			ENTRY
			EXPORT __main

__main
			MOV		R0,#25				;R0 = A
			MOV 	R1,#19				;R1 = B			
			ADD		R0,R0,R1,LSL #3		;R0 = A + 8B
			MOV		R1,#99
			MOV 	R2,#7
			MLA		R0,R1,R2,R0			;R0 = (R1*R2)+R0
			SUBS	R0,R0,#27
			MOV		R0,R0,ASR #2		;R0 = R0 >> 2^2 = R0/4		

STOP		B	STOP
			END