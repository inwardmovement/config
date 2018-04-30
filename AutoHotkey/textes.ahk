#NoTrayIcon
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#SingleInstance force
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
SetTitleMatchMode, 2

:*:i@::inwardmovement.github.io
return

:*:v@::victor.dhamma@gmail.com
return

; Maj droite à = À
>+à::À
return

; Maj droite é = É
>+é::É
return

; Maj droite è = È
>+è::È
return

; Maj droite ç = Ç
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

; AltGr ? = —
<^>!,::Send % Chr(8212)
return

; AltGr ^ = « » toggle
<^>!^::Send % (t := !t) ? Chr(171) : Chr(187)
return

; AltGr $ = “ ” toggle
<^>!$::Send % (t := !t) ?Chr(8220) : Chr(8221)
return

; cd D:\Desktop
#IfWinActive Cmder
::bur::cd D:\Desktop
#IfWinActive
return

; cd D:\Documents
#IfWinActive Cmder
::doc::cd D:\Documents
#IfWinActive
return

; cd D:\laragon\www
#IfWinActive Cmder
::www::cd D:\laragon\www
#IfWinActive
return

; explorer .
#IfWinActive Cmder
::e::explorer .
#IfWinActive
return

; git status
#IfWinActive Cmder
::gs::git status
#IfWinActive
return

; git diff
#IfWinActive Cmder
::gd::git status -vv
#IfWinActive
return

; git log
#IfWinActive Cmder
::gl::git log --reverse
#IfWinActive
return

; git checkout
#IfWinActive Cmder
::gc::git checkout
#IfWinActive
return

; up
#IfWinActive Cmder
::up::git add . && git commit -m "up" && git push {Left 14}
#IfWinActive
return

; travis status
#IfWinActive Cmder
::ts::travis-status --wait 300000
#IfWinActive
return

; hugo server
#IfWinActive Cmder
::hs::hugo server -D
#IfWinActive
return
