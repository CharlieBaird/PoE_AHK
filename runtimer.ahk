CoordMode, Mouse, Screen

F3::
    mousegetpos, x, y 
    Sleep 10
    Send {Click 1417 1045 Left}
    sleep 10
    ; MouseMove, 1568, 1045, 10
    ; MouseMove, 700, 500, 10
    Send {Click 1568 1045 Left}
    sleep 10
    MouseMove, %x%, %y%
return