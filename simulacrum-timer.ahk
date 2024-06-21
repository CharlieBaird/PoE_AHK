#Persistent
#NoEnv

; Initialize variables
isTimerRunning := false
InitialTime := 31 ; Set the initial time value here
XPos := 1800 ; Set X position near the right edge of a 1920x1080 monitor
YPos := 460 ; Set Y position near the top edge

~V::
    if (isTimerRunning) {
        return ; Exit if the timer is already running
    }
    isTimerRunning := true
    Gui, Destroy
    Gui, +AlwaysOnTop +ToolWindow -Caption
    Gui, Font, s20 ; Set the font size to 32
    Gui, Color, FFFFFF ; Set the background color to white
    Gui, Add, Text, vTimeText, %InitialTime% ; Add a text control to display the time
    Gui, Show, x%XPos% y%YPos% NoActivate ; Show the GUI at the specified position without activating it
    SetTimer, UpdateTooltip, 1000 ; Set a timer to update the tooltip every second
    TimeLeft := InitialTime ; Initialize the timer with the initial time value
    Return

UpdateTooltip:
    TimeLeft -= 1 ; Decrement the timer
    if (TimeLeft > 1) {
        GuiControl,, TimeText, %TimeLeft% ; Update the GUI text with the remaining time
    } else if (TimeLeft = 1) {
        GuiControl,, TimeText, %TimeLeft% ; Update the GUI text with the remaining time
        Gui, Color, c00FF00 ; Set the background color to white
        Gui, Show, x%XPos% y%YPos% NoActivate ; Show the GUI at the specified position without activating it
        SoundBeep, 300, 300 ; Play a sound with 300 Hz frequency for 300 ms
    } 
    else if (TimeLeft > -10) {
        GuiControl,, TimeText, ; Update the GUI text with the remaining time
    }
    else {
        ; Gui, Destroy ; Remove the GUI when the timer reaches 0
        ; Gui, Font, c00FF00 ; Change the font color to green
        Gui, Color, DDDDDD ; Set the background color to white
        GuiControl,, TimeText, ; Update the GUI text with the remaining time
        SetTimer, UpdateTooltip, Off ; Stop the timer
        isTimerRunning := false ; Reset the flag
    }
    Return

^F3::
    if (isTimerRunning) {
        Gui, Destroy ; Destroy the GUI
        SetTimer, UpdateTooltip, Off ; Stop the timer
        isTimerRunning := false ; Reset the flag
    }
    else {
        Gui, Destroy ; Destroy the GUI
    }
    Return