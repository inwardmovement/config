#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2

; Sublime Text : F5 ouvre les préférences agrandies
#IfWinActive Sublime Text
F5::
  Send ^+n
  Send ^m
  Send ^!s
  WinWait, Preferences
  WinMaximize
  Send !+2
  Send ^!u
#IfWinActive
Return

; Sublime Text : F6 ouvre les raccourcis agrandies
#IfWinActive Sublime Text
F6::
  Send ^+n
  Send ^m
  Send ^!k
  WinWait, Default (Windows)
  WinMaximize
  Send !+2
  Send ^!y
#IfWinActive
Return

; CMder : CTRL BACKSPACE = efface mot
#IfWinActive ahk_class CabinetWClass
  ^Backspace::
  Send ^+{Left}{Backspace}
#IfWinActive
Return

; GMail : F1 = convertit la ligne en citation
#IfWinActive ahk_class MozillaWindowClass
F1::
  Send ^+9
#IfWinActive
return

; Win X = Alt + F4
#x::
Send !{F4}
Return
