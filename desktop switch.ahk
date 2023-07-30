#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.



SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

;;
; this script is for my personal shortcuts
; in AHK there is abbreviation for special keys:
; # mean windows or command key
; ^ mean control
; + mean shift
; ! mean alt


#s::
run, "C:\Program Files\Everything\Everything.exe";
return

#,:: 
!,::  
Ralt & ,::
send, {Control down}{LWinDOWN}{Left}{LWinUp}{Control up}
return


#.::  ;; windows + .
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
run, "%A_WorkingDir%\..\..\..\my-path"
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
send,{AppsKey}
Sleep 170
send, w
Sleep 200
send, n
send, {Enter}
return



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
