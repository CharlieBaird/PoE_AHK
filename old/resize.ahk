#Persistent
window := "ahk_class POEWindowClass"

#If WinActive(window)
*F10::
    WinGetPos,,, currentWidth, currentHeight, % window
	targetHeight := (currentWidth / currentHeight = 16 / 9) ? 7 : 9
	WinMove, % window,,,,, % (A_ScreenWidth / 16) * targetHeight
return