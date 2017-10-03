#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Console | Verr. Maj. d = cd D:\Documents\Dev\
#IfWinActive Windows PowerShell
$*d::
if GetKeyState("Capslock", "P")
  send {blind}cd D:\Documents\Dev\
else
  send {blind}{d}
#IfWinActive
return

; Verr. Maj. w = inwardmovement.fr
$*w::
if GetKeyState("Capslock", "P")
  send {blind}inwardmovement.fr
else
  send {blind}{w}
return

; Verr. Maj. à = À
$*à::
if GetKeyState("Capslock", "P")
  send {blind}À
else
  send {blind}{à}
return

; Verr. Maj. é = É
$*é::
if GetKeyState("Capslock", "P")
  send {blind}É
else
  send {blind}{é}
return

; Verr. Maj. è = È
$*è::
if GetKeyState("Capslock", "P")
  send {blind}È
else
  send {blind}{è}
return

; Verr. Maj. ç = Ç
$*ç::
if GetKeyState("Capslock", "P")
  send {blind}Ç
else
  send {blind}{ç}
return

; Verr. Maj. ù = %appdata%
$*ù::
if GetKeyState("Capslock", "P")
  send {blind}`%appdata`%
else
  send {blind}{ù}
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
