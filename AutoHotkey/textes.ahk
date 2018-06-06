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

; AltGr O = œ
<^>!o::œ
return

; AltGr D = date
<^>!d::
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput %CurrentDateTime%
return

; AltGr F = date + time
<^>!f::
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput %CurrentDateTime%T00:00:01
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
::bur::cd C:\Users\arkay\Desktop
#IfWinActive
return

; cd D:\Documents
#IfWinActive Cmder
::doc::cd C:\Users\arkay\Documents
#IfWinActive
return

; cd D:\laragon\www
#IfWinActive Cmder
::www::cd C:\laragon\www
#IfWinActive
return

; explorer .
#IfWinActive Cmder
::e::explorer .
#IfWinActive
return

; status
#IfWinActive Cmder
::gs::git status
#IfWinActive
return

; log
#IfWinActive Cmder
::gl::git log --reverse
#IfWinActive
return

; up
#IfWinActive Cmder
::up::git add . && git commit -m "" && git push{Left 13}
#IfWinActive
return

; add and commit
#IfWinActive Cmder
::gc::git add . && git commit -m ""{Left 1}
#IfWinActive
return

; push
#IfWinActive Cmder
::gp::git push
#IfWinActive
return

; hugo server
#IfWinActive Cmder
::hs::hugo server -D
#IfWinActive
return

; hugo version
#IfWinActive Cmder
::hv::hugo version
#IfWinActive
return
