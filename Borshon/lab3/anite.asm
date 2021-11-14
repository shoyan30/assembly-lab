.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H
    MOV CL,AL
    
    CMP BL,BH
    JGE A
    
    B:
    CMP BH,CL
    JGE C
    MOV AH,2
    MOV DL,CL
    INT 21H
    JMP EXIT 
    
    C:
    MOV AH,2
    MOV DL,BH
    INT 21H
    JMP EXIT
    
    A:
    CMP BL,CL
    JGE D
    MOV AH,2
    MOV DL,CL
    INT 21H
    JMP EXIT
    
    D:
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
