#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2

:*:i@::inwardmovement.fr
return

; Maj droite + à = À
>+à::À
return

; Maj droite + é = É
>+é::É
return

; Maj droite + è = È
>+è::È
return

; Maj droite + ç = Ç
>+ç::Ç
return

; AltGr D = date
<^>!d::
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput %CurrentDateTime%
return

; AltGr espace = espace insécable
<^>!space::Send % Chr(160)
return

; AltGr . = point médian
<^>!;::Send % Chr(183)
return

; AltGr * = —
<^>!*::Send % Chr(8212)
return

; AltGr ^ = «
<^>!^::Send % Chr(171)
return

; AltGr $ = »
<^>!$::Send % Chr(187)
return

; bur = cd C:\Users\arkay\Bureau
#IfWinActive Cmder
::bur::cd C:\Users\arkay\Bureau
#IfWinActive
return

; www = cd C:\laragon\www
#IfWinActive Cmder
::www::cd C:\laragon\www
#IfWinActive
return

; . = explorer .
#IfWinActive Cmder
::.::explorer .
#IfWinActive
return

; up = git add + commit + push
#IfWinActive Cmder
::up::git add . && git commit -m "update" && git push
#IfWinActive
return

; git log = git log --reverse
#IfWinActive Cmder
::git log::git log --reverse
#IfWinActive
return

; hs = hugo server -D
#IfWinActive Cmder
::hs::hugo server -D
#IfWinActive
return
