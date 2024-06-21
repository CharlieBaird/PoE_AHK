
F2::
Send {F9}
Pxc1 = 0
Loop {
	PixelGetColor, Pxc1, 1727, 69, RGB
    
    

    if Pxc1 = 0x210D01
    {
        Sleep 100
        Send {Enter}
        Break
    }
}

Pxc2 = 0
Loop {
	PixelGetColor, Pxc2, 278, 1065, RGB

    if Pxc2 = 0x29292D
    {
        Sleep 105
        Send {F5}
        Break
    }
}

Return