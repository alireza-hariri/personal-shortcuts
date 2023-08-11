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
Send  {U+200F}{U+202B}{U+2067}
return


^e::
send,{AppsKey}
Sleep 180
send, w
Sleep 200
send, n
send, {Enter}
return


^+1::
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    Run *RunAs "C:\Users\alireza\Documents\my-path\etc\prosonal shortcuts\desktop switch.ahk"	/restart
}
Run netsh interface ip set dns name="Wi-Fi" static 8.8.8.8
return 

^+2::
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    Run *RunAs "C:\Users\alireza\Documents\my-path\etc\prosonal shortcuts\desktop switch.ahk"	/restart
}
Run netsh interface ip set dns name="Wi-Fi" static 10.202.10.202
return 

^+0::
full_command_line := DllCall("GetCommandLine", "str")
if not (A_IsAdmin or RegExMatch(full_command_line, " /restart(?!\S)"))
{
    Run *RunAs "C:\Users\alireza\Documents\my-path\etc\prosonal shortcuts\desktop switch.ahk"	/restart
}
Run netsh interface ip set dns name="Wi-Fi" dhcp
return 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
