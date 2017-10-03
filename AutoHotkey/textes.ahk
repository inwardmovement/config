#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Console
#IfWinActive Windows PowerShell
:*:dev@::cd D:\Documents\Dev\
#IfWinActive
return

:*:i@::inwardmovement.fr
return
:*:àà::À
return
:*:éé::É
return
:*:èè::È
return
:*:çç::Ç
return
:*:%%::%appdata%
return

; Ctrl espace = espace insécable
^space::Send % Chr(160)
return

; AltGr . = point médian
<^>!;::·
return

; AltGr Numpad1 = –
<^>!Numpad1::–
return

; AltGr Numpad2 = —
<^>!Numpad2::—
return

; AltGr Numpad4 = «
<^>!Numpad4::«
return

; AltGr Numpad5 = »
<^>!Numpad5::»
return
