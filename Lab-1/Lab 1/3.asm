.MODEL SMALL
.STACK 100H
.DATA
    MSG1 DB 0AH,0DH,'Enter a uppercase letter(A-E): $'
    MSG2 DB 0AH,0DH,'OUTPUT : '
    RES DB ?,'$'

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,9
    LEA DX,MSG1
    INT 21H
    
    MOV AH,1
    INT 21H
    SUB AL,14 
    MOV BL,AL
    
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    MOV AH,9
    LEA DX,MSG2
    INT 21H
   
    
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
     
    
    MOV AH,4CH
    INT 21H
    
    MAIN ENDP
END MAIN