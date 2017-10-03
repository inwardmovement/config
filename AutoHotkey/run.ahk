#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode RegEx

; A faire
#a::
run D:\Documents\a faire.txt
Sleep, 200
WinActivate, a faire
Return

; Bloc-notes
#b::
run notepad.exe
Sleep, 200
WinActivate, notepad.exe
Return

; Notepad++
#n::
run C:\Program Files (x86)\Notepad++\Notepad++.exe
ControlFocus, Scintilla1, ahk_exe notepad++.exe
Return

; Console Power Shell
#c::
run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
WinActivate, Windows PowerShell
Return

/*
; Console
#c::
run C:\Windows\System32\cmd.exe
WinActivate, ahk_exe cmd.exe
Return
*/

; Cmder
/*
#v::
run C:\cmder\Cmder.exe
WinActivate, ahk_exe Cmder.exe
Return
*/

; Documents
#Space::
run D:\Documents
WinActivate, Documents
Return

; FileZilla
#f::
run filezilla.exe
WinActivate, FileZilla
Return

; Paint
#p::
run mspaint.exe
WinActivate, mspaint
Return

; Wamp
#w::
run C:\wamp64\wampmanager.exe
Return
