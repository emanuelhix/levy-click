; made by the p-man :sunglasses: 
#include <MsgBoxConstants.au3>

HotKeySet("{Esc}", "toggle")
Func toggle()
   Exit
EndFunc

Func CheckTime($nHour)
    If @Hour >= $nHour Then
        Return true
    Else
        Return false
    EndIf
EndFunc

Func Main()
    MsgBox($MB_SYSTEMMODAL, "Program running!", "After the autoclicking is finished, press ESC to kill the program.", 10)
    While true
	; Start autoclick at certain time
        If CheckTime(10) Then
		MouseClick("left")
        EndIf
	sleep(0)
    WEnd
EndFunc

; Initiate Script
Main()
