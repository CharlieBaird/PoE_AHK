; "\+1 to level|life|mana"

rand(min, max)
{
    random, r, %min%, %max%
    return r
}

F4::
Reload

F3::
Pxc1 = 0
Pxc2 = 0
Pxc3 = 0
HeldDown := false
Text = Active
Loop {
    PixelGetColor, Pxc2, 577, 613, RGB
    if Pxc2 != 0x1D2422
    {
        Break
    }

    if !HeldDown
    {
        Send {LShift Down}
        mouseclick, right, % rand(213, 215), % rand(671, 673), 1, 2
        HeldDown := true
        
        Random ranSleep, 40, 80
        sleep %ranSleep%
    }

    mouseclick, left, % rand(325, 335), % rand(505, 515), 1, 2
    Random ranSleep, 300, 400
    sleep %ranSleep%

    PixelGetColor, Pxc3, 337, 205, RGB
    if Pxc3 != 0x282F2A
    {
        PixelGetColor, Pxc1, 375, 466, RGB
        if Pxc1 = 0xE7B477
        {
            Break
        }
        Continue
    }

    Send {LShift Up}
    HeldDown := false

    mouseclick, right, % rand(226, 228), % rand(329, 331), 1, 2

    Random ranSleep, 40, 80
    sleep %ranSleep%

    mouseclick, left, % rand(325, 335), % rand(505, 515), 1, 2

    mousegetpos, x, y
    tooltip, %Text%, (x + 20), (y + 20), 1

    Random ranSleep, 300, 350
    sleep %ranSleep%

    PixelGetColor, Pxc1, 375, 466, RGB
    if Pxc1 = 0xE7B477
    {
        Break
    }
}

Send {LShift Up}
Return