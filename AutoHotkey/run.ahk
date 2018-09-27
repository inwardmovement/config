#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2

; A faire
#a::
run C:\Users\arkay\Documents\à faire.txt
WinWait, à faire
WinActivate, à faire
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
run C:\bin\cmder\Cmder.exe
WinWait, Cmder
WinActivate, Cmder
Return

; Documents
#Space::
run C:\Users\arkay\Documents
WinWait, Documents
WinActivate, Documents
Return

; Laragon
#l::
run C:\laragon\laragon.exe
WinWait, Laragon
WinActivate, Laragon
Return
