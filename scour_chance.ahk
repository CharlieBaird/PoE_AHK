F3::
Return

F5::
Reload

F10::
Pxc2 = 0

MouseGetPos, item_slot_x, item_slot_y
chance_slot_x := item_slot_x + 60
chance_slot_y := item_slot_y
scour_slot_x := item_slot_x + 60
scour_slot_y := item_slot_y + 60

Loop, 11 {
    PixelGetColor, Pxc2, 577, 613, RGB
    if Pxc2 != 0x1D2422
    {
        Break
    }
    Loop, 19 {
        PixelGetColor, Pxc2, 577, 613, RGB
        if Pxc2 != 0x1D2422
        {
            Break
        }

        MouseMove, scour_slot_x, scour_slot_y
        Sleep 10
        SendEvent {Click, Right}
        Sleep 35
        ; 
        MouseMove, item_slot_x, item_slot_y
        Sleep 10
        SendEvent {Click, Left}
        Sleep 35
        ; 
        MouseMove, chance_slot_x, chance_slot_y
        Sleep 10
        SendEvent {Click, Right}
        Sleep 35
        ; 
        MouseMove, item_slot_x, item_slot_y
        Sleep 10
        SendEvent {Click, Left}
        Sleep 35
    }
    scour_slot_x := scour_slot_x + 54
    chance_slot_x := chance_slot_x + 54
}

