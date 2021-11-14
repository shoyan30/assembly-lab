Zarin Rafah Chowdhury
.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    
    MOV AH,1
    INT 21H
    SUB AL,48  
    MOV BL,AL 
    
    MOV DL,10
    MOV AH,2h
    INT 21h
 
    MOV AH,1
    INT 21H   
    SUB AL,48
    MOV CL,AL 
    
     MOV DL,10
    MOV AH,2h
    INT 21h
        
 //addition:
    MOV DL,0   
    ADD DL,BL 
    ADD DL,CL 
    ADD DL,48  
 
    MOV AH,2h
    INT 21h  
                 
    MOV DL,10
    MOV AH,2h
    INT 21h
    
//subtraction:  
            
    MOV DL,0   
    ADD DL,CL 
    SUB DL,BL 
    ADD DL,48  
  
    MOV AH,2h
    INT 21h 
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP    
END MAIN