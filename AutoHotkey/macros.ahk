#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Notepad++ | Tab = flèche droite si avant " ou ' ou ) ou ] ou }
/*
GetCaretText()
{
ClipboardToRestore := ClipboardAll
Clipboard = 
Send +{right 1}   ; select text of interest
Send ^c ; copy it
ClipWait
Send {left 1}   ; restore caret's original position
CaretText := Clipboard
Clipboard := ClipboardToRestore ; restore clipboard
return CaretText
}
Tab::
if (GetCaretText() = "")
    Send {right}
else
    Send {tab}
return
*/

; Ctrl retour arrière = efface mot
#IfWinActive ahk_class CabinetWClass ; File Explorer
    ^Backspace::
#IfWinActive ahk_class Notepad
    ^Backspace::
    Send ^+{Left}{Backspace}
#IfWinActive
Return

; F4 convertit en html les retours à la ligne et les sauts de lignes du texte sélectionné dans Notepad++
#IfWinActive ahk_class Notepad++
F4::
	ClipSaved := ClipboardAll
	Clipboard =
	Send ^c
	ClipWait 1
	IF (ErrorLevel)
		Return
	temp := clipboard
	temp := StrReplace(temp, "`r`n", "<br>`r`n")
	temp := StrReplace(temp, "<br>`r`n<br>`r`n", "</p>`r`n`r`n<p>")
	clipboard := "<p>" . temp . "</p>"
	Send ^v
	Clipboard := ClipSaved
	ClipSaved =
	#IfWinActive
Return

; F1 = dans GMail convertit la ligne en citation
#IfWinActive ahk_class MozillaWindowClass
F1::
	Send ^+9
#IfWinActive
return

; F1 = dans Notepad++ bascule panels local/ftp
#IfWinActive ahk_class Notepad++
F1::
Loop,
{
	If (active := "local" or active := "")
		{
			Send !+l ; ferme local
			Send !+f ; ouvre ftp
			active := "ftp"
			break
			
		}
	If (active := "ftp")
		{
			Send !+f ; ferme ftp
			Send !+l ; ouvre local
			active := "local"
			break
		}
}
#IfWinActive
return

; F2 = dans Notepad++ bascule panel snippets
#IfWinActive ahk_class Notepad++
F2::
Loop,
{
	If (panel := "off" or panel := "")
		{
			Send !+s
			panel := "on"
			break
		}
	If (panel := "on")
		{
			Send !+s
			active := "local"
			break
		}
}
#IfWinActive
return

; Win X = Alt + F4
#x::
Send !{F4}
; Alt F4 ferme Windows PowerShell
#IfWinActive, ahk_class ConsoleWindowClass
    !F4::WinClose, A
#IfWinActive
Return
