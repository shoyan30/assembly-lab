.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC    
    MOV CX,5 
    
INPUT: 

   MOV AH,1
   INT 21H
   PUSH AX
   
   LOOP INPUT   
    
    
   
   MOV AH,2
   MOV DL,10  
   INT 21H  
   MOV DL,13  
   INT 21H
   
   MOV CX,5
TOP: 


  POP DX
  INT 21H
  LOOP TOP   
    
    
EXIT:    
    
    MOV AH,4CH
    INT 21H
MAIN ENDP 
    END MAIN