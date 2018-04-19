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

; Sublime Text
#n::
run C:\Program Files\Sublime Text 3\sublime_text.exe
WinWait, Sublime Text
WinActivate, Sublime Text
Return

; Console
#c::
run C:\cmder\Cmder.exe
WinWait, Cmder
WinActivate, Cmder
Return

; Documents
#Space::
run D:\Documents
WinWait, Documents
WinActivate, Documents
Return

; Firefox
#f::
run C:\Program Files\Firefox Developer Edition\firefox.exe
WinWait, Firefox
WinActivate, Firefox
Return

; Laragon
#l::
run C:\laragon\laragon.exe
WinWait, Laragon
WinActivate, Laragon
Return

; eM Client (focus)
#e::
run C:\Program Files (x86)\eM Client\MailClient.exe
WinWait, eM Client
WinActivate, eM Client
Return
