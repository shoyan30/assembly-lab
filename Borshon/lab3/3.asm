.MODEL SMALL
.STACK 100H
.DATA
  STR1 DB 0AH,0DH,'odd number','$'
  STR2 DB 0AH,0DH,'even number','$'
  
 
.CODE
MAIN PROC 
    MOV AX,@DATA
    MOV DS,AX
 
    
    MOV AH,1
    INT 21H 
    MOV CX,AX 
    
    TEST AX,1
    JZ BELOW
    JNZ NEXT
    
    BELOW:
    MOV AH,9
    LEA DX,STR2  
    INT 21H
    JMP E1
    NEXT:
    MOV AH,9
    LEA DX,STR1  
    INT 21H
    JMP E1
     
    
     
    E1:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
