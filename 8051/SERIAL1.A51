MOV TMOD, #20H
MOV TH1, #0FDH
MOV SCON, #50H
SETB TR1
AGAIN: MOV A, #'N'
	   ACALL TRANS
	   MOV A, #'A'
	   ACALL TRANS
	   MOV A, #'N'
	   ACALL TRANS
	   MOV A, #'D'
	   ACALL TRANS
	   MOV A, #'I'
	   ACALL TRANS
	   MOV A, #'N'
	   ACALL TRANS
	   MOV A, #'I'
	   ACALL TRANS
	   MOV A, #' '
	   ACALL TRANS
	   SJMP AGAIN
TRANS: MOV SBUF, A
HERE: JNB TI, HERE
	  CLR TI
	  RET
END