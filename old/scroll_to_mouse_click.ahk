; F3::
; Send, {Ctrl Down}
; Return

; F4::
; Send, {Ctrl Up}
; Return

*WheelDown::
    ; Send, {LButton Down}
    ; Sleep, 10
    ; Send {LButton Up}
    Send {Ctrl Down}{LButton}
Return

; WheelDown::LButton