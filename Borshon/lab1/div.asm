.MODEL SMALL
.STACK 100H
.DATA
    NUM1 DB ?
    NUM2 DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 
    
    MOV AH,1
    INT 21H  
    MOV CH,AL 
    SUB CH,30H
    
    
    INT 21H
    MOV CL,AL
    SUB CL,30H
    
    
    MOV AH,2
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    XOR AX,AX      
    MOV AL,CH
    XOR DX,DX
  
    DIV CL
    
    MOV CX,AX
    ADD CH,30H
    ADD CL,30H
  

    
    MOV AH,2
    MOV DL,CL
    INT 21H
    MOV DL,CH
    INT 21H   
    
      
    MOV AH,4CH 
    
    INT 21H
    
MAIN ENDP
    END MAIN
