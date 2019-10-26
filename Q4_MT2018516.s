     AREA     largestOFthreeNUMBERS, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
		MOV  r0, #0x00000001    
		          
		MOV r1 , #0x00000006	
		MOV r2,  #0x00000005;
		
        CMP r0,r1;
		ITE EQ
        MOVEQ r4 , #1
        BNE loop		
		B stop		;first if then else and then goes into the loop

loop	CMP r1, #3
		ITE LT
		LSLLT r2, #1
		MOVGE r2, #2
				

stop        B stop  ; stop program
        endfunc
      end

  

	   