TITLE Mean4
INCLUDE Irvine32.inc

.data
array DWORD 10h,20h,30h,40h
; 00 00 00 10 -> 10 00 00 00
; 12 34 56 78 -> 78 56 34 12
.code
main PROC
   mov eax, array[0]
   add eax, array[4]
   add eax, array[8]
   add eax, array[12]
   shr eax, 2	; divide by 4
   call WriteInt
exit
main ENDP
END main

