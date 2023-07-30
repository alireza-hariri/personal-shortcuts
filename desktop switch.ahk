#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.









SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance force

#s::run, "C:\Program Files\Everything\Everything.exe";


#,::
!,::
Ralt & ,::
send, {Control down}{LWinDOWN}{Left}{LWinUp}{Control up}
return


#.::
!.::
Ralt & .::
send, {Control down}{LWinDOWN}{Right}{LWinUp}{Control up}
return


#n::
!n::
Ralt & n::
send, {Control down}{LWinDOWN}d{LWinUp}{Control up}
return


#c::
!c::
Ralt & c::
send, {Control down}{LWinDOWN}{F4}{LWinUp}{Control up}
return

^+s::
run, "C:\Users\alireza\Documents\my-path"
return

Ralt::
send,#{Tab}
return


!t::
send,^c
Run, pythonw.exe "%A_WorkingDir%\translate.pyw"
return


!f::
Send {U+200F} ;{U+202B} 
return


^e::
send,+{F10}e
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
