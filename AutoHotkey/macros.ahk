#NoTrayIcon
#NoEnv
#SingleInstance force
SendMode Input
SetWorkingDir %A_ScriptDir%
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

; Firefox : F1 = nouvel onglet Metta Conseil
#IfWinActive ahk_class MozillaWindowClass
F1::
  Send ^+1
#IfWinActive
return

; GMail : F2 = convertit la ligne en citation
#IfWinActive ahk_class MozillaWindowClass
F2::
  Send ^+9
#IfWinActive
return

; Win X = Alt + F4
#x::
Send !{F4}
Return
