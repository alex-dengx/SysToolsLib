		page	,132
		TITLE	C library emulation, not relying on MS-DOS.
;*****************************************************************************;
;									      ;
;   FILE NAME:	    anlshl.asm						      ;
;									      ;
;   DESCRIPTION:    C compiler long math library			      ;
;									      ;
;   NOTES:								      ;
;									      ;
;   HISTORY:								      ;
;    1995/11/06 JFL Created this file.					      ;
;									      ;
;      (c) Copyright 1995-2017 Hewlett Packard Enterprise Development LP      ;
; Licensed under the Apache 2.0 license - www.apache.org/licenses/LICENSE-2.0 ;
;*****************************************************************************;

		.model	small, C

		.code

;-----------------------------------------------------------------------------;
;									      ;
;   Function:	    _aNlshl						      ;
;									      ;
;   Description:    Signed long left shift				      ;
;									      ;
;   Parameters:     DX:AX   Data					      ;
;		    CL	    Shift count 				      ;
;									      ;
;   Returns:	    DX:AX   The result					      ;
;									      ;
;   Notes:								      ;
;									      ;
;   Regs altered:   CX							      ;
;									      ;
;   History:								      ;
;									      ;
;    1995/08/30 JFL Created this routine.				      ;
;									      ;
;-----------------------------------------------------------------------------;

_aNlshl 	proc	public

		xor	ch, ch
		jcxz	done
encore:
		sal	ax, 1
		rcl	dx, 1
		loop	encore
done:
		ret

_aNlshl 	endp

END
