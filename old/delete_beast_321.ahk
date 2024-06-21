F5::
Reload

F10::
Pxc2 = 0
Loop {

    PixelGetColor, Pxc2, 536, 304, RGB
    if Pxc2 != 0xA8988C
    {
        Break
    }

    MouseMove, 85, 239
    Sleep 25
    SendEvent {Click, Left}
    Sleep 100
    SendEvent {Click, 740, 580}
    Sleep 50
}