.MODEL SMALL
.STACK 100H
.DATA
STR1 DB 0DH,0AH ,' Enter 1st number :  $'
STR2 DB 0DH,0AH ,' Enter 2st number :  $'

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,STR1
    MOV AH,09H
    INT 21H 
    
    
    MOV AH,1
    INT 21H
    SUB AL,48  
    MOV BL,AL
    
    MOV DL,10
    MOV AH,2h
    INT 21h
    
    
    LEA DX,STR2
    MOV AH,09H
    INT 21H
    
    MOV AH,1h
    INT 21h
    
    SUB AL,48
    
    ADD BL,AL
    ADD BL,48
    
    MOV DL,10
    MOV AH,2h
    INT 21h
    
    MOV DL,BL
    MOV AH,2h
    INT 21h
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP    
END MAIN