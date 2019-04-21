#NoTrayIcon
#NoEnv
#SingleInstance force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2

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

; ScreenToGif
#g::
run C:\Program Files (x86)\ScreenToGif\ScreenToGif.exe
WinWait, ScreenToGif
WinActivate, ScreenToGif
Return
