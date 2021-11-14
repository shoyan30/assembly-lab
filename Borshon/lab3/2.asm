.MODEL SMALL
.STACK 100H
.DATA
 STRING_1 DB 'HELLO$'
 STRING_2 DB 6 DUP ('$')  
.CODE
MAIN PROC  
        MOV AX,@DATA
        MOV DS,AX
        MOV ES,AX
        
        
        LEA SI,STRING_1+4
        LEA DI,STRING_2
        
        
        STD
        
        MOV CX,5
        
   MOVE:
        MOVSB
        ADD DI,2
        LOOP MOVE
       
       
       
       
        LEA DX,STRING_2
        MOV AH,9
        INT 21H
        
        
        
        MOV AH,4CH
        INT 21H
        
        MAIN ENDP
    END MAIN
    


