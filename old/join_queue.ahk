#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#MaxThreadsPerHotkey 2

RandSleep(x,y) {
Random, rand, %x%, %y%
Sleep %rand%
}

`::
	toggle:=!toggle
	While toggle{
	  Send {Enter}
	  RandSleep(500,1000)
	}
Return

^!p::Pause