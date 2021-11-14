.MODEL SMALL
.STACK 100H
.DATA
STR1 DB 0DH,0AH ,' Enter a number (a-e):  $'
STR2 DB 0DH,0AH ,' Output:  $'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,STR1
    MOV AH,09H
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    LEA DX,STR2
    MOV AH,09H
    INT 21H
    
    ADD BL,48
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP    
END MAIN