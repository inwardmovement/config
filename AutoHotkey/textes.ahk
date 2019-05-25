#NoTrayIcon
; #InstallKeybdHook
#NoEnv
#SingleInstance force
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2

:*:i@::inwardmovement.github.io
return

:*:v@::victor.dhamma@gmail.com
return

:*:m@::mettaconseil.fr
return

; . (pav num) = ,
SC053::send, ,
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

; AltGr ! = ≠
<^>!SC035::≠
return

; AltGr D = date
<^>!d::
FormatTime, CurrentDateTime,, dd/MM/yyyy
SendInput %CurrentDateTime%
return

; AltGr Maj D = date anglais
<^>!<+d::
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

; Sublime Text po@ = content/poems/erosphere/.md
#IfWinActive Sublime Text
:*:po@::content/poemes/erosphere/.md{Left 3}
#IfWinActive
return

; Sublime Text ar@ = content/articles/.md
#IfWinActive Sublime Text
:*:ar@::content/articles/.md{Left 3}
#IfWinActive
return

; cd D:\Documents
#IfWinActive Cmder
::doc::cd C:\Users\arkay\Documents
#IfWinActive
return

; cd D:\Desktop
#IfWinActive Cmder
::bur::cd C:\Users\arkay\Desktop
#IfWinActive
return

; git status
#IfWinActive Cmder
::gs::git status
#IfWinActive
return

; git diff
#IfWinActive Cmder
::gd::git diff
#IfWinActive
return

; git log
#IfWinActive Cmder
::gl::git log --reverse
#IfWinActive
return

; git add + commit + push
#IfWinActive Cmder
::up::git add . && git commit -m "" && git push{Left 13}
#IfWinActive
return

; git checkout
#IfWinActive Cmder
::gc::git checkout
#IfWinActive
return

; git branch
#IfWinActive Cmder
::gb::git branch
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
