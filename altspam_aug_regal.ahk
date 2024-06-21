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

; Transmute
Random ranSleep, 100, 250
sleep %ranSleep%

Send {Click 50 275 Right}

Random ranSleep, 100, 250
sleep %ranSleep%

Send {Click 368 541 Left}

Random ranSleep, 100, 250
sleep %ranSleep%

; Click alts
Send {Click 112 276 Right}
; Send {Click 154 616 Right}
; Send {Click 205 616 Right}
; Send {Click 205 676 Right}
; Send {Click 154 676 Right}

Random ranSleep, 150, 300
sleep %ranSleep%
Send {LShift Down}
Loop {

    PixelGetColor, Pxc2, 46, 30, RGB
    if Pxc2 != 0x090909
    {
        Break
    }

    PixelGetColor, Pxc1, 375, 471, RGB
    if Pxc1 = 0xE7B477
    {
        Break
    }

    Send {Click 368 541 Left}


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

Send {LShift Up}

; Aug
Send {Click 227 330 Right}

Random ranSleep, 100, 250
sleep %ranSleep%

Send {Click 368 541 Left}

; Regal
Random ranSleep, 100, 250
sleep %ranSleep%

Send {Click 430 280 Right}

Random ranSleep, 100, 250
sleep %ranSleep%

Send {Click 368 541 Left}

Return