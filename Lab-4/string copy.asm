    
.MODEL SMALL
.STACK 100H
.DATA
 STRING_1 DB 'EXAM$'
 STRING_2 DB 5 DUP('$')  
.CODE
MAIN PROC  
        MOV AX,@DATA
        MOV DS,AX
        MOV ES,AX
        
        
        
        LEA SI,STRING_1
        LEA DI,STRING_2 
        
        
        
        CLD        
        
        MOV CX,5
        REP MOVSB
         
       
       
        LEA DX,STRING_2
        MOV AH,9          
        INT 21H
        
        
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN