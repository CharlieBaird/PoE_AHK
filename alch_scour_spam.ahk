; #Requires AutoHotkey v2.0

F4::
Reload

F3::
Pxc1 = 0
Pxc2 = 0
Text = Active

; Scour
Send {Click 441 515 Right}

Random ranSleep, 100, 250
sleep %ranSleep%

Send {Click 368 541 Left}

Random ranSleep, 100, 250
sleep %ranSleep%

Loop {

    PixelGetColor, Pxc2, 577, 613, RGB
    if Pxc2 != 0x1D2422
    {
        Break
    }

    PixelGetColor, Pxc1, 375, 471, RGB
    if Pxc1 = 0xE7B477
    {
        Break
    }

    ; content

    ; Scour
    Send {Click 441 515 Right}

    Random ranSleep, 100, 250
    sleep %ranSleep%

    Send {Click 368 541 Left}

    ; Alch
    Random ranSleep, 100, 250
    sleep %ranSleep%

    Send {Click 491 275 Right}

    Random ranSleep, 100, 250
    sleep %ranSleep%

    Send {Click 368 541 Left}

    ;content


    Random ranSleep, 150, 300
    sleep %ranSleep%

    mousegetpos, x, y
    tooltip, %Text%, (x + 20), (y + 20), 1
    PixelGetColor, Pxc1, 375, 471, RGB

    if Pxc1 = 0xE7B477
    {
        Break
    }
}

Return