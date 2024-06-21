F2::
Return

F3::
Send {F9}
Sleep 500
Send {Enter}

Pxc2 = 0
Loop {
	PixelGetColor, Pxc2, 278, 1065, RGB

    if Pxc2 = 0x28282B
    {
        Sleep 105
        Send {F5}
        Break
    }
}

Return