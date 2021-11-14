.MODEL SMALL
.STACK 100H
.DATA
    ARRAY DB 2,3,1
    

.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA SI,ARRAY
    MOV CX,3
    MOV BL,[SI]
    
    REPEAT:
    CMP [SI],BL
    JGE JUMP1
    
    
    JUMP2:
    INC SI
    LOOP REPEAT
    
    
    ADD BL,48
    MOV DL,BL
    MOV AH,02H
    INT 21H
    
    
    JUMP1:
    MOV BL,[SI]
    JMP JUMP2
    

     MOV AH, 4CH                 
     INT 21H
   MAIN ENDP
END MAIN