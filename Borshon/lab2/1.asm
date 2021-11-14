.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
      
      
      MOV BL,'0'
    
   
       P1:
       MOV AH,1
       INT 21H
       
       CMP AL,13
       JE END 
       
       
       
       
       INC BL
       JMP P1
       
       
        
        
        
       END:
       
      
       MOV AH,2
       MOV DL,BL
       INT 21H 
    
    
    

     
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN





