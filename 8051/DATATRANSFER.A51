MOV DPTR, #1000H
MOVX A, @DPTR
MOV R0, A
INC DPTR
MOVX A, @DPTR
XCH A, R0
INC DPTR
MOVX @DPTR, A
CPL A
INC DPTR
MOVX @DPTR, A
SWAP A
INC DPTR
MOVX @DPTR, A
CLR A
INC DPTR
MOVX @DPTR, A
END