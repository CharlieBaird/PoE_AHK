#Persistent
window := "ahk_class POEWindowClass"

#If WinActive(window)
*F10::
    WinGetPos,,, currentWidth, currentHeight, % window
	targetHeight := 9
	WinMove, % window,,0,0,, % (A_ScreenWidth / 16) * targetHeight
return