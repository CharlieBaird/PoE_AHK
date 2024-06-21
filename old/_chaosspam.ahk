F4::
Reload

F3::
Pxc1 = 0
Pxc2 = 0
Text = Active
Send {Click 275 600 Right}
Send {LShift Down}
Loop {

    PixelGetColor, Pxc2, 577, 613, RGB
    if Pxc2 != 0x1D2422
    {
        Break
    }

    Send {Click 368 541 Left}


    Random ranSleep, 350, 400
    sleep %ranSleep%

    mousegetpos, x, y
    tooltip, %Text%, (x + 20), (y + 20), 1
    PixelGetColor, Pxc1, 375, 466, RGB

    if Pxc1 = 0xE7B477
    {
        Break
    }
}

Send {LShift Up}

; Send {Click 227 330 Right}

; Random ranSleep, 100, 250
; sleep %ranSleep%

; Send {Click 368 541 Left}

; Random ranSleep, 100, 250
; sleep %ranSleep%

; Send {Click 430 280 Right}

; Random ranSleep, 100, 250
; sleep %ranSleep%

; Send {Click 368 541 Left}

Return