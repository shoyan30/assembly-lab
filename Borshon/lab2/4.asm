.MODEL SMALL
.STACK 100H
.DATA
  STR1 DB 0AH,0DH,'DIGIT','$'
  STR2 DB 0AH,0DH,'NOT DIGIT','$'
  
.CODE

    
    PROC1 PROC 
    MOV Cl,Al
    CMP Cl,'9'
    JLE PRINT1
    JGE PRINT2
    
    PRINT1:
    MOV AH,9
    LEA DX,STR1
    INT 21H
    JMP E1
    
    PRINT2:
    MOV AH,9
    LEA DX,STR2
    INT 21H
    JMP E1     
    RET
    PROC1 ENDP
    
    MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX 
    MOV AH,1
    INT 21H 
    
    CALL PROC1
    E1:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
