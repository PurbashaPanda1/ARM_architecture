     AREA     largestOFthreeNUMBERS, CODE, READONLY
     EXPORT __main
     ENTRY 
__main  FUNCTION	
; IGNORE THIS PART 	
		MOV  r0, #0x00000001    
		           ; a value
		MOV r1 , #0x00000006	
		MOV r2,  #0x00000005;
		
        CMP r0,r1;
		ITE LT
        SUBLT r4 , r4, #0 ; do nothing
        MOVGE r4, r0 ; move the larger value to r4
		        

		CMP r1,r0;
		ITE LT
        SUBLT r4 , r4, #0 ; do nothing
        MOVGE r4, r1 ; move the larger value to r4
		
        CMP r4,r2;
		ITE LT
        SUBLT r4 , r4, #0 ; do nothing
        MOVGE r4, r4 ; move the larger value to r4
		        

		CMP r2,r4;
		ITE LT
        SUBLT r4 , r4, #0 ; do nothing
        MOVGE r4, r2 ; move the larger value to r4
				

stop        B stop  ; stop program
        endfunc
      end

  

	   