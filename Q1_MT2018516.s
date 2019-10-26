     AREA     fibonicci, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
		MOV  R0, #0x00000000    
		           ; t1 value
	    MOV  R1, #0x00000001    
		           ; t2 value
		MOV  r6, #0x0000000A
		; logic implemented 
		;for (i = 1; i <= r6; ++i)
     ;{
     ;  r2= R0 + R1;
     ;   R0 = R1
     ;   R1 = r2;
     ;}
   
loop    ADD r2,R0,R1 ;
		MOV R0,R1
		MOV R1,r2
		SUB r6, r6, #1 ; decrement r6
		CMP r6,#0 
        BGT loop ; if r6 is greater than 0
stop    B stop ; stop program
     ENDFUNC
     END 
