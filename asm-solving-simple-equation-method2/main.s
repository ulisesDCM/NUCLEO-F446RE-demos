;	P = Q + R + S
;	Let	Q=2, R=4, S=5

	AREA	mydata, DATA, READONLY
P	SPACE	4	; Reserve 4 bytes of memory.
Q	DCD		2	; Create variable Q with initial value = 0x00000002.
R	DCD		4	; Create variable R with initial value = 0x00000004.
S	DCD		5	; Create variable S with initial value = 0x00000005.
		
	
	AREA	mycode, CODE, READONLY
			ENTRY
			EXPORT	__main
				
__main
			LDR		R1,Q
			LDR		R2,R
			LDR		R3,S
			ADD		R0,R1,R2
			ADD		R0,R0,R3
STOP		b 	STOP
			END