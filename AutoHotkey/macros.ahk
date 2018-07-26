﻿#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2

; Sublime Text : ouvre les préférences agrandies
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

; Sublime Text : ouvre les raccourcis agrandies
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

; Ctrl retour arrière = efface mot
#IfWinActive ahk_class CabinetWClass
  ^Backspace::
  Send ^+{Left}{Backspace}
#IfWinActive
Return

; Ctrl G = Firefox ajouter à l'url
#IfWinActive ahk_class MozillaWindowClass
^g::
  Send ^e
  WinWait, ahk_class MozillaWindowClass
  Send {Right}
#IfWinActive
Return

; F1 = dans GMail convertit la ligne en citation
#IfWinActive ahk_class MozillaWindowClass
F1::
  Send ^+9
#IfWinActive
return

; Win X = Alt + F4
#x::
Send !{F4}
Return

; F1 = dans Notepad++ bascule panel snippets
#IfWinActive ahk_class Notepad++
F1::
Loop,
{
    If (panel := "off" or panel := "")
        {
            Send !f
            panel := "on"
            Sleep, 50
            ControlFocus, Scintilla1, ahk_exe notepad++.exe
            break
        }
    If (panel := "on")
        {
            Send !f
            active := "local"
            break
        }
}
#IfWinActive
return
