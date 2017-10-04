#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2

; A faire
#a::
run D:\Documents\a faire.txt
WinWait, a faire
WinActivate, a faire
Return

; Bloc-notes
#b::
run notepad.exe
WinWait, Bloc-notes
WinActivate, Bloc-notes
Return

; Notepad++
#n::
run C:\Program Files (x86)\Notepad++\Notepad++.exe
WinWait, Notepad++
WinActivate, Notepad++
ControlFocus, Scintilla1, ahk_exe notepad++.exe
Return

; Console Power Shell
#c::
run C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe
WinWait, Windows PowerShell
WinActivate, Windows PowerShell
Return

/*
; Visual Studio Code
#v::
run C:\Program Files\Microsoft VS Code\Code.exe
WinWait, Visual Studio Code
WinActivate, Visual Studio Code
Return
*/

/*
; Console Cmder
#c::
run C:\cmder\Cmder.exe
WinWait, Cmder
WinActivate, Cmder
Return
*/

/*
; Console Cmd
#c::
run C:\Windows\System32\cmd.exe
WinWait, ahk_exe cmd.exe
WinActivate, ahk_exe cmd.exe
Return
*/

; Documents
#Space::
run D:\Documents
WinWait, Documents
WinActivate, Documents
Return

; FileZilla
#f::
run filezilla.exe
WinWait, FileZilla
WinActivate, FileZilla
Return

; Paint
#p::
run mspaint.exe
WinWait, mspaint
WinActivate, mspaint
Return

; Wamp
#w::
run C:\wamp64\wampmanager.exe
Return
