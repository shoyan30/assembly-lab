.model     small
.stack 100h     
.data
    A1 DB 'REZWAN$'
    MSG2 DB '??????$'
   .code
main PROC
    MOV AX,@data
    MOV DS,AX
    MOV ES,AX
    
    LEA SI, A1+5
    LEA DI, MSG2
    STD
    MOV CX,6
    
    CALL fun1
main ENDP

fun1 PROC

move:
    MOVSB
    ADD DI,2
    LOOP move
    JMP dis
dis: 
    LEA DX,A1
    MOV AH,9
    INT 21h
    MOV DL,10
    MOV AH,2
    INT 21h
    MOV DL,13
    MOV AH,2
    INT 21h
    
    LEA DX,MSG2
    MOV AH,9
    INT 21h
    JMP endl
endl:
    MOV AH,4ch
    INT 21h
    
    RET

fun1 ENDP

END main
   