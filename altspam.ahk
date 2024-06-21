F4::
Reload

F3::
Pxc1 = 0
Pxc2 = 0
Text = Active

; ; Scour
; Send {Click 441 515 Right}

; Random ranSleep, 100, 250
; sleep %ranSleep%

; Send {Click 368 541 Left}

; ; Transmute
; Random ranSleep, 100, 250
; sleep %ranSleep%

; Send {Click 50 275 Right}

; Random ranSleep, 100, 250
; sleep %ranSleep%

; Send {Click 368 541 Left}

Random ranSleep, 100, 250
sleep %ranSleep%


Random x, 110, 115
Random y, 275, 278

Send {Click %x% %y% Right}
; Send {Click 154 616 Right}
; Send {Click 154 676 Right}
; Send {Click 205 616 Right}
; Send {Click 205 676 Right}
Send {LShift Down}
Random x, 365, 368
Random y, 539, 541
Loop {

    PixelGetColor, Pxc2, 577, 613, RGB
    if Pxc2 != 0x1D2423
    {
        Break
    }

    Send {Click %x% %y% Left}


    Random ranSleep, 150, 300
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

; Aug
Random x, 226, 228
Random y, 329, 331
Send {Click %x% %y% Right}

Random ranSleep, 100, 250
sleep %ranSleep%

Random x, 366, 368
Random y, 539, 541
Send {Click %x% %y% Left}

; ; Regal
; Random ranSleep, 100, 250
; sleep %ranSleep%

; Send {Click 430 280 Right}

; Random ranSleep, 100, 250
; sleep %ranSleep%

; Send {Click 368 541 Left}

Return