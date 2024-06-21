On = 0
XButton2::
    If On == 1
    {
        return
    }

    On = 1
        
    Send {LControl Down}
    while GetKeyState("XButton2","P")
    {
        Click
        Random ranSleep, 30, 40
        sleep %ranSleep%
    }
    Send {LControl Up}
    On = 0
    return