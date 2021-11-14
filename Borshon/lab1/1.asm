
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
    MOV NUM1,AL
    INT 21H
    MOV NUM2,AL 
    
    
    ADD AL,NUM1
    SUB AL,30H
    MOV DL,AL
    MOV AH,2
    INT 21H
    
      
    
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
     
    
     
    MOV BL,NUM2  
    SUB BL,NUM1
    ADD BL,30H
    MOV DL,BL
    INT 21H 
    
    
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H  
    
           
           
           
          SUB NUM1,30H
          SUB NUM2,30H
          
          MOV AL,NUM1
          MOV BL,NUM2
          MUL BL
          MOV CX,AX
          ADD CX,30H
          
          MOV AH,2
          MOV DX,CX
          INT 21H  
          
          
          MOV DL,0DH
          INT 21H
          MOV DL,0AH
          INT 21H 
           
          
            SUB NUM1,30H
            SUB NUM2,30H 
            
            
            
          
            XOR AX,AX      
            MOV AL,NUM1
            MOV CL,NUM2
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




