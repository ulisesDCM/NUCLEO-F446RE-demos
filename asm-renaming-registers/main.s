; RN --> For registers
; EQU --> For values

VAL1	RN		R1
VAL2 	RN		R2
SUM		RN		R3

		AREA RN,CODE,READONLY
		ENTRY
		EXPORT __main

__main
		MOV	VAL1,#0X25
		MOV VAL2,#0X34
		ADD SUM,VAL1,VAL2

Stop B Stop	
	END