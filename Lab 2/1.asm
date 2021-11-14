.model small
.stack 100h
.data
.code
main PROC
	MOV BL,'0'
input:
	MOV AH,1
	INT 21h
	CMP AL,13
	JE exit
	
	CMP AL, 20h
	
	
	INC BL
	JMP input
exit:
	MOV AH,2
	MOV DL,10
	INT 21h
	MOV DL,13
	INT 21h
	
	MOV AH,2
	MOV DL, BL
	INT 21h
	
	MOV AH,4ch
	INT 21h
	main ENDP
END main