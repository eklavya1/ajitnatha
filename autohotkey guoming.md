#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance, force

#persistent

; use vim's font - Rod and font size - 13
; 2 cents !
;function keys status
;1 2 3 4                             5 6 7 8 9 10 11 12
;  x x x
;      publications pub -  ; pages - 

;19/02/2022
;================================================================================daily open
:*?:pr.::price ;/=
;*************************

#z::
run, C:\Program Files\AutoHotkey\AutoHotkey.exe
sleep, 4000
#IfWinActive AutoHotkey Help
mousemove, 877, 90
mouseclick, left, 877, 90
mousemove, 311, 92
mouseclick, left, 311, 92
return
;*************************
/*
;****************************************

; ctrl +shift + 2
^+2::
Send, {end}
send, {space}_related_ [[]] | [[]] | [[]] {Left 17}
return
; hotkey keystrokes - 3
; keystrokes saved - 46
; 46/3 = 15.3
;****************************************

^+3::
Send, {end}
Send, {space}{#}pneumonic __{left 1}
return

+c::Send {Home}{Shift Down}{End}{Shift Up}^c{End}
return
*/
;*******************************
/*
; alt + c - turn selection into a obsidian wikinote
!c::
; cut
Send, ^x
; put wiki brackets
Send, [[]]
; send left arrows
Send, {Left 2}
; paste
Send, ^v
return
; keystrokes typed - 2
; keystrokes saved - 8
; profit - 4 times
;*******************************
*/

/*
;LIST OF OCCUPIED KEYS
;alt
;a s j l k i m
;a b c d e f g h i j k l m n o p q r s t u v w x y z
;1               1 1 1 1 1           1       1
;{up}
;{down}

;shift
;ctrl

; wikilink
 Lalt & a::
 send, [[]]{Left 2}
 return
*/

/*
;embed wikilink
Lalt & s::
 send, {!}[[]]{Left 2}
 return
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
; 5 up arrows for obsidian
Lalt & up::
send, {Up 5}
send, {End}
return
*/

/*
; 5 down arrows for obsidian
Lalt & down::
send, {down 5}
return
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
; 10 up arrows for obsidian
Lctrl & up::
send, {Up 10}
send, {End}
return
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
; 10 down arrows for obsidian
Lctrl & down::
send, {down 10}
send, {End}
return
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
/*
; arrows for quick selection of autocomplete------------

alt & j::
Send, {Left}
return

alt & l::
Send, {right}
return

alt & k::
Send, {up}
return

alt & i::
Send, {Enter}
return

alt & m::
Send, {down}
return
*/
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;iframe video source or webpage embed
/*
^r::
send, <iframe src="" width="600" height="500" ></iframe>
send, {home}
send, {right 13} ; but without indentation in obsidian its 13
return
*/

;time insert
insert::
FormatTime, CurrentDateTime,, hh:mm tt dd/M/yyyy
SendInput, %CurrentDateTime%
return

































































;================================================================================daily close
;18/02/2022
;================================================================================daily open
:*?:,o::{space}OR{space}{"} ;/=
:*?:cia\::[cia world factbook ](https://www.cia.gov/the-world-factbook/countries/){left} ;/= CIA world factbook
:*?:-m::ministry of ;/=
:*?:tc\::{# #}table of content`n{`` 3}toc{enter}{end}{enter} ;/=
;*************************
; tanlun gen wo de meimei ???????
#t::
run, "C:\Users\HP\AppData\Roaming\Telegram Desktop\Telegram.exe"
send, {esc 2}mei {down} {enter}
return
;*************************

/*
; tanlun gen wo de cheo
#y::
run, "C:\Users\HP\AppData\Roaming\Telegram Desktop\Telegram.exe"
send, {esc 2}?? {down} {enter}
return
*/
;*************************

; reader's paradise
; books library
#u::
run, "C:\Users\HP\AppData\Roaming\Telegram Desktop\Telegram.exe"
send, {esc 2}read {down} {enter}
return
;*************************

; baozhi newspaper
#i::
run, "C:\Users\HP\AppData\Roaming\Telegram Desktop\Telegram.exe"
send, {esc 2}bao {down} {enter}
return
;*************************

; open saved messages
#y::
run, "C:\Users\HP\AppData\Roaming\Telegram Desktop\Telegram.exe"
send, {esc 2}sav {down} {enter}
return
;*************************

/*
; delete last message
#]::
mousemove 1470,947
mouseclick right,1470,947
send {up 2} {enter 3}
return
*/
;================================================================================daily close

;15/2/2022
;================================================================================daily open
;qr code query for obsidian plugin
:*?:q,::{#}qrcode{enter 2}{`` 3}{enter 2}{up 2}{end}qrcode{down}^v{down}{enter} ;/=

;routine for making qr codes of the telegram books and pating them in obsidian notes
f3::
mouseclick, right
send {up 4}{enter}
winactivate ahk_class Chrome_WidgetWin_1
send {#}qrcode{enter 2}{`` 3}{enter 2}{up 2}{end}qrcode{down}^v{down}{enter} ;/=
;send {`` 3}{enter 2}{up 2}{end}qrcode{down}^v{down}{enter}
return

#[::
IfWinExist ahk_class Qt5152QWindowIcon
{
 WinActivateBottom, ahk_class Qt5152QWindowIcon
}
Else
{
 Run C:\Users\HP\AppData\Roaming\Telegram Desktop\Telegram.exe
}
Return

;================================================================================daily close
;14/2/2022
;================================================================================daily open
:*:lks::lok sabha ;/=
	:*:lk]::[[lok sabha]] ;/=
:*:rjs::rajya sabha ;/=
	:*:rj]::[[rajya sabha]] ;/=

!o::
send !\{end}^+{left}+{left}{space}caa{enter} ; change title section
send ^{end}{up 2}{home} ; go to end of note - query section
send {shift down}{down 2}{end}{shift up}
send {del}
;send !2{bs} ;send updated query
;sleep 1000
;send ^o
;send {space}caa{left 4}
return

;ncert download site link
#n::run https://ncert.nic.in/textbook.php ;/=
; #j = obsidian vault
; #k = autohotkey scripts folder 
; #h = downloads folder

;open downloads folder
#h::run C:\Users\HP\Downloads ;/=

;================================================================================daily close
;12/2/2022
;================================================================================daily open
; QR code generator
+!r::
run https://www.qr-code-generator.com/
mousemove, 471,783
sleep 2000 ;3000
mouseclick,left,471,783 ; click on the text box to type url
send ^v
sleep 500 ;1000
mousemove, 1289,487 ;go to the embed link button
sleep 2400
mouseclick,left,1289,487
; now a dialog box has opened, click on the code and copy it
; then close the box
sleep 900
mouseclick, left,1289,487
sleep 200
send ^a
send ^c
return

; status -  failed
; telegram any object link copy
/*
^!l::
send {up 4}{enter}
return
*/
;================================================================================daily close
;11/02/2022
;================================================================================daily open

+x::
IfWinExist ahk_class Chrome_WidgetWin_1
 WinActivateBottom, ahk_class Chrome_WidgetWin_1 ; this is the obsidian id !!! so weird
Else
 Run "C:\Users\HP\AppData\Local\Obsidian\Obsidian.exe" ; truth is stranger than fiction !!!!
send ^{end}{up 3}{end}
return

/*
; automate pasting constitution articles obsidian links
!o::
send ^{home}{down 3}
loop 2
{
	send +{down}
}
send +{end}
send ^v
send ^o
send a36
sleep 1500
send {enter}
return
*/

/*
^!p::
send {end}+{home}
send ^h
send {tab}19{tab}a{tab}{enter}
return
*/

; clipboard search
;go to amazon shopping site with clipboard search
^+!a::run https://www.amazon.in/s?k=%clipboard%&crid=3U4VHMNXKDQ99&sprefix=bu%2Caps%2C480&ref=nb_sb_noss ;/=

;go to youtube with clipboard search
^+!y::run https://www.youtube.com/results?search_query=%clipboard% ;/=
;================================================================================daily close

;10:20 AM 09/2/2022
;================================================================================daily open

;go to the mother note at top
+m::send ^{home}{down 3}^{right}{left 2} ;/=

; append + clipboard
!x::send ^{home}{down 5}{enter}!9{up}%clipboard% ;/=

; inbuilt features for editing ahk script
^!e::edit
^!r::reload
;^!p::pause
^!u::suspend
;================================================================================daily close
;12:29 PM 08/2/2022
;================================================================================daily open
:*?:rt,::right to{space} ;/=
:*?:lcl::^p l gr{enter} ;/=
;================================================================================daily close
;02:45 PM 07/2/2022
;================================================================================daily open
; ergonomic backspace to delete last letter
+l::send ^{bs}

/*
zx::
While (GetKeyState("x", "P")) {
send ne
sleep 1000
}
Return
*/

; type alt tab quickly hotstring
:*?:al]::sendt{bs}{space}{!}tab{left 3}{{}{right 3}{}}

;make a quick new obsidian note for selected term in browser
;                                 PART ONE OF THE ROUTINE
+q::
send ^c ; copy the term
winactivate ahk_class Chrome_WidgetWin_1
;send !{tab} ; switch to obsidian
sleep 10
send ^o ; open quick switcher
send % clipboard
sleep 10
send +{enter} ; deliberately make the note
sleep 10
send +z ; new note template
sleep 100
send ^p
sleep 10
send w act
send {enter}
sleep 60
winactivate ahk_class MozillaWindowClass ; switch to browser
return

;                                PART 2 OF THE ROUTINE

;copy the selection to the newly made note
+w::
send ^c
sleep 90
winactivate ahk_class Chrome_WidgetWin_1 ; switch to obsidian
sleep 90
send {end}{enter}%clipboard%
sleep 90
winactivate ahk_class MozillaWindowClass ; switch to browser
return

; open the note in %clipboard%
; helps in checking related stuff
+e::
send ^c
winactivate ahk_class Chrome_WidgetWin_1 ; switch to obsidian
send ^o
sleep 100
send ^v
return

;TODO
;                                 PART 3 OF THE ROUTINE
;append an obsidian note but with automation
/*
+w::
send ^c
winactivate ahk_class Chrome_WidgetWin_1 ; switch to obsidian
return
*/
;================================================================================daily close
/*
+/::
Send, ^c ;Copy to clipboard
Run, https://www.merriam-webster.com/dictionary/%Clipboard%
Run, https://en.wikipedia.org/wiki/%clipboard%
run, https://duckduckgo.com/?q=%clipboard%&t=ffab&ia=web
run, https://www.netflix.com/search?q=%clipboard%
Return
*/
/*
!p::
send ^{pgdn}
mouseclick, left,729,412
mouseclick, left,729,412
mouseclick, left
return
*/
;--------------------------------------------------------------------------------
/*
!o::
send +z
sleep 100
send !{tab}
sleep 600
send ^w
sleep 600
MouseClick, WheelDown,,,1
mousemove, 321,734
send ^f
sleep 30
send constitution of india 1949
sleep 500
send {esc}
sleep 500
send ^+{end}
;return
;!p::
send ^c ; copy article on the webpage
sleep 20
send !{tab}
sleep 20
send ^v
sleep 1000
send ^o ; open quick switcher
send a ;edit this line for customizing quick switcher text
sleep 2000
send +{enter}
return
*/
;--------------------------------------------------------------------------------
; highlight and replace 19 with the letter "a" for making articles constitution
/*
!p::
send {end}+{home}
send ^h
send {tab}19{tab}a{tab}{enter}
return
*/
;--------------------------------------------------------------------------------
; f1 = to toggle listening window prompt
; f2 = to go to last line for writing in obsidian
;f3:: ;/=
;f4:: ;/=
;f5:: ;/=
;f6:: ;/=
;f7:: ;/=
;f8:: ;/=
;f9:: ;/=
;f10:: ;/=
;f11:: ;/=
;f12:: ;/=
;--------------------------------------------------------------------------------
;courts
:*?:sc]::[[supreme court]] ;/=
:*?:hc]::[[high court]] ;/=
:*?:fr]::[[fundamental rights]] ;/=


; writs
:*?:ha]::[[habeas corpus]] ;/=
:*?:ma]::[[mandamus]] ;/=
:*?:pr]::[[prohibition]] ;/=
:*?:qu]::[[quo warranto]] ;/=
:*?:ce]::[[certiorari]] ;/=

;12:45 PM 06/2/2022
;================================================================================daily open

;************************* scroll up and scroll down
#left::MouseClick, WheelUp,,,1
#right::MouseClick, WheelDown,,,1
return
;*************************

;************************* OPEN AUTOHOTKEY SCRIPTS FOLDER
#k::
run, C:\Users\HP\OneDrive\Desktop\autohotkey scripts
return
;*************************
;open obsidian ajitnatha vault
; 14/2/2022
#j::
run, C:\Users\HP\OneDrive\Documents\OBSIDIAN MASTER FOLDER\wo de dongxi\diguo - 2.1 Ajitanatha
return
;*************************


/*
!m::
mousemove, 148,438 ; on the macro button in razer synapse
mouseclick, left, 148,438
mousemove, 519,233 ; on the assign macro dropdown
mouseclick, left, 519,233 
return
*/


;further optimization, obsidian
; make empty note template and go up 3 times to the writing place
+z::send !1{up 3} ;/=
^!z::send !1{up 3}%clipboard% ;/=
;================================================================================daily close
;03:39 PM 05/2/2022
;================================================================================daily open
;*************************

; to go to alias quickly
+a::send ^{home}{down}{end}{left} ;/=

; to go to writing a new empty note
+s::send ^{home}{down 8} ;/=

; append a note at the beginning of an existing note
!z::send ^{home}{down 5}{enter}{up}!9{up} ;/=

; remove redundant spaces in a line
;:*?:rk::^p redun {enter} ;/=

;to convert cases - uppercase and lowercase
;:*?:lz::^p lowerca {enter} ;/=
;:*?:uz::^p upperca {enter} ;/=

;to make number series (increment or decrement)
:*?:pt/::put=range(1,){left} ;/=

:*:1m::[[1 caa]]
:*:2m::[[2 caa]]
:*:3m::[[3 caa]]
:*:4m::[[4 caa]]
:*:5m::[[5 caa]]
:*:6m::[[6 caa]]
:*:7m::[[7 caa]]
:*:8m::[[8 caa]]
:*:9m::[[9 caa]]
:*:10m::[[10 caa]]
:*:11m::[[11 caa]]
:*:12m::[[12 caa]]
:*:13m::[[13 caa]]
:*:14m::[[14 caa]]
:*:15m::[[15 caa]]
:*:16m::[[16 caa]]
:*:17m::[[17 caa]]
:*:18m::[[18 caa]]
:*:19m::[[19 caa]]
:*:20m::[[20 caa]]
:*:21m::[[21 caa]]
:*:22m::[[22 caa]]
:*:23m::[[23 caa]]
:*:24m::[[24 caa]]
:*:25m::[[25 caa]]
:*:26m::[[26 caa]]
:*:27m::[[27 caa]]
:*:28m::[[28 caa]]
:*:29m::[[29 caa]]
:*:30m::[[30 caa]]
:*:31m::[[31 caa]]
:*:32m::[[32 caa]]
:*:33m::[[33 caa]]
:*:34m::[[34 caa]]
:*:35m::[[35 caa]]
:*:36m::[[36 caa]]
:*:37m::[[37 caa]]
:*:38m::[[38 caa]]
:*:39m::[[39 caa]]
:*:40m::[[40 caa]]
:*:41m::[[41 caa]]
:*:42m::[[42 caa]]
:*:43m::[[43 caa]]
:*:44m::[[44 caa]]
:*:45m::[[45 caa]]
:*:46m::[[46 caa]]
:*:47m::[[47 caa]]
:*:48m::[[48 caa]]
:*:49m::[[49 caa]]
:*:50m::[[50 caa]]
:*:51m::[[51 caa]]
:*:52m::[[52 caa]]
:*:53m::[[53 caa]]
:*:54m::[[54 caa]]
:*:55m::[[55 caa]]
:*:56m::[[56 caa]]
:*:57m::[[57 caa]]
:*:58m::[[58 caa]]
:*:59m::[[59 caa]]
:*:60m::[[60 caa]]
:*:61m::[[61 caa]]
:*:62m::[[62 caa]]
:*:63m::[[63 caa]]
:*:64m::[[64 caa]]
:*:65m::[[65 caa]]
:*:66m::[[66 caa]]
:*:67m::[[67 caa]]
:*:68m::[[68 caa]]
:*:69m::[[69 caa]]
:*:70m::[[70 caa]]
:*:71m::[[71 caa]]
:*:72m::[[72 caa]]
:*:73m::[[73 caa]]
:*:74m::[[74 caa]]
:*:75m::[[75 caa]]
:*:76m::[[76 caa]]
:*:77m::[[77 caa]]
:*:78m::[[78 caa]]
:*:79m::[[79 caa]]
:*:80m::[[80 caa]]
:*:81m::[[81 caa]]
:*:82m::[[82 caa]]
:*:83m::[[83 caa]]
:*:84m::[[84 caa]]
:*:85m::[[85 caa]]
:*:86m::[[86 caa]]
:*:87m::[[87 caa]]
:*:88m::[[88 caa]]
:*:89m::[[89 caa]]
:*:90m::[[90 caa]]
:*:91m::[[91 caa]]
:*:92m::[[92 caa]]
:*:93m::[[93 caa]]
:*:94m::[[94 caa]]
:*:95m::[[95 caa]]
:*:96m::[[96 caa]]
:*:97m::[[97 caa]]
:*:98m::[[98 caa]]
:*:99m::[[99 caa]]
:*:100m::[[100 caa]]
:*:101m::[[101 caa]]
:*:102m::[[102 caa]]
:*:103m::[[103 caa]]
:*:104m::[[104 caa]]
:*:105m::[[105 caa]]


; GOOGLE SHEET
; copy cell link of google sheet spreadsheet ?? 
; format
; send ^+shift+ \ = open context menu
; 7 up arrows for obsidian
; Enter
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; # of keys saved - 11
/*
LShift & z::
Send, ^+{\}
send, {Up 7}
send, {Enter}
return
*/

;PROGRESS BAR FOR GOOGLE SHEET
/*
!p::
SendInput {Raw}=SPARKLINE(1,{"charttype","bar";"max",100;"color1","black"})
send, {home}{right 12}
return
*/
;*************************
:*?:gvt::government ;/=
;================================================================================daily close
;09:43 AM 04/2/2022
;================================================================================daily open
:*?:drf::therefore{space} ;/=

;REMOVE REDUNDANT SPACE IN OBSIDIAN USING THE COMMAND PALLETTE
/*
!r::
send ^p
send redundant spaces{enter} ;/=
return
*/
;================================================================================daily close

;01:13 PM 03/2/2022
;--------------------------------------------------------------------------------open
:*?:sat,::so as to{space} ;/=
:*?:e/::empire ;/=

; LATEX WRITING IN OBSIDIAN
:*?:$,::{$ 4}{left 2} ;/=

; HIGHLIGHT CURRENT LINE
:*?:hll::{home}+{end}^b{end} ;/=
:*?:act,::according to{space} ;/=

; WIKINOTE FOR OBSIDIAN KEYBOARD STYLE
:*?:ggh::[[]]{left 2} ;/=
;--------------------------------------------------------------------------------
;PDF PROGRESS
:*?:pdk::^{home}{down 9}{end}^{left}{left}^+{left} ;/=
;         TOP     MAIN   END  |________|  |______|
;         LINE    LINE   OF   GO TO EDIT  SELECT THE --> TYPE YOUR UPDATE
;                        LINE               STRING 

;--------------------------------------------------------------------------------
;NAVIGATING BETWEEN WIKINOTES
:*?:22l::{end}{left 22} ;/=
;:*?://::{right 3} ;/=switch to next empty wikinote obsidian
;:*?:\\::{left 12} ;/=switch to prev empty wikinote obsidian
;--------------------------------------------------------------------------------

; TO ARRANGE DISTORTED LINES AND ADD RELEVANT SPACE
;control j
;PART 1================SINGLE USAGE======================
^j:: send {home}{bs}{space}
;========================================================

;--------------------------------------------------------------------------------
; KEYBOARD ORIENTED COMPUTING !!
:*?:jf::^{``} ;/= open clipboard from keyboard !!
:*?:fj::{esc} ;/=escape , note the key choice is ergonomic not logical
;:*?:ck::^c ;/=copy
;:*?:yk::^v ;/=paste
;:*?:zk::^z ;/=undo
;:*?:rk::^y ;/=redo
; vim like editor commands
;;:*?:pk::^+{left}^c{right} ;/=copy prev word
:*?:pz::^v ;/=paste
;:*?:yy::{home}+{end}^c{right}{esc} ;/=copy current line

;-----------------------------------------------------------------start of mermaid

;mermaid line for drawing graph
; not that important since i made a better approach below
; vestigial script !
:*?:-,::-->{(}{)}{left 2} ;/=

; to make mermaid charts in obsidian
; this part is about drawing the skeleton
;==================== part 1 ====================
;:*?:mek::^tlr{enter}{up 2}^v ;/=
:*?:mek::{home}+{end}^c{bs}^tmerm{enter}{up 2}^v ;/=
;        copy line     open template       paste line in the mermaid template
;                      & type "merm"

;==================== part 2 ====================
; this part is for add "-->" line in the data
:*?:grr::^{left}{bs}{- 2}>^{left} ;/=
;-------------------------------------------------------------------end of mermaid

;--------------------------------------------------------------------------------close
;12:48 PM 02/2/2022
;--------------------------------------------------------------------------------open

;oceans of the world
:*?:ar/::arctic ocean{space} ;/=
:*?:at/::atlantic ocean{space} ;/=
:*?:in/::indian ocean{space} ;/=
:*?:pa/::pacific ocean{space} ;/=
:*?:so/::southern ocean{space} ;/=


; type centuries / century
; chinese - shi4ji4 - century
:*:1^::[[1st century]] ;/=
:*:2^::[[2nd century]] ;/=
:*:3^::[[3rd century]] ;/=
:*:4^::[[4th century]] ;/=
:*:5^::[[5th century]] ;/=
:*:6^::[[6th century]] ;/=
:*:7^::[[7th century]] ;/=
:*:8^::[[8th century]] ;/=
:*:9^::[[9th century]] ;/=

:*:10^::[[10th century]] ;/=
:*:11^::[[11th century]] ;/=
:*:12^::[[12th century]] ;/=
:*:13^::[[13th century]] ;/=
:*:14^::[[14th century]] ;/=
:*:15^::[[15th century]] ;/=
:*:16^::[[16th century]] ;/=
:*:17^::[[17th century]] ;/=
:*:18^::[[18th century]] ;/=
:*:19^::[[19th century]] ;/=
:*:20^::[[20th century]] ;/=

:*:21^::[[21th century]] ;/=
:*:22^::[[22th century]] ;/=


; type fractions quickly and efficiently
:*?:.f::^{left}{bs}{/}^{right} ;/=

:*?:tt/::treaty of{space} ;/=

; download daily newspaper
#+i::
run, "C:\Users\HP\AppData\Roaming\Telegram Desktop\Telegram.exe" ; OPEN TELEGRAM
sleep,100
send, {esc 2}the hindu the indian express pdf{down} {enter} ; TO OPEN READER'S PARADISE LIBRARY
send !{enter}
return

;--------------------------------------------------------------------------------close
;12:55 PM 31/1/2022
;--------------------------------------------------------------------------------open
;autohotkey scripts hotstrings
:*?:]s::{{}space{}}{left} ;/=
:*?:]l::{{}left{}}{left} ;/=
:*?:]r::{{}right{}}{left} ;/=
:*?:]u::{{}up{}}{left} ;/=
:*?:]d::{{}down{}}{left} ;/=
:*?:]e::{{}enter{}}{left} ;/=
:*:]t::{{}tab{}}{left} :/=

:*?:r]::return ;/=
:*?:s]::send{space} ;/=
:*?:l]::sleep{space} ;/=
:*?:n]::run{space} ;/=
;--------------------------------------------------------------------------------close
;--------------------------------------------------------------------------------
; to toggle speech prompt at the startup that is irritating !
f1::^#s
;--------------------------------------------------------------------------------
!s::
winactivate ahk_class Qt5152QWindowIcon
winwaitactive ahk_class Qt5152QWindowIcon
send {esc 2}sta{down}{enter}
return
;--------------------------------------------------------------------------------
; condition brackets
:*?:[,::{enter}{{}{enter 2}{}}{up} ;/=
;            l brack    r bracket
;--------------------------------------------------------------------------------
; comment line for cosmetics
:*?:-;::{;}{- 80} ;/=

; for starting the day with date + time and beautiful 2 comment lines enclosing the contents of
; that day
:*?:td,::{;}{= 80}daily open{enter 2}{;}{= 80}daily close{up} ;/=

;--------------------------------------------------------------------------------
; 03:00 PM 30/1/2022

; obsidian rough note access
; C:\Users\HP\OneDrive\Documents\OBSIDIAN MASTER FOLDER\wo de dongxi\diguo - 2.1 Ajitanatha\rough.md

;--------------------------------------------------------------------------------
;file append
/*
^y::
send, ^c
FileAppend,`n%clipboard%`n,C:\Users\HP\OneDrive\Documents\OBSIDIAN MASTER FOLDER\wo de dongxi\diguo - 2.1 Ajitanatha\rough.md
return
*/
;--------------------------------------------------------------------------------
/*
; selection copy script
; source -
; https://www.autohotkey.com/board/topic/44064-copy-on-select-implementation/
; copy the improved version, found later

cos_mousedrag_treshold := 20 ; pixels

    
#IfWinNotActive ahk_class ConsoleWindowClass

~lButton::
  MouseGetPos, cos_mousedrag_x, cos_mousedrag_y
  keywait lbutton
  mousegetpos, cos_mousedrag_x2, cos_mousedrag_y2
  if (abs(cos_mousedrag_x2 - cos_mousedrag_x) > cos_mousedrag_treshold
    or abs(cos_mousedrag_y2 - cos_mousedrag_y) > cos_mousedrag_treshold)
  {
    wingetclass cos_class, A
    if (cos_class == "Emacs")
      sendinput !w
    else
      sendinput ^c
  }
  return
  
~mbutton::
  WinGetClass cos_class, A
  if (cos_class == "Emacs")
    SendInput ^y
  else
    SendInput ^v
  return
  
#IfWinNotActive


;; clipx
^mbutton::
  sendinput ^+{insert}
  return
*/
;--------------------------------------------------------------------------------


:*?:crc::characteristics{space} ;/=
;:*?:stm::system{space} ;/=
:*?:odr::other{space} ;/=
:*?:trl::tribal{space} ;/=
:*?:cp,::{%}clipboard{%} ;/=
;--------------------------------------------------------------------------------

;---------------------------------------------------------------------------------

; search clipboard on netflix
![::
run https://www.netflix.com/search?q=%clipboard%
IfWinExist ahk_class MozillaWindowClass
{
 WinActivateBottom, ahk_class MozillaWindowClass
}
Else
{
 Run "C:\Program Files\Mozilla Firefox\firefox.exe"
}
Return

; special "of", activate it when intense writing
;:*?:.::{space}of{space} ;/=

; 08:43 AM 29/1/2022
; to download books from libgen
^!/::
send, ^c
run https://1lib.in/s/%clipboard%?
IfWinExist ahk_class MozillaWindowClass
{
 WinActivateBottom, ahk_class MozillaWindowClass
}
Else
{
 Run "C:\Program Files\Mozilla Firefox\firefox.exe"
}
Return
;-----------------------------------------------------------


;----------------------------- telegram book metadata in telegram,etc ----------
f4::
send pub -{space}{space}{;} pages -{space}{left 11} 
return
;-----------------------------------------------------------

;----------------------------- open pdf downloads folder for copy pasting books -----
; pre requisites - ni de tgrm yingao kaishi (unlckd)
; zhe hotkey bu work if ni de tgrm shi clse
#+o::
;sleep 4000
run, "C:\Users\HP\AppData\Roaming\Telegram Desktop\Telegram.exe" ; OPEN TELEGRAM
sleep,100
send, {esc 2}read {down} {enter} ; TO OPEN READER'S PARADISE LIBRARY
run, C:\Users\HP\Downloads       ; OPEN DOWNLOAD LOCATION & COPY MANYALLY YOU HAVE 5 SECS !!
sleep 5000
Send, !{Tab}                     ;SWITCH BACK TO TELEGRAM
send, ^v                         ; PASTE THE BOOK
send {enter}                     ; SEND THE BOOK
return  
;--------------------------------------------------------------------------------
; while browsing on the webpage and copy pasting
/*
^y::
Send, ^c             ;copy
sleep 1000
WinActivate, ahk_class Chrome_WidgetWin_1 ;obsidian
WinWaitActive, ahk_class Chrome_WidgetWin_1 ;obsidian
;sleep 1000
Send, ^v             ;paste
send, {enter}
;sleep 1000
WinActivate, ahk_class MozillaWindowClass ; firefox
WinWaitActive, ahk_class MozillaWindowClass ; wait until firefox opens
return
*/
;--------------------------------------------------------------------------------
; dummy testing
^#z::
WinActivate, ahk_class Chrome_WidgetWin_1 
WinWaitActive, ahk_class Chrome_WidgetWin_1 
return
;--------------------------------------------------------------------------------
; launch or switch to Firefox
; http://xahlee.info/mswin/autohotkey_switch_launch_app.html
; version 2021-02-21
launchOrSwitchFirefox()
{
IfWinExist ahk_class MozillaWindowClass
{
 WinActivateBottom, ahk_class MozillaWindowClass
}
Else
{
 Run "C:\Program Files\Mozilla Firefox\firefox.exe"
}
Return
}

#p::launchOrSwitchFirefox()
;--------------------------------------------------------------------------------
;:*?:mk::make{space} ;/=
;:*?:tk::take{space} ;/=
:*?:hb::have been{space} ;/=
:*?:hvb::have been{space} ;/=
:*?:hdb::had been{space} ;/=
;--------------------------------------------------------------------------------
; decades series list of 20th century
:*?:00ds::[[1900]] [[1901]] [[1902]] [[1903]] [[1904]] [[1905]] [[1906]] [[1907]] [[1908]] [[1909]] [[1910]] ;/=

:*?:10ds::[[1910]] [[1911]] [[1912]] [[1913]] [[1914]] [[1915]] [[1916]] [[1917]] [[1918]] [[1919]]  [[1920]] ;/=

:*?:20ds::[[1920]] [[1921]] [[1922]] [[1923]] [[1924]] [[1925]] [[1926]] [[1927]] [[1928]] [[1929]] ;/=

:*?:30ds::[[1930]] [[1931]] [[1932]] [[1933]] [[1934]] [[1935]] [[1936]] [[1937]] [[1938]] [[1939]] ;/=

:*?:40ds::[[1940]] [[1941]] [[1942]] [[1943]] [[1944]] [[1945]] [[1946]] [[1947]] [[1948]] [[1949]] ;/=

:*?:50ds::[[1950]] [[1951]] [[1952]] [[1953]] [[1954]] [[1955]] [[1956]] [[1957]] [[1958]] [[1959]] ;/=

:*?:60ds::[[1960]] [[1961]] [[1962]] [[1963]] [[1964]] [[1965]] [[1966]] [[1967]] [[1968]] [[1969]] ;/=

:*?:70ds::[[1970]] [[1971]] [[1972]] [[1973]] [[1974]] [[1975]] [[1976]] [[1977]] [[1978]] [[1979]] ;/=

:*?:80ds::[[1980]] [[1981]] [[1982]] [[1983]] [[1984]] [[1985]] [[1986]] [[1987]] [[1988]] [[1989]] ;/=

:*?:90ds::[[1990]] [[1991]] [[1992]] [[1993]] [[1994]] [[1995]] [[1996]] [[1997]] [[1998]] [[1999]] [[2000]] ;/=
;--------------------------------------------------------------------------------
; 09:13 AM 26/1/2022
:*?:prgtv::prerogative{space} ;/=
;--------------------------------------------------------------------------------
; SCREEN BRIGHTNESS
#,::
  AdjustScreenBrightness(-20) ; - and + 20 are the optimised value tk
  Return
  
#.::
  AdjustScreenBrightness(20)
  Return
  
AdjustScreenBrightness(step) {
    service := "winmgmts:{impersonationLevel=impersonate}!\\.\root\WMI"
    monitors := ComObjGet(service).ExecQuery("SELECT * FROM WmiMonitorBrightness WHERE Active=TRUE")
    monMethods := ComObjGet(service).ExecQuery("SELECT * FROM wmiMonitorBrightNessMethods WHERE Active=TRUE")
    minBrightness := 5  ; level below this is identical to this

    for i in monitors {
        curt := i.CurrentBrightness
        break
    }
    if (curt < minBrightness)  ; parenthesis is necessary here
        curt := minBrightness
    toSet := curt + step
    if (toSet > 100)
        return
    if (toSet < minBrightness)
        toSet := minBrightness
        
    

    for i in monMethods {
        i.WmiSetBrightness(1, toSet)
        break
    }
}
;--------------------------------------------------------------------------------
; 09:30 AM 25/1/2022
:*?:prll::parallel{space} ;/=
:*?:grp::group{space} ;/=
;--------------------------------------------------------------------------------
; go to last 4th line's end in obsidian (saves time)
; you can quickly revert back to your work after reading from other locations
/*
f2:: ; function key F2
IfWinExist ahk_class Chrome_WidgetWin_1
 WinActivateBottom, ahk_class Chrome_WidgetWin_1 ; this is the obsidian id !!! so weird
Else
 Run "C:\Users\HP\AppData\Local\Obsidian\Obsidian.exe" ; truth is stranger than fiction !!!!
send ^{end}{up 3}{end}
return
*/
;--------------------------------------------------------------------------------
:*?:mst::most{space} ;/=
;:*?:emer::employer{space} ;/=
:*?:strtf::stratification{space} ;/=
:*?:fdr::father{space} ;/=
:*?:mdr::mother{space} ;/=
:*?:ivd::individual{space} ;/=
;--------------------------------------------------------------------------------
!b::send {space}but{space} ;/=
;--------------------------------------------------------------------------------
; alt enter
!enter::
send {end 5}{enter} ; send enter 5 times to avoid technical problems
return
;--------------------------------------------------------------------------------
;+g::send ity ;/=
; 08:23 AM 23/1/2022
^!+n::run https://www.netflix.com/browse
return
;--------------------------------------------------------------------------------
:*?:bm::become{space} ;/=
:*?:b]m::became{space} ;/=
:*?:mr::more{space} ;/=
:*?:i\::important{space} ;/=
;:*?:f\::tation{space} ;/=
:*?:agc::agriculture{space} ;11/3=3
;--------------------------------------------------------------------------------
^+!c::
send ^c
sort, clipboard, u ; "u" removes duplicates
send % clipboard
return
;--------------------------------------------------------------------------------
:*?:chrl::chronology{space} ;/=
:*?:arcl::archaeology{space} ;/=
:*?:marg::marriage{space} ;/=
:*?:trml::terminology{space} ;/=
:*?:orgz::organization{space} ;/=
:*?:infv::influence{space} ;/=
:*?:grf::graphy{space} ;/=
:*?:trds::tradition{space} ;/=
:*?:erl::early{space} ;/=
;:*?:lt::late{space} ;/=
;--------------------------------------------------------------------------------
; 05:26 PM 22/1/2022

; for working in this script
; its good when you don't have to press multiple arrow keys to navigate around {space} while
; dealing with hotkeys syntax

!Left::
send {end}{left 11} ; SEND CURSOR TO END OF LINE -> THEN LEFT TO WRITE QUICKLY
return

!Right::
send {down}{end}{left 11} ; SEND CURSOR TO END OF next LINE -> THEN LEFT TO WRITE QUICKLY
return

;--------------------------------------------------------------------------------
/*
:*?:almt::allometric{space} ;/=
:*?:ismt::isometric{space} ;/=
:*?:fts::foetus{space} ;/=
:*?:::life{space} ;/=
:*?:rlat::relative{space} ;/=
:*?:grtr::greater than{space} ;/=
:*?:smlr::smaller than{space} ;/=
:*?:acot::as compared to{space} ;/=
:*?:l-::latter{space} ;/=
:*?:f-::former{space} ;/=
:*?:p+::positive{space} ;/=
:*?:n-::negative{space} ;/=
:*?:mbal::metabolism{space} ;/=
:*?:eft::effect{space} ;/=
:*?:aft::affect{space} ;/=
:*?:prmn::permanent{space} ;/=
:*?:tmpr::temporary{space} ;/=
:*?:cncl::council{space} ;/=
:*?:mbr::member{space} ;/=
:*?:wri::which results in{space} ;/=
:*?:ldz::leads to{space} ;/=
:*?:css::causes{space} ;/=
:*?:cntmp::contemporary{space} ;/=
:*?:hoso::homo sapiens{space} ;/=
:*?:nndr::neanderthals{space} ;/=
:*?:wasi::west asia{space} ;/=
:*?:easi::east asia{space} ;/=
:*?:sasi::south asia{space} ;/=
:*?:::artificial intelligence{space} ;/=
:*?:::skeleton{space} ;/=
:*?:::homo erectus{space} ;/=
:*?:::homo habilis{space} ;/=
:*?:::cro magnon{space} ;/=
:*?:::ice age{space} ;/=
:*?:::extreme{space} ;/=
:*?:::believe{space} ;/=
:*?:::believed{space} ;/=
:*?:::believing{space} ;/=
:*?:::new world{space} ;/=
:*?:::pigment{space} ;/=
:*?:::cultivation{space} ;/=
:*?:::language{space} ;/=
:*?:::recent{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
:*?:::{space} ;/=
*/
;--------------------------------------------------------------------------------
; 12:32 PM 21/1/2022
/*

:*?:::operation{space} ;/=
:*?:::ble{space} ;/= as in contemptible, horrible
:*?:::dable{space} ;=
:*?:::able{space} ;/=
:*?:::ible{space} ;/=
:*?:::tible{space} ;/=
:*?:::vable{space} ;/=
:*?:::hypothalamus{space} ;/=
:*?:::organism{space} ;/=
:*?:::discovered{space} ;/=
*/
; 10:20 AM 20/1/2022
:*?:ftsn::photosynthesis{space} ;/=
:*?:drg::during{space} ;/=
/*
::*?:::in this{space} ;/=
::*?:::in that{space} ;/=
::*?:::what is this{space} ;/=
::*?:::what is that{space} ;/=
:*?:::essential{space} ;/=
:*?:::amino acids{space} ;/=
:*?:::successful{space} ;/=
:*?:::meaning{space} ;/=
*/

:*?:lg::logy ;/=
;--------------------------------------------------------------------------------

;-----------------------------------------------------------make hotstring syntax
;           hotstring
^m::
send :*?:::
sendraw {space}
send {space}{;}{/}{=}{left 11}
return
;--------------------------------------------------------------------------------
;           hotkey
^+m::
send ::::send{space}
sendraw {space}
send {;}{/}{=}{left 10}
return

;	:*:,s::send
;	:*:,r::return
;--------------------------------------------------------------------------------

; introduction lines for any AHK script
:*:,it::
send {#}Singleinstance, Force`n{#}persistent`n
return


;--------------------------------------------------cursor to centre of the colons
^+z::
send, {home}{right 4}
return

;--------------------------------bring cursor to right most side for text writing
/*
       ^+x::	
       send, {end}
       return
*/
; 01:27 PM 19/1/2022
:*?:trs::interesting{space} ;12/3=4
;+t::sendraw tes ;/=
;:*?:tb::{space}to be{space} ;/=
;:*?:dd::{space}the{space} ;/=
;	:*?:oo::{space}of{space} ;/=
;+n::send {space}and{space} ;/=
;:*?:av::advance{space} ;/=
:*?:c3::called{space} ;/=
:*?:m5::made{space} ;/=
:*?:l7::large{space} ;/= note small is s6
:*?:cncs::connection{space} ;/=
:*?:trc::structure{space} ;/=
;--------------------------------------------------------------------------------
/*
; suffix
:*?:i1::ist ;/=
:*?:a1::acy ;/=
; :*?:a2::al ;/=
:*?:c1::city ;4/2=2
:*?:i2::ity ;/=
:*?:m1::ment ;/=
:*?:s1::ship ;/=
:*?:s2::sion ;/=
:*?:i3::ise ;/=
:*?:l1::lation ;/=
:*?:ta2::able ;/=
:*?:i4::ible ;/=
:*?:i5::ive ;/=
:*?:i6::ising ;/=
:*?:i7::ied ;/=
:*?:i8::ical ;/=
:*?:o1::ous ;/=
:*?:a3::ate ;/=
; todo
; ory
; ary (confirm first)
; prefix
:*?:a4::anti{space} ;/=
:*?:a5::auto{space} ;/=
:*?:h1::hetero{space} ;/=
:*?:h2::hyper{space} ;/=
:*?:m2::macro{space} ;/=
:*?:m3::micro{space} ;/=
:*?:n1::non{space} ;/=
:*?:p1::pre{space} ;/=
:*?:p2::post{space} ;/=
:*?:t1::trans{space} ;/=
; :*?:u1::uni ;/=
:*?:t2::tration{space} ;/=
:*?:s3::supra{space} ;/=
:*?:s4::sub{space} ;/=

; Common Adjectives

:*?:g1::good{space} ;/=
:*?:b1::bad{space} ;/=

:*?:n2::new{space} ;/=
:*?:o2::old{space} ;/=

:*?:f1::first{space} ;/=
:*?:l1::last{space} ;/=

:*?:p3::previous{space} ;/=
:*?:n3::next{space} ;/=

:*?:l2::long{space} ;/=
:*?:s5::short{space} ;/=

:*?:g2::great{space} ;/=

:*?:b2::big{space} ;/=
:*?:l3::little{space} ;/=
:*?:s6::small{space} ;/=

:*?:o3::own{space} ;/=

:*?:l4::left{space} ;/=
:*?:r1::right{space} ;/=

:*?:h3::high{space} ;/=
:*?:l5::low{space} ;/=

:*?:s7::same{space} ;/=
; different already made

:*?:y1::young{space} ;/=
:*?:o4::old{space} ;/=

:*?:p4::public{space} ;/=
:*?:p5::private{space} ;/=

; verb conjugation

:*?:i9::it is{space} ;6/2=3
	:*?:i]9::it is not{space} ;10/2=5

:*?:w1::was{space} ;4/2=2
	:*?:w]1::was not{space} ;8/2=4

:*?:w2::were{space} ;5/2=2
	:*?:w]2::were not{space} ;9/2=4

:*?:b6::being{space} ;6/2=3
	:*?:b]6::not being{space} ;10/2=5

:*?:b7::been{space} ;5/2=2
	:*?:b]7::not been{space} ;9/2=4

:*?:h6::have been{space} ;10/3=3
	:*?:h]6::have not been{space} ;14/3=4

:*?:h7::has been{space} ;9/3=3
	:*?:h]7::has not been{space} ;13/3=4

:*?:h8::had been{space} ;9/3=3
	:*?:h8::had not been{space} ;13/3=4

:*?:h9::have{space} ;/=
:*?:h]9::have not{space} ;/=

:*?:h5::has{space} ;/=
:*?:h]5::has not{space} ;/=

:*?:h6::had{space} ;/=
:*?:h]6::had not{space} ;/=

:*?:w3::will{space} ;/=
:*?:w]3::will not{space} ;/=

:*?:d1::does{space} ;/=
	:*?:d]1::does not{space} ;/=

:*?:d2::did{space} ;/=
	:*?:d]2::did not{space} ;/=

:*?:b3::become{space} ;/=

:*?:a6::another{space} ;/=
:*?:m4::many{space} ;/=/
:*?:i9::important{space} ;/=
:*?:d3::different{space} ;/=
:*?:a7::always{space} ;/=
:*?:a8::almost{space} ;/=
:*?:a9::also{space} ;/=
:*?:l6::later{space} ;/=
:*?:1a::around{space} ;/=

:*?:2a::above{space} ;/=
:*?:b4::below{space} ;/=
:*?:t3::together{space} ;/=
:*?:3a::after{space} ;/=
:*?:b5::before{space} ;/=

:*?:tn::then{space} ;/=
:*?:dn::than{space} ;/=
;	:*?:tt::than the{space} ;9/=

:*?:v1::very{space} ;/=

; propositions
:*?:4i::into{space} ;/=
; :*?:t4::at ;/=
; :*?:t5::to ;/=
:*?:u1::under{space} ;/=
:*?:w4::{space}with{space} ;/=
	:*?:w]4::{space}without{space} ;/=
:*?:4a::about{space} ;/=
:*?:s8::something{space} ;10/2=5
:*?:t4::those{space} ;/=
:*?:4w::{space}which{space} ;/=
	:*?:wd4::{space}with which{space} ;/=
:*?:h7::however{space} ;/=
:*?:otoh::on the other hand{space} ;18/4=4

:*?:t5::that is{space} ;/=
	:*?:t]7::that is not{space} ;/=

:*?:t6::that was{space} ;/=
	:*?:t]8::that was not{space} ;/=

:*?:t7::this is{space} ;/=
	:*?:t]9::this is not{space} ;/=

:*?:t8::this was{space} ;/=
	:*?:t]8::this was not{space} ;14/4=3

:*?:h8::how{space} ;/=
:*?:w5::why{space} ;/=
:*?:w6::what{space} ;/=
	:*?:whs::what is{space} ;/=
	:*?:wws::what was{space} ;/=
	:*?:wwl::what will{space} ;/=
:*?:c2::can{space} ;4/2=2
	:*?:c]2::cannot{space} ;7/3= ; 04:10 PM 20/1/2022
*/
; 11:14 AM 18/1/2022
;:*?:w7::when{space} ;5/2=2
~ a & d::send {space}all the{space}{left 9}{bs}{right 9}
:*?:nu4::nutrition{space} ;/=
/*
file path
autohotkey in editor script macros for faster edits
C:\Users\HP\OneDrive\Desktop\autohotkey scripts\ahk script making shortcuts
*/

;--------------------------------------------------------------------------------
;--------------------------------------------------------------------------------*

:*?:sav::available ;9/2=4
; 01:30 PM 17/1/2022i
:*?:a]::{space}after{space} ;7/2=3
;:*?:dt::{space}does not{space} ;10/2=5
:*?:ef/::efficiency ;10/3=3
;--------------------------------------------------------------------------------
^+s::sendraw {space} ; 7/3=2
; 12:05 AM 16/1/2022
; note - this script has usage in obsidian date format
!5:: ;10/2=5
send % a_yyyy
send -
send % a_mm
send -
send % a_dd
return
;--------------------------------------------------------------------------------
; 04:13 PM 15/1/2022
:*?:fr.::frequency{space} ;/=
:*?:so.::society{space} ;/= 
:*?:i.::ism ;/=  
:*?:if.::information{space} ;/= n
:*?:g/::global{space} ;/= 
:*?:l/::local{space} ;/= 
;:*?:rr::{space}are{space} ;/= 
:*?:pr8::pressure{space} ;/= 
:*?:mu4::mutations{space} ;/= 
:*?:fw::forward{space} ;/= 
:*?:bw::backward{space} ;/= 
:*?:sc.::section{space} ;/= 
;--------------------------------------------------------------------------------
; delete temporary files class 30 ahk course on udemy
;/=
/*
FileDelete, C:\Windows\Prefetch\*
FileDelete, C:\Windows\temp\*
FileDelete, C:\Windows\Prefetch\*
FileDelete, C:\Users\HP\AppData\Local\Temp\*
*/
;--------------------------------------------------------------------------------
; 11:30 AM 14/1/2022
:*?:/n::north ;5/2=2
:*?:/s::south ;5/2=2
:*?:/e::east ;4/2=2
:*?:/w::west ;4/2=2
;--------------------------------------------------------------------------------
; note - go to "1. hotstring syntax" file to edit autohotkey editing functions in the folder - "autohotkey scripts"

; 09:38 AM 13/1/2022
; can use comma to write multi line code
:*?:hma::human ;5/3=1
:*?:cfn::classification{space} ;14/3=4
:*?:eva::evolution{space} ;/= 
:*?:prq::primate{space} ;/= 
:*?:prs::process{space} ;/= 
:*?:ec.::ecology{space} ;/= 
:*?:in.::introduction{space} ;12/3=4
:*?:ag.::against{space} ;/= 
;:*?:di.::disease{space} ;/= 
:*?:ef.::effect{space} ;/= 
:*?:.d::different{space} ;/= 
;:*?:ff::{space}for{space} ;/= 
:*:th.::theory{space} ;/= 
:*:pr4::protein{space} ;/= 
:*:cr4::carbohydrate{space} ;/= 
:*:ch4::chromosome{space} ;/= 
:*:en4::enzyme{space} ;/= 
:*:di4::discover{space} ;/= 
:*:d4::DNA{space} ;/= 
:*:su4::substance{space} ;/= 
:*:ge4::genetics{space} ;/= 
:*:v4::vitamins{space} ;/= 
;--------------------------------------------------------------------------------
; 08:59 AM 10/1/2022
:*:fnj::footnote ;/= 
; 09:30 AM 09/1/2022
;         :*?:ds::{space}that{space} ;/= 
; :*?:c/::cannot{space} ;/= 
:*?:st/::scheduled tribes  ;/= ; 04:10 PM 09/1/2022
:*?:sc/::scheduled castes  ;/= ; 04:10 PM 09/1/2022
:*?:ppa::population{space}  ;10/3=3
:*?:ppl::people{space}  ;7/3=2
:*?:ecy::economy{space} ;7/2=3
:*?:dvl::develop{space} ;8/3=2
:*?:dv]l::development{space} ;11/4=3
:*?:frr::forest{space} ;6/3=2
:*?:flk::following{space} ;9/2=4
;--------------------------------------------------------------------------------
; 03:13 AM 08/1/2022
;:?*:tj::{space}the{space} ;/= 
;:?*:fj::{space}of{space} ;/= 
; 05:08 AM 07/1/2022

^![:: send {#}book{space}{[}{]}{(}{)}{left 3} ;/= 

;+a::send ed ;/= 
;+q::send ted ;/= 

:*:1s::primary{space} ;/= 
:*:2s::secondary{space} ;/= 
;--------------------------------------------------------------------------------
; 09:41 PM 05/1/2022
; endkeys are purely ergonomic in nature
:*?:s/::%s///g{left 3} ; vim search and replace ;/= 
:*:ij::increase{space} ;/= 
:*:dj::decrease{space} ;/= 
:*:pf::positive{space}  ;/= 
:*:nf::negative{space} ;/= 
:*:dpj::directly proportional{space} ;/= 
:*:ipj::inversely proportional{space} ;/= 
:*?:cz::civilization{space} ;/= 
; 08:27 AM 05/1/2022
:*:bj::but{space} ;/= 
:*:nj::not{space} ;/= 
:*?:vj::between{space} ;/= 

;+y::send ed
;:*:ej::est ; 04:27 PM 15/1/2022
;+s::send er ;/= 
;+w::send ter ;/= 
;--------------------------------------------------------------------------------
; 08:44 AM 03/1/2022
:*:sj::should{space} ;/= 
:*:cj::could{space} ;/= 
:*:wj::would{space} ;/= 

:*:bc::because ;/= 

:*?:nm/::north america{space} ;/= 
:*?:sm/::south america{space} ;/= 
:*?:cm/::central america{space} ;/= 
	:*?:mc/::central american{space} ;/= 

:*:eoj::each other{space} ;/= 
;--------------------------------------------------------------------------------
; 02:25 AM 31/12/2021
!n:: send {space}and{space} ;/= 
^!n::send {space}and the{space} ;/= 
;!d:: send {space}the{space} ;/= 
^+f:: send {space}for the{space} ;9/3=3
;!o::send {space}of{space} ;/= 
;--------------------------------------------------------------------------------
; 06:55 AM 30/12/2021
; diseases
; end fey - f
:*:tbf::tuberculosis ;/= 
:*:dbf::diabetes ;/= 
:*:mlf::malaria ;/= 
:*:def::dengue ;/= 
:*:nf::natural ;/= 
:*:af,::artificial ;/= 

:*:bck::bacteria ;/= 
:*:vrk::virus ;/= 

; TO FIND OUT ALL POSSIBLE KEY COMBINATION USING MATHEMATICS !!
	; https://www.calculatorsoup.com/calculators/discretemathematics/combinations.php
	; to get a List
	; https://www.mathsisfun.com/combinatorics/combinations-permutations-calculator.html
;--------------------------------------------------------------------------------
; 01:50 AM 30/12/2021
:*:r,::review ;/= 
;--------------------------------------------------------------------------------
; 06:38 PM 24/12/2021
:*:hq.::headquarter ;/= 
;--------------------------------------------------------------------------------
; 06:52 PM 23/12/2021
:?*:a,::'s{space} ;/= 
;--------------------------------------------------------------------------------
;05:00 PM 21/12/2021
; DOWN ARROW AND SEND ENTER
; for ease in search
^]::
send {down} {enter} ;/= 
return

; MOST FREQUENT APPLICATION ASSIGNED HERE
^[::
run https://www.youtube.com/ ;/= 
return
;--------------------------------------------------------------------------------
; 04:51 PM 20/12/2021
; endkey - h
:*:prh::president{space} ;/= 
:*:pmh::prime minister{space} ;/= 
:*:poih::president of india{space} ;/=  


;--------------------------------------------------------------------------------LOOP
; 02:08 PM 18/12/2021
; TESTING
+!z::
x := 1

n:=5 ; tk loop
loop % n ; LOOP - MODIFY THIS NUMBER TO GET DESIRED QUANTITY
{
	send % x++
	send {.}
	send {enter}
}

; ADD SPACE AT THE END OF EACH LINE
loop % n
{
send {up}{end}{space} ; COSMETICS
}
return
;--------------------------------------------------------------------------------

/*
send !z 
send current affairs daily{enter} ;/= 
return
*/
;--------------------------------------------------------------------------------
; 12:35 AM 18/12/2021
; gentlemanly stuff
!,:: ;/= 
run "C:\Users\HP\OneDrive\Desktop\Tor Browser\Browser\firefox.exe"
sleep 6000
send {enter}
sleep 6000
send ^l
send porn{enter}
sleep 6000
send {down}
return
;--------------------------------------------------------------------------------
; 04:50 AM 11/12/2021
:*?:k.::knowledge{space} ;/= 
:*?:.m::management{space} ;/= 
;----------------------------------------------------------------------remap keys
; meta purpose for remapping escape to capslock ? ==> for vim text editor
; remapping keys
capslock::esc ;/=
esc::capslock ;/= 
;--------------------------------------------------------------------------------
;
^+p::sendraw C:\Users\HP\OneDrive\Documents\OBSIDIAN MASTER FOLDER\wo de dongxi\diguo - 2.1 Ajitanatha
; 12:20 AM 09/12/2021 - doing this file on vim
; 04:35 PM 09/12/2021
; wo de details
; city - u\ = udaipur (refer line 668)
:*?:id/::eklavyasingh665@gmail.com ; email id ;/= 
:*?:ek/::eklavya singh ;/=
:*?:fn/::eklavya ; first name ;/= 
:*?:ln/::singh ; last name ;/= 
:*?:adr/::75, M-road, new keshav nagar ; home address ;/= 
:*?:ph/::7300313898 ;/= 
:*?:pn/::313001 ; pincode ;/= 
:*?:pp/::om prakash meena ;/= 
:*?:ma/::urmila devi ;/= 
;--------------------------------------------------------------------------------
;                                              PHRASES AUTOMATION
:*?:idk,::I don't know ;/= 
:*?:ahk,::autohotkey ;/= 
:*?:awa,::as well as ;/= 
:*?:odf,::of the following ;/= 
:*?:idf,::in the following ;/= 
:*?:ed,::endangered ;/= 
:*?:en,::endemic ;/= 
:*?:vl,::vulnerable ;/= 
:*?:ce,::critically endangered ;/= 
:*?:kbe::keyboard ;/= 
:*?:erg,::ergonomic ;/= 
:*?:imo,::in my opinion ;/= 
:*?:cb,::can be ;/= 
:*?:tbh,::to be honest ;/= 
;--------------------------------------------------------------------------------
/*
^!c::
send, %Clipboard% is the
return
*/
;--------------------------------------------------------------------------------

; future todo
/*
;----------------------------------------------------2 clipboard items with "and"
::
send, %Clipboard% and %Clipboard% 
return
;--------------------------------------------------------------------------------

*/

;^!s::Suspend  ; Ctrl+Alt+S

;                                 periodic table elements
:*:H,::Hydrogen ;/= 
:*:He,::Helium ;/= 
:*:Li,::Lithium ;/= 
:*:Be,::Beryllium ;/= 
:*:B,::Boron ;/= 
:*:C,::Carbon ;/= 
:*:N,::Nitrogen ;/= 
:*:O,::Oxygen ;/= 
:*:F,::Fluorine ;/= 
:*:Ne,::Neon ;/= 
:*:Na,::Sodium ;/= 
:*:Mg,::Magnesium ;/= 
:*:Al,::Aluminium ;/= 
:*:Si,::Silicon ;/= 
:*:P,::Phosphorus ;/= 
:*:S,::Sulfur ;/= 
:*:Cl,::Chlorine ;/= 
:*:Ar,::Argon ;/= 
:*:K,::Potassium ;/= 
:*:Ca,::Calcium ;/= 
:*:Sc,::Scandium ;/= 
:*:Ti,::Titanium ;/= 
:*:V,::Vanadium ;/= 
:*:Cr,::Chromium ;/= 
:*:Mn,::Manganese ;/= 
:*:Fe,::Iron ;/= 
:*:Co,::Cobalt ;/= 
:*:Ni,::Nickel ;/= 
:*:Cu,::Coppgr ;/= 
:*:Zn,::Zinc ;/= 
:*:Ga,::Gallium ;/= 
:*:Ge,::Germanium ;/= 
:*:As,::Arsenic ;/= 
:*:Se,::Selenium ;/= 
:*:Br,::Bromine ;/= 
:*:Kr,::Krypton ;/= 
:*:Rb,::Rubidium ;/= 
:*:Sr,::Strontium ;/= 
:*:Y,::Yttrium ;/= 
:*:Zr,::Zirconium ;/= 
:*:Nb,::Niobium ;/= 
:*:Mo,::Molybdenum ;/= 
:*:Tc,::Technetium ;/= 
:*:Ru,::Ruthenium ;/= 
:*:Rh,::Rhodium ;/= 
:*:Pd,::Palladium ;/= 
:*:Ag,::Silver ;/= 
:*:Cd,::Cadmium ;/= 
:*:In,::Indium ;/= 
:*:Sn,::Tin ;/= 
:*:Sb,::Antimony ;/= 
:*:Te,::Tellurium ;/= 
:*:I,::Iodine ;/= 
:*:Xe,::Xenon ;/= 
:*:Cs,::Cesium ;/= 
:*:Ba,::Barium ;/= 
:*:La,::Lanthanum ;/= 
:*:Ce,::Cerium ;/= 
:*:Pr,::Praseodymium ;/= 
:*:Nd,::Neodymium ;/= 
:*:Pm,::Promethium ;/= 
:*:Sm,::Samarium ;/= 
:*:Eu,::Europium ;/= 
:*:Gd,::Gadolinium ;/= 
:*:Tb,::Terbium ;/= 
:*:Dy,::Dysprosium ;/= 
:*:Ho,::Holmium ;/= 
:*:Er,::Erbium ;6/3=2
:*:Tm,::Thulium ;7/3=2
:*:Yb,::Ytterbium ;9/3= 3
:*:Lu,::Lutetium ;8/3= 2
:*:Hf,::Hafnium ;/= 
:*:Ta,::Tantalum ;/= 
:*:W,::Tungsten ;/= 
:*:Re,::Rhenium ;/= 
:*:Os,::Osmium ;/= 
:*:Ir,::Iridium ;/= 
:*:Pt,::Platinum ;/= 
:*:Au,::Gold ;/= 
:*:Hg,::Mercury ;/= 
:*:Tl,::Thallium ;/= 
:*:Pb,::Lead ;/= 
:*:Bi,::Bismuth ;/= 
:*:Po,::Polonium ;/= 
:*:At,::Astatine ;/= 
:*:Rn,::Radon ;/= 
:*:Fr,::Francium ;/= 
:*:Ra,::Radium ;/= 
:*:Ac,::Actinium ;/= 
:*:Th,::Thorium ;/= 
:*:Pa,::Protactinium ;/= 
:*:U,::Uranium ;/= 
:*:Np,::Neptunium ;/= 
:*:Pu,::Plutonium ;/= 
:*:Am,::Americium ;/= 
:*:Cm,::Curium ;/= 
:*:Bk,::Berkelium ;/= 
:*:Cf,::Californium ;/= 
:*:Es,::Einsteinium ;/= 
:*:Fm,::Fermium ;/= 
:*:Md,::Mendelevium ;/= 
:*:No,::Nobelium ;/= 
:*:Lr,::Lawrencium ;/= 
:*:Rf,::Rutherfordium ;/= 
:*:Db,::Dubnium ;/= 
:*:Sg,::Seaborgium ;/= 
:*:Bh,::Bohrium ;/= 
:*:Hs,::Hassium ;/= 
:*:Mt,::Meitnerium ;/= 
:*:Ds,::Darmstadtium ;/= 
:*:Rg,::Roentgenium ;/= 
:*:Cn,::Copernicium ;/= 
:*:Nh,::Nihonium ;/= 
:*:Fl,::Flerovium ;/= 
:*:Mc,::Moscovium ;/= 
:*:Lv,::Livermorium ;/= 
:*:Ts,::Tennessine ;/= 
:*:Og,::Oganesson ;/= 
;--------------------------------------------------------------------------------
;                                 calendar months
:*:1m::jan{space} ;/= 
:*:2m::feb{space} ;/= 
:*:3m::mar{space} ;/= 
:*:4m::apr{space} ;/= 
:*:5m::may{space} ;/= 
:*:6m::jun{space} ;/= 
:*:7m::jul{space} ;/= 
:*:8m::aug{space} ;/= 
:*:9m::sep{space} ;/= 

/*
:*:bm::nov{space}
:*:cm::dec{space}
*/

/*

of the
in the
to the
on the
for the
and the
to be
is a
with the
from the
by the
at the
of a
in a
will be


*/

; q = +
; w = -

:*:mm,::maximum ;/= 
	:*:,mm::minimum ;/= 

:*:emp,::employment{space}
	:*:wmp::unemployment{space} ;/= 
 ;/= 
 ;/= 
/* ;/= 
	 ;/= 
	:*:ifl::inflation ;/= 
		:*:wfl::deflation{space}
*/

/*
	:*:dd::demand{space}
		:*:wd::supply{space}
	
	:*:cp::consumption{space}
		:*:wp::expenditure{space}
*/

/*
:*:::{space}
	:*:::{space}
*/
;--------------------------------------------------------------------------------
; SUFFIXES
;                              tration
/*
+e::
send tic
return
*/
;--------------------------------------------------------------------------------
;                              tion
+f::
send tion
;legacy code for hotstring
	; {left 5}{bs}{right 5}
return
;--------------------------------------------------------------------------------
;                              ion
;--------------------------------------------------------------------------------
;                              ian
!e::
send ian
return
;--------------------------------------------------------------------------------
/*
;                              ing
+r::
send ing
*/
; legacy
	;{left 4}{bs}{right 4}
	return
;--------------------------------------------------------------------------------
;:*?:::{space}
;:*?:::{space}
;:*?:::{space}
;:*?:::{space}
;:*?:::{space}
;---------------------------------------------------------------------TIME SCALES
; ENGKEY - "-" SIGN
:*?:y-::year
:*?:d-::decade ;/= 
:*?:c-::century ;/= 
:*?:m-::month ;/= 
:*?:w-::week ;/= 
	  
:*:mya-::million years ago ;/= 
:*:bya-::billion years ago ;/= 
:*?:m``::million ;/=
:*?:b``::billion ;/=
:*?:t``::trillion ;/=
;--------------------------------------------------------------------------------
;----------------------------------------------------------------LETTERED NUMBERS
; alphabetic numbers
; ENDKEY - "-" SIGN
:*?:1k::on ;/= e
:*?:2k::two ;/= 
:*?:3k::three ;/= 
:*?:4k::four ;/= 
:*?:5k::five ;/= 
:*?:6k::six ;/= 
:*?:7k::seven ;/= 
:*?:8k::eight ;/= 
:*?:9k::nine ;/= 
;--------------------------------------------------------------------------------
; 12th century
; 1100s
;combinqd qfficiqncy
:*:0q::[1100]] ;/=
:*:1q::[1101]] ;/=
:*:2q::[1102]] ;/=
:*:3q::[1103]] ;/=
:*:4q::[1104]] ;/=
:*:5q::[1105]] ;/=
:*:6q::[1106]] ;/=
:*:7q::[1107]] ;/=
:*:8q::[1108]] ;/=
:*:9q::[1109]] ;/=
:*:10q::[1110]] ;/=
:*:11q::[1111]] ;/=
:*:12q::[1112]] ;/=
:*:13q::[1113]] ;/=
:*:14q::[1114]] ;/=
:*:15q::[1115]] ;/=
:*:16q::[1116]] ;/=
:*:17q::[1117]] ;/=
:*:18q::[1118]] ;/=
:*:19q::[1119]] ;/=
:*:20q::[1120]] ;/=
:*:21q::[1121]] ;/=
:*:22q::[1122]] ;/=
:*:23q::[1123]] ;/=
:*:24q::[1124]] ;/=
:*:25q::[1125]] ;/=
:*:26q::[1126]] ;/=
:*:27q::[1127]] ;/=
:*:28q::[1128]] ;/=
:*:29q::[1129]] ;/=
:*:30q::[1130]] ;/=
:*:31q::[1131]] ;/=
:*:32q::[1132]] ;/=
:*:33q::[1133]] ;/=
:*:34q::[1134]] ;/=
:*:35q::[1135]] ;/=
:*:36q::[1136]] ;/=
:*:37q::[1137]] ;/=
:*:38q::[1138]] ;/=
:*:39q::[1139]] ;/=
:*:40q::[1140]] ;/=
:*:41q::[1141]] ;/=
:*:42q::[1142]] ;/=
:*:43q::[1143]] ;/=
:*:44q::[1144]] ;/=
:*:45q::[1145]] ;/=
:*:46q::[1146]] ;/=
:*:47q::[1147]] ;/=
:*:48q::[1148]] ;/=
:*:49q::[1149]] ;/=
:*:50q::[1150]] ;/=
:*:51q::[1151]] ;/=
:*:52q::[1152]] ;/=
:*:53q::[1153]] ;/=
:*:54q::[1154]] ;/=
:*:55q::[1155]] ;/=
:*:56q::[1156]] ;/=
:*:57q::[1157]] ;/=
:*:58q::[1158]] ;/=
:*:59q::[1159]] ;/=
:*:60q::[1160]] ;/=
:*:61q::[1161]] ;/=
:*:62q::[1162]] ;/=
:*:63q::[1163]] ;/=
:*:64q::[1164]] ;/=
:*:65q::[1165]] ;/=
:*:66q::[1166]] ;/=
:*:67q::[1167]] ;/=
:*:68q::[1168]] ;/=
:*:69q::[1169]] ;/=
:*:70q::[1170]] ;/=
:*:71q::[1171]] ;/=
:*:72q::[1172]] ;/=
:*:73q::[1173]] ;/=
:*:74q::[1174]] ;/=
:*:75q::[1175]] ;/=
:*:76q::[1176]] ;/=
:*:77q::[1177]] ;/=
:*:78q::[1178]] ;/=
:*:79q::[1179]] ;/=
:*:80q::[1180]] ;/=
:*:81q::[1181]] ;/=
:*:82q::[1182]] ;/=
:*:83q::[1183]] ;/=
:*:84q::[1184]] ;/=
:*:85q::[1185]] ;/=
:*:86q::[1186]] ;/=
:*:87q::[1187]] ;/=
:*:88q::[1188]] ;/=
:*:89q::[1189]] ;/=
:*:90q::[1190]] ;/=
:*:91q::[1191]] ;/=
:*:92q::[1192]] ;/=
:*:93q::[1193]] ;/=
:*:94q::[1194]] ;/=
:*:95q::[1195]] ;/=
:*:96q::[1196]] ;/=
:*:97q::[1197]] ;/=
:*:98q::[1198]] ;/=
:*:99q::[1199]] ;/=
;--------------------------------------------------------------------------------
; 13th century
;				 1200s
;combinwd wfficiwncy
:*:0w::[1200]] ;/=
:*:1w::[1201]] ;/=
:*:2w::[1202]] ;/=
:*:3w::[1203]] ;/=
:*:4w::[1204]] ;/=
:*:5w::[1205]] ;/=
:*:6w::[1206]] ;/=
:*:7w::[1207]] ;/=
:*:8w::[1208]] ;/=
:*:9w::[1209]] ;/=
:*:10w::[1210]] ;/=
:*:11w::[1211]] ;/=
:*:12w::[1212]] ;/=
:*:13w::[1213]] ;/=
:*:14w::[1214]] ;/=
:*:15w::[1215]] ;/=
:*:16w::[1216]] ;/=
:*:17w::[1217]] ;/=
:*:18w::[1218]] ;/=
:*:19w::[1219]] ;/=
:*:20w::[1220]] ;/=
:*:21w::[1221]] ;/=
:*:22w::[1222]] ;/=
:*:23w::[1223]] ;/=
:*:24w::[1224]] ;/=
:*:25w::[1225]] ;/=
:*:26w::[1226]] ;/=
:*:27w::[1227]] ;/=
:*:28w::[1228]] ;/=
:*:29w::[1229]] ;/=
:*:30w::[1230]] ;/=
:*:31w::[1231]] ;/=
:*:32w::[1232]] ;/=
:*:33w::[1233]] ;/=
:*:34w::[1234]] ;/=
:*:35w::[1235]] ;/=
:*:36w::[1236]] ;/=
:*:37w::[1237]] ;/=
:*:38w::[1238]] ;/=
:*:39w::[1239]] ;/=
:*:40w::[1240]] ;/=
:*:41w::[1241]] ;/=
:*:42w::[1242]] ;/=
:*:43w::[1243]] ;/=
:*:44w::[1244]] ;/=
:*:45w::[1245]] ;/=
:*:46w::[1246]] ;/=
:*:47w::[1247]] ;/=
:*:48w::[1248]] ;/=
:*:49w::[1249]] ;/=
:*:50w::[1250]] ;/=
:*:51w::[1251]] ;/=
:*:52w::[1252]] ;/=
:*:53w::[1253]] ;/=
:*:54w::[1254]] ;/=
:*:55w::[1255]] ;/=
:*:56w::[1256]] ;/=
:*:57w::[1257]] ;/=
:*:58w::[1258]] ;/=
:*:59w::[1259]] ;/=
:*:60w::[1260]] ;/=
:*:61w::[1261]] ;/=
:*:62w::[1262]] ;/=
:*:63w::[1263]] ;/=
:*:64w::[1264]] ;/=
:*:65w::[1265]] ;/=
:*:66w::[1266]] ;/=
:*:67w::[1267]] ;/=
:*:68w::[1268]] ;/=
:*:69w::[1269]] ;/=
:*:70w::[1270]] ;/=
:*:71w::[1271]] ;/=
:*:72w::[1272]] ;/=
:*:73w::[1273]] ;/=
:*:74w::[1274]] ;/=
:*:75w::[1275]] ;/=
:*:76w::[1276]] ;/=
:*:77w::[1277]] ;/=
:*:78w::[1278]] ;/=
:*:79w::[1279]] ;/=
:*:80w::[1280]] ;/=
:*:81w::[1281]] ;/=
:*:82w::[1282]] ;/=
:*:83w::[1283]] ;/=
:*:84w::[1284]] ;/=
:*:85w::[1285]] ;/=
:*:86w::[1286]] ;/=
:*:87w::[1287]] ;/=
:*:88w::[1288]] ;/=
:*:89w::[1289]] ;/=
:*:90w::[1290]] ;/=
:*:91w::[1291]] ;/=
:*:92w::[1292]] ;/=
:*:93w::[1293]] ;/=
:*:94w::[1294]] ;/=
:*:95w::[1295]] ;/=
:*:96w::[1296]] ;/=
:*:97w::[1297]] ;/=
:*:98w::[1298]] ;/=
:*:99w::[1299]] ;/=
;--------------------------------------------------------------------------------
; 14th century
;				 1300s
;combined efficiency
:*:0e::[1300]] ;/=
:*:1e::[1301]] ;/=
:*:2e::[1302]] ;/=
:*:3e::[1303]] ;/=
:*:4e::[1304]] ;/=
:*:5e::[1305]] ;/=
:*:6e::[1306]] ;/=
:*:7e::[1307]] ;/=
:*:8e::[1308]] ;/=
:*:9e::[1309]] ;/=
:*:10e::[1310]] ;/=
:*:11e::[1311]] ;/=
:*:12e::[1312]] ;/=
:*:13e::[1313]] ;/=
:*:14e::[1314]] ;/=
:*:15e::[1315]] ;/=
:*:16e::[1316]] ;/=
:*:17e::[1317]] ;/=
:*:18e::[1318]] ;/=
:*:19e::[1319]] ;/=
:*:20e::[1320]] ;/=
:*:21e::[1321]] ;/=
:*:22e::[1322]] ;/=
:*:23e::[1323]] ;/=
:*:24e::[1324]] ;/=
:*:25e::[1325]] ;/=
:*:26e::[1326]] ;/=
:*:27e::[1327]] ;/=
:*:28e::[1328]] ;/=
:*:29e::[1329]] ;/=
:*:30e::[1330]] ;/=
:*:31e::[1331]] ;/=
:*:32e::[1332]] ;/=
:*:33e::[1333]] ;/=
:*:34e::[1334]] ;/=
:*:35e::[1335]] ;/=
:*:36e::[1336]] ;/=
:*:37e::[1337]] ;/=
:*:38e::[1338]] ;/=
:*:39e::[1339]] ;/=
:*:40e::[1340]] ;/=
:*:41e::[1341]] ;/=
:*:42e::[1342]] ;/=
:*:43e::[1343]] ;/=
:*:44e::[1344]] ;/=
:*:45e::[1345]] ;/=
:*:46e::[1346]] ;/=
:*:47e::[1347]] ;/=
:*:48e::[1348]] ;/=
:*:49e::[1349]] ;/=
:*:50e::[1350]] ;/=
:*:51e::[1351]] ;/=
:*:52e::[1352]] ;/=
:*:53e::[1353]] ;/=
:*:54e::[1354]] ;/=
:*:55e::[1355]] ;/=
:*:56e::[1356]] ;/=
:*:57e::[1357]] ;/=
:*:58e::[1358]] ;/=
:*:59e::[1359]] ;/=
:*:60e::[1360]] ;/=
:*:61e::[1361]] ;/=
:*:62e::[1362]] ;/=
:*:63e::[1363]] ;/=
:*:64e::[1364]] ;/=
:*:65e::[1365]] ;/=
:*:66e::[1366]] ;/=
:*:67e::[1367]] ;/=
:*:68e::[1368]] ;/=
:*:69e::[1369]] ;/=
:*:70e::[1370]] ;/=
:*:71e::[1371]] ;/=
:*:72e::[1372]] ;/=
:*:73e::[1373]] ;/=
:*:74e::[1374]] ;/=
:*:75e::[1375]] ;/=
:*:76e::[1376]] ;/=
:*:77e::[1377]] ;/=
:*:78e::[1378]] ;/=
:*:79e::[1379]] ;/=
:*:80e::[1380]] ;/=
:*:81e::[1381]] ;/=
:*:82e::[1382]] ;/=
:*:83e::[1383]] ;/=
:*:84e::[1384]] ;/=
:*:85e::[1385]] ;/=
:*:86e::[1386]] ;/=
:*:87e::[1387]] ;/=
:*:88e::[1388]] ;/=
:*:89e::[1389]] ;/=
:*:90e::[1390]] ;/=
:*:91e::[1391]] ;/=
:*:92e::[1392]] ;/=
:*:93e::[1393]] ;/=
:*:94e::[1394]] ;/=
:*:95e::[1395]] ;/=
:*:96e::[1396]] ;/=
:*:97e::[1397]] ;/=
:*:98e::[1398]] ;/=
:*:99e::[1399]] ;/=
;--------------------------------------------------------------------------------
; endkey - reverse of alphabetic numbers
:*?:1j::first{space} ;/= 
:*?:2j::second{space} ;/= 
:*?:3j::third{space} ;/= 
:*?:4j::fourth{space} ;/= 
:*?:5j::fifth{space} ;/= 
:*?:6j::sixth{space} ;/= 
:*?:7j::seventh{space} ;/= 
:*?:8j::eight{space} ;/= 
:*?:9j::ninth{space} ;/= 
;--------------------------------------------------------------------------------
; 15th century
;				 1400s
;combined efficiencr
:*:0r::[1400]] ;/=
:*:1r::[1401]] ;/=
:*:2r::[1402]] ;/=
:*:3r::[1403]] ;/=
:*:4r::[1404]] ;/=
:*:5r::[1405]] ;/=
:*:6r::[1406]] ;/=
:*:7r::[1407]] ;/=
:*:8r::[1408]] ;/=
:*:9r::[1409]] ;/=
:*:10r::[1410]] ;/=
:*:11r::[1411]] ;/=
:*:12r::[1412]] ;/=
:*:13r::[1413]] ;/=
:*:14r::[1414]] ;/=
:*:15r::[1415]] ;/=
:*:16r::[1416]] ;/=
:*:17r::[1417]] ;/=
:*:18r::[1418]] ;/=
:*:19r::[1419]] ;/=
:*:20r::[1420]] ;/=
:*:21r::[1421]] ;/=
:*:22r::[1422]] ;/=
:*:23r::[1423]] ;/=
:*:24r::[1424]] ;/=
:*:25r::[1425]] ;/=
:*:26r::[1426]] ;/=
:*:27r::[1427]] ;/=
:*:28r::[1428]] ;/=
:*:29r::[1429]] ;/=
:*:30r::[1430]] ;/=
:*:31r::[1431]] ;/=
:*:32r::[1432]] ;/=
:*:33r::[1433]] ;/=
:*:34r::[1434]] ;/=
:*:35r::[1435]] ;/=
:*:36r::[1436]] ;/=
:*:37r::[1437]] ;/=
:*:38r::[1438]] ;/=
:*:39r::[1439]] ;/=
:*:40r::[1440]] ;/=
:*:41r::[1441]] ;/=
:*:42r::[1442]] ;/=
:*:43r::[1443]] ;/=
:*:44r::[1444]] ;/=
:*:45r::[1445]] ;/=
:*:46r::[1446]] ;/=
:*:47r::[1447]] ;/=
:*:48r::[1448]] ;/=
:*:49r::[1449]] ;/=
:*:50r::[1450]] ;/=
:*:51r::[1451]] ;/=
:*:52r::[1452]] ;/=
:*:53r::[1453]] ;/=
:*:54r::[1454]] ;/=
:*:55r::[1455]] ;/=
:*:56r::[1456]] ;/=
:*:57r::[1457]] ;/=
:*:58r::[1458]] ;/=
:*:59r::[1459]] ;/=
:*:60r::[1460]] ;/=
:*:61r::[1461]] ;/=
:*:62r::[1462]] ;/=
:*:63r::[1463]] ;/=
:*:64r::[1464]] ;/=
:*:65r::[1465]] ;/=
:*:66r::[1466]] ;/=
:*:67r::[1467]] ;/=
:*:68r::[1468]] ;/=
:*:69r::[1469]] ;/=
:*:70r::[1470]] ;/=
:*:71r::[1471]] ;/=
:*:72r::[1472]] ;/=
:*:73r::[1473]] ;/=
:*:74r::[1474]] ;/=
:*:75r::[1475]] ;/=
:*:76r::[1476]] ;/=
:*:77r::[1477]] ;/=
:*:78r::[1478]] ;/=
:*:79r::[1479]] ;/=
:*:80r::[1480]] ;/=
:*:81r::[1481]] ;/=
:*:82r::[1482]] ;/=
:*:83r::[1483]] ;/=
:*:84r::[1484]] ;/=
:*:85r::[1485]] ;/=
:*:86r::[1486]] ;/=
:*:87r::[1487]] ;/=
:*:88r::[1488]] ;/=
:*:89r::[1489]] ;/=
:*:90r::[1490]] ;/=
:*:91r::[1491]] ;/=
:*:92r::[1492]] ;/=
:*:93r::[1493]] ;/=
:*:94r::[1494]] ;/=
:*:95r::[1495]] ;/=
:*:96r::[1496]] ;/=
:*:97r::[1497]] ;/=
:*:98r::[1498]] ;/=
:*:99r::[1499]] ;/=
;--------------------------------------------------------------------------------
; 16th century
;				 1500s
;combined efficienct /= 
:*:0t::[[1500]] ;/=
:*:1t::[[1501]] ;/=
:*:2t::[[1502]] ;/=
:*:3t::[[1503]] ;/=
:*:4t::[[1504]] ;/=
:*:5t::[[1505]] ;/=
:*:6t::[[1506]] ;/=
:*:7t::[[1507]] ;/=
:*:8t::[[1508]] ;/=
:*:9t::[[1509]] ;/=
:*:10t::[[1510]] ;/=
:*:11t::[[1511]] ;/=
:*:12t::[[1512]] ;/=
:*:13t::[[1513]] ;/=
:*:14t::[[1514]] ;/=
:*:15t::[[1515]] ;/=
:*:16t::[[1516]] ;/=
:*:17t::[[1517]] ;/=
:*:18t::[[1518]] ;/=
:*:19t::[[1519]] ;/=
:*:20t::[[1520]] ;/=
:*:21t::[[1521]] ;/=
:*:22t::[[1522]] ;/=
:*:23t::[[1523]] ;/=
:*:24t::[[1524]] ;/=
:*:25t::[[1525]] ;/=
:*:26t::[[1526]] ;/=
:*:27t::[[1527]] ;/=
:*:28t::[[1528]] ;/=
:*:29t::[[1529]] ;/=
:*:30t::[[1530]] ;/=
:*:31t::[[1531]] ;/=
:*:32t::[[1532]] ;/=
:*:33t::[[1533]] ;/=
:*:34t::[[1534]] ;/=
:*:35t::[[1535]] ;/=
:*:36t::[[1536]] ;/=
:*:37t::[[1537]] ;/=
:*:38t::[[1538]] ;/=
:*:39t::[[1539]] ;/=
:*:40t::[[1540]] ;/=
:*:41t::[[1541]] ;/=
:*:42t::[[1542]] ;/=
:*:43t::[[1543]] ;/=
:*:44t::[[1544]] ;/=
:*:45t::[[1545]] ;/=
:*:46t::[[1546]] ;/=
:*:47t::[[1547]] ;/=
:*:48t::[[1548]] ;/=
:*:49t::[[1549]] ;/=
:*:50t::[[1550]] ;/=
:*:51t::[[1551]] ;/=
:*:52t::[[1552]] ;/=
:*:53t::[[1553]] ;/=
:*:54t::[[1554]] ;/=
:*:55t::[[1555]] ;/=
:*:56t::[[1556]] ;/=
:*:57t::[[1557]] ;/=
:*:58t::[[1558]] ;/=
:*:59t::[[1559]] ;/=
:*:60t::[[1560]] ;/=
:*:61t::[[1561]] ;/=
:*:62t::[[1562]] ;/=
:*:63t::[[1563]] ;/=
:*:64t::[[1564]] ;/=
:*:65t::[[1565]] ;/=
:*:66t::[[1566]] ;/=
:*:67t::[[1567]] ;/=
:*:68t::[[1568]] ;/=
:*:69t::[[1569]] ;/=
:*:70t::[[1570]] ;/=
:*:71t::[[1571]] ;/=
:*:72t::[[1572]] ;/=
:*:73t::[[1573]] ;/=
:*:74t::[[1574]] ;/=
:*:75t::[[1575]] ;/=
:*:76t::[[1576]] ;/=
:*:77t::[[1577]] ;/=
:*:78t::[[1578]] ;/=
:*:79t::[[1579]] ;/=
:*:80t::[[1580]] ;/=
:*:81t::[[1581]] ;/=
:*:82t::[[1582]] ;/=
:*:83t::[[1583]] ;/=
:*:84t::[[1584]] ;/=
:*:85t::[[1585]] ;/=
:*:86t::[[1586]] ;/=
:*:87t::[[1587]] ;/=
:*:88t::[[1588]] ;/=
:*:89t::[[1589]] ;/=
:*:90t::[[1590]] ;/=
:*:91t::[[1591]] ;/=
:*:92t::[[1592]] ;/=
:*:93t::[[1593]] ;/=
:*:94t::[[1594]] ;/=
:*:95t::[[1595]] ;/=
:*:96t::[[1596]] ;/=
:*:97t::[[1597]] ;/=
:*:98t::[[1598]] ;/=
:*:99t::[[1599]] ;/=
;--------------------------------------------------------------------------------
;				 17th century
; 1600s
;combined efficiency /= 
:*:0y::[[1600]] ;/=
:*:1y::[[1601]] ;/=
:*:2y::[[1602]] ;/=
:*:3y::[[1603]] ;/=
:*:4y::[[1604]] ;/=
:*:5y::[[1605]] ;/=
:*:6y::[[1606]] ;/=
:*:7y::[[1607]] ;/=
:*:8y::[[1608]] ;/=
:*:9y::[[1609]] ;/=
:*:10y::[[1610]] ;/=
:*:11y::[[1611]] ;/=
:*:12y::[[1612]] ;/=
:*:13y::[[1613]] ;/=
:*:14y::[[1614]] ;/=
:*:15y::[[1615]] ;/=
:*:16y::[[1616]] ;/=
:*:17y::[[1617]] ;/=
:*:18y::[[1618]] ;/=
:*:19y::[[1619]] ;/=
:*:20y::[[1620]] ;/=
:*:21y::[[1621]] ;/=
:*:22y::[[1622]] ;/=
:*:23y::[[1623]] ;/=
:*:24y::[[1624]] ;/=
:*:25y::[[1625]] ;/=
:*:26y::[[1626]] ;/=
:*:27y::[[1627]] ;/=
:*:28y::[[1628]] ;/=
:*:29y::[[1629]] ;/=
:*:30y::[[1630]] ;/=
:*:31y::[[1631]] ;/=
:*:32y::[[1632]] ;/=
:*:33y::[[1633]] ;/=
:*:34y::[[1634]] ;/=
:*:35y::[[1635]] ;/=
:*:36y::[[1636]] ;/=
:*:37y::[[1637]] ;/=
:*:38y::[[1638]] ;/=
:*:39y::[[1639]] ;/=
:*:40y::[[1640]] ;/=
:*:41y::[[1641]] ;/=
:*:42y::[[1642]] ;/=
:*:43y::[[1643]] ;/=
:*:44y::[[1644]] ;/=
:*:45y::[[1645]] ;/=
:*:46y::[[1646]] ;/=
:*:47y::[[1647]] ;/=
:*:48y::[[1648]] ;/=
:*:49y::[[1649]] ;/=
:*:50y::[[1650]] ;/=
:*:51y::[[1651]] ;/=
:*:52y::[[1652]] ;/=
:*:53y::[[1653]] ;/=
:*:54y::[[1654]] ;/=
:*:55y::[[1655]] ;/=
:*:56y::[[1656]] ;/=
:*:57y::[[1657]] ;/=
:*:58y::[[1658]] ;/=
:*:59y::[[1659]] ;/=
:*:60y::[[1660]] ;/=
:*:61y::[[1661]] ;/=
:*:62y::[[1662]] ;/=
:*:63y::[[1663]] ;/=
:*:64y::[[1664]] ;/=
:*:65y::[[1665]] ;/=
:*:66y::[[1666]] ;/=
:*:67y::[[1667]] ;/=
:*:68y::[[1668]] ;/=
:*:69y::[[1669]] ;/=
:*:70y::[[1670]] ;/=
:*:71y::[[1671]] ;/=
:*:72y::[[1672]] ;/=
:*:73y::[[1673]] ;/=
:*:74y::[[1674]] ;/=
:*:75y::[[1675]] ;/=
:*:76y::[[1676]] ;/=
:*:77y::[[1677]] ;/=
:*:78y::[[1678]] ;/=
:*:79y::[[1679]] ;/=
:*:80y::[[1680]] ;/=
:*:81y::[[1681]] ;/=
:*:82y::[[1682]] ;/=
:*:83y::[[1683]] ;/=
:*:84y::[[1684]] ;/=
:*:85y::[[1685]] ;/=
:*:86y::[[1686]] ;/=
:*:87y::[[1687]] ;/=
:*:88y::[[1688]] ;/=
:*:89y::[[1689]] ;/=
:*:90y::[[1690]] ;/=
:*:91y::[[1691]] ;/=
:*:92y::[[1692]] ;/=
:*:93y::[[1693]] ;/=
:*:94y::[[1694]] ;/=
:*:95y::[[1695]] ;/=
:*:96y::[[1696]] ;/=
:*:97y::[[1697]] ;/=
:*:98y::[[1698]] ;/=
:*:99y::[[1699]] ;/=
;--------------------------------------------------------------------------------

;				 18th century
; 1700s
;combined efficiency /= 
:*:0u::[[1700]] ;/=
:*:1u::[[1701]] ;/=
:*:2u::[[1702]] ;/=
:*:3u::[[1703]] ;/=
:*:4u::[[1704]] ;/=
:*:5u::[[1705]] ;/=
:*:6u::[[1706]] ;/=
:*:7u::[[1707]] ;/=
:*:8u::[[1708]] ;/=
:*:9u::[[1709]] ;/=
:*:10u::[[1710]] ;/=
:*:11u::[[1711]] ;/=
:*:12u::[[1712]] ;/=
:*:13u::[[1713]] ;/=
:*:14u::[[1714]] ;/=
:*:15u::[[1715]] ;/=
:*:16u::[[1716]] ;/=
:*:17u::[[1717]] ;/=
:*:18u::[[1718]] ;/=
:*:19u::[[1719]] ;/=
:*:20u::[[1720]] ;/=
:*:21u::[[1721]] ;/=
:*:22u::[[1722]] ;/=
:*:23u::[[1723]] ;/=
:*:24u::[[1724]] ;/=
:*:25u::[[1725]] ;/=
:*:26u::[[1726]] ;/=
:*:27u::[[1727]] ;/=
:*:28u::[[1728]] ;/=
:*:29u::[[1729]] ;/=
:*:30u::[[1730]] ;/=
:*:31u::[[1731]] ;/=
:*:32u::[[1732]] ;/=
:*:33u::[[1733]] ;/=
:*:34u::[[1734]] ;/=
:*:35u::[[1735]] ;/=
:*:36u::[[1736]] ;/=
:*:37u::[[1737]] ;/=
:*:38u::[[1738]] ;/=
:*:39u::[[1739]] ;/=
:*:40u::[[1740]] ;/=
:*:41u::[[1741]] ;/=
:*:42u::[[1742]] ;/=
:*:43u::[[1743]] ;/=
:*:44u::[[1744]] ;/=
:*:45u::[[1745]] ;/=
:*:46u::[[1746]] ;/=
:*:47u::[[1747]] ;/=
:*:48u::[[1748]] ;/=
:*:49u::[[1749]] ;/=
:*:50u::[[1750]] ;/=
:*:51u::[[1751]] ;/=
:*:52u::[[1752]] ;/=
:*:53u::[[1753]] ;/=
:*:54u::[[1754]] ;/=
:*:55u::[[1755]] ;/=
:*:56u::[[1756]] ;/=
:*:57u::[[1757]] ;/=
:*:58u::[[1758]] ;/=
:*:59u::[[1759]] ;/=
:*:60u::[[1760]] ;/=
:*:61u::[[1761]] ;/=
:*:62u::[[1762]] ;/=
:*:63u::[[1763]] ;/=
:*:64u::[[1764]] ;/=
:*:65u::[[1765]] ;/=
:*:66u::[[1766]] ;/=
:*:67u::[[1767]] ;/=
:*:68u::[[1768]] ;/=
:*:69u::[[1769]] ;/=
:*:70u::[[1770]] ;/=
:*:71u::[[1771]] ;/=
:*:72u::[[1772]] ;/=
:*:73u::[[1773]] ;/=
:*:74u::[[1774]] ;/=
:*:75u::[[1775]] ;/=
:*:76u::[[1776]] ;/=
:*:77u::[[1777]] ;/=
:*:78u::[[1778]] ;/=
:*:79u::[[1779]] ;/=
:*:80u::[[1780]] ;/=
:*:81u::[[1781]] ;/=
:*:82u::[[1782]] ;/=
:*:83u::[[1783]] ;/=
:*:84u::[[1784]] ;/=
:*:85u::[[1785]] ;/=
:*:86u::[[1786]] ;/=
:*:87u::[[1787]] ;/=
:*:88u::[[1788]] ;/=
:*:89u::[[1789]] ;/=
:*:90u::[[1790]] ;/=
:*:91u::[[1791]] ;/=
:*:92u::[[1792]] ;/=
:*:93u::[[1793]] ;/=
:*:94u::[[1794]] ;/=
:*:95u::[[1795]] ;/=
:*:96u::[[1796]] ;/=
:*:97u::[[1797]] ;/=
:*:98u::[[1798]] ;/=
:*:99u::[[1799]] ;/=
;--------------------------------------------------------------------------------
; 19th century
;combined efficiency /= 
;				19th century
:*:0i::[[1800]] ;/=
:*:1i::[[1801]] ;/=
:*:2i::[[1802]] ;/=
:*:3i::[[1803]] ;/=
:*:4i::[[1804]] ;/=
:*:5i::[[1805]] ;/=
:*:6]::[[1806]] ;/=
:*:7i::[[1807]] ;/=
:*:8i::[[1808]] ;/=
:*:9i::[[1809]] ;/=
:*:10i::[[1810]] ;/=
:*:11i::[[1811]] ;/=
:*:12i::[[1812]] ;/=
:*:13i::[[1813]] ;/=
:*:14i::[[1814]] ;/=
:*:15i::[[1815]] ;/=
:*:16i::[[1816]] ;/=
:*:17i::[[1817]] ;/=
:*:18i::[[1818]] ;/=
:*:19i::[[1819]] ;/=
:*:20i::[[1820]] ;/=
:*:21i::[[1821]] ;/=
:*:22i::[[1822]] ;/=
:*:23i::[[1823]] ;/=
:*:24i::[[1824]] ;/=
:*:25i::[[1825]] ;/=
:*:26i::[[1826]] ;/=
:*:27i::[[1827]] ;/=
:*:28i::[[1828]] ;/=
:*:29i::[[1829]] ;/=
:*:30i::[[1830]] ;/=
:*:31i::[[1831]] ;/=
:*:32i::[[1832]] ;/=
:*:33i::[[1833]] ;/=
:*:34i::[[1834]] ;/=
:*:35i::[[1835]] ;/=
:*:36i::[[1836]] ;/=
:*:37i::[[1837]] ;/=
:*:38i::[[1838]] ;/=
:*:39i::[[1839]] ;/=
:*:40i::[[1840]] ;/=
:*:41i::[[1841]] ;/=
:*:42i::[[1842]] ;/=
:*:43i::[[1843]] ;/=
:*:44i::[[1844]] ;/=
:*:45i::[[1845]] ;/=
:*:46i::[[1846]] ;/=
:*:47i::[[1847]] ;/=
:*:48i::[[1848]] ;/=
:*:49i::[[1849]] ;/=
:*:50i::[[1850]] ;/=
:*:51i::[[1851]] ;/=
:*:52i::[[1852]] ;/=
:*:53i::[[1853]] ;/=
:*:54i::[[1854]] ;/=
:*:55i::[[1855]] ;/=
:*:56i::[[1856]] ;/=
:*:57i::[[1857]] ;/=
:*:58i::[[1858]] ;/=
:*:59i::[[1859]] ;/=
:*:60i::[[1860]] ;/=
:*:61i::[[1861]] ;/=
:*:62i::[[1862]] ;/=
:*:63i::[[1863]] ;/=
:*:64i::[[1864]] ;/=
:*:65i::[[1865]] ;/=
:*:66i::[[1866]] ;/=
:*:67i::[[1867]] ;/=
:*:68i::[[1868]] ;/=
:*:69i::[[1869]] ;/=
:*:70i::[[1870]] ;/=
:*:71i::[[1871]] ;/=
:*:72i::[[1872]] ;/=
:*:73i::[[1873]] ;/=
:*:74i::[[1874]] ;/=
:*:75i::[[1875]] ;/=
:*:76i::[[1876]] ;/=
:*:77i::[[1877]] ;/=
:*:78i::[[1878]] ;/=
:*:79i::[[1879]] ;/=
:*:80i::[[1880]] ;/=
:*:81i::[[1881]] ;/=
:*:82i::[[1882]] ;/=
:*:83i::[[1883]] ;/=
:*:84i::[[1884]] ;/=
:*:85i::[[1885]] ;/=
:*:86i::[[1886]] ;/=
:*:87i::[[1887]] ;/=
:*:88i::[[1888]] ;/=
:*:89i::[[1889]] ;/=
:*:90i::[[1890]] ;/=
:*:91i::[[1891]] ;/=
:*:92i::[[1892]] ;/=
:*:93i::[[1893]] ;/=
:*:94i::[[1894]] ;/=
:*:95i::[[1895]] ;/=
:*:96i::[[1896]] ;/=
:*:97i::[[1897]] ;/=
:*:98i::[[1898]] ;/=
:*:99i::[[1899]] ;/=
;--------------------------------------------------------------------------------
; obsidian year wiki notes
;                                        20th century
;combined efficiency /= 
:*:0o::[[1900]] ;/=
:*:1o::[[1901]] ;/=
:*:2o::[[1902]] ;/=
:*:3o::[[1903]] ;/=
:*:4o::[[1904]] ;/=
:*:5o::[[1905]] ;/=
:*:6o::[[1906]] ;/=
:*:7o::[[1907]] ;/=
:*:8o::[[1908]] ;/=
:*:9o::[[1909]] ;/=
:*:10o::[[1910]] ;/=
:*:11o::[[1911]] ;/=
:*:12o::[[1912]] ;/=
:*:13o::[[1913]] ;/=
:*:14o::[[1914]] ;/=
:*:15o::[[1915]] ;/=
:*:16o::[[1916]] ;/=
:*:17o::[[1917]] ;/=
:*:18o::[[1918]] ;/=
:*:19o::[[1919]] ;/=
:*:20o::[[1920]] ;/=
:*:21o::[[1921]] ;/=
:*:22o::[[1922]] ;/=
:*:23o::[[1923]] ;/=
:*:24o::[[1924]] ;/=
:*:25o::[[1925]] ;/=
:*:26o::[[1926]] ;/=
:*:27o::[[1927]] ;/=
:*:28o::[[1928]] ;/=
:*:29o::[[1929]] ;/=
:*:30o::[[1930]] ;/=
:*:31o::[[1931]] ;/=
:*:32o::[[1932]] ;/=
:*:33o::[[1933]] ;/=
:*:34o::[[1934]] ;/=
:*:35o::[[1935]] ;/=
:*:36o::[[1936]] ;/=
:*:37o::[[1937]] ;/=
:*:38o::[[1938]] ;/=
:*:39o::[[1939]] ;/=
:*:40o::[[1940]] ;/=
:*:41o::[[1941]] ;/=
:*:42o::[[1942]] ;/=
:*:43o::[[1943]] ;/=
:*:44o::[[1944]] ;/=
:*:45o::[[1945]] ;/=
:*:46o::[[1946]] ;/=
:*:47o::[[1947]] ;/=
:*:48o::[[1948]] ;/=
:*:49o::[[1949]] ;/=
:*:50o::[[1950]] ;/=
:*:51o::[[1951]] ;/=
:*:52o::[[1952]] ;/=
:*:53o::[[1953]] ;/=
:*:54o::[[1954]] ;/=
:*:55o::[[1955]] ;/=
:*:56o::[[1956]] ;/=
:*:57o::[[1957]] ;/=
:*:58o::[[1958]] ;/=
:*:59o::[[1959]] ;/=
:*:60o::[[1960]] ;/=
:*:61o::[[1961]] ;/=
:*:62o::[[1962]] ;/=
:*:63o::[[1963]] ;/=
:*:64o::[[1964]] ;/=
:*:65o::[[1965]] ;/=
:*:66o::[[1966]] ;/=
:*:67o::[[1967]] ;/=
:*:68o::[[1968]] ;/=
:*:69o::[[1969]] ;/=
:*:70o::[[1970]] ;/=
:*:71o::[[1971]] ;/=
:*:72o::[[1972]] ;/=
:*:73o::[[1973]] ;/=
:*:74o::[[1974]] ;/=
:*:75o::[[1975]] ;/=
:*:76o::[[1976]] ;/=
:*:77o::[[1977]] ;/=
:*:78o::[[1978]] ;/=
:*:79o::[[1979]] ;/=
:*:80o::[[1980]] ;/=
:*:81o::[[1981]] ;/=
:*:82o::[[1982]] ;/=
:*:83o::[[1983]] ;/=
:*:84o::[[1984]] ;/=
:*:85o::[[1985]] ;/=
:*:86o::[[1986]] ;/=
:*:87o::[[1987]] ;/=
:*:88o::[[1988]] ;/=
:*:89o::[[1989]] ;/=
:*:90o::[[1990]] ;/=
:*:91o::[[1991]] ;/=
:*:92o::[[1992]] ;/=
:*:93o::[[1993]] ;/=
:*:94o::[[1994]] ;/=
:*:95o::[[1995]] ;/=
:*:96o::[[1996]] ;/=
:*:97o::[[1997]] ;/=
:*:98o::[[1998]] ;/=
:*:99o::[[1999]] ;/=
;--------------------------------------------------------------------------------	
;				 21th century
; 2000s
;combined efficiency
:*:0p::[[2000]] ;/=
:*:1p::[[2001]] ;/=
:*:2p::[[2002]] ;/=
:*:3p::[[2003]] ;/=
:*:4p::[[2004]] ;/=
:*:5p::[[2005]] ;/=
:*:6p::[[2006]] ;/=
:*:7p::[[2007]] ;/=
:*:8p::[[2008]] ;/=
:*:9p::[[2009]] ;/=
:*:10p::[[2010]] ;/=
:*:11p::[[2011]] ;/=
:*:12p::[[2012]] ;/=
:*:13p::[[2013]] ;/=
:*:14p::[[2014]] ;/=
:*:15p::[[2015]] ;/=
:*:16p::[[2016]] ;/=
:*:17p::[[2017]] ;/=
:*:18p::[[2018]] ;/=
:*:19p::[[2019]] ;/=
:*:20p::[[2020]] ;/=
:*:21p::[[2021]] ;/=
:*:22p::[[2022]] ;/=
:*:23p::[[2023]] ;/=
:*:24p::[[2024]] ;/=
:*:25p::[[2025]] ;/=
:*:26p::[[2026]] ;/=
:*:27p::[[2027]] ;/=
:*:28p::[[2028]] ;/=
:*:29p::[[2029]] ;/=
:*:30p::[[2030]] ;/=
:*:31p::[[2031]] ;/=
:*:32p::[[2032]] ;/=
:*:33p::[[2033]] ;/=
:*:34p::[[2034]] ;/=
:*:35p::[[2035]] ;/=
:*:36p::[[2036]] ;/=
:*:37p::[[2037]] ;/=
:*:38p::[[2038]] ;/=
:*:39p::[[2039]] ;/=
:*:40p::[[2040]] ;/=
:*:41p::[[2041]] ;/=
:*:42p::[[2042]] ;/=
:*:43p::[[2043]] ;/=
:*:44p::[[2044]] ;/=
:*:45p::[[2045]] ;/=
:*:46p::[[2046]] ;/=
:*:47p::[[2047]] ;/=
:*:48p::[[2048]] ;/=
:*:49p::[[2049]] ;/=
:*:50p::[[2050]] ;/=
:*:51p::[[2051]] ;/=
:*:52p::[[2052]] ;/=
:*:53p::[[2053]] ;/=
:*:54p::[[2054]] ;/=
:*:55p::[[2055]] ;/=
:*:56p::[[2056]] ;/=
:*:57p::[[2057]] ;/=
:*:58p::[[2058]] ;/=
:*:59p::[[2059]] ;/=
:*:60p::[[2060]] ;/=
:*:61p::[[2061]] ;/=
:*:62p::[[2062]] ;/=
:*:63p::[[2063]] ;/=
:*:64p::[[2064]] ;/=
:*:65p::[[2065]] ;/=
:*:66p::[[2066]] ;/=
:*:67p::[[2067]] ;/=
:*:68p::[[2068]] ;/=
:*:69p::[[2069]] ;/=
:*:70p::[[2070]] ;/=
:*:71p::[[2071]] ;/=
:*:72p::[[2072]] ;/=
:*:73p::[[2073]] ;/=
:*:74p::[[2074]] ;/=
:*:75p::[[2075]] ;/=
:*:76p::[[2076]] ;/=
:*:77p::[[2077]] ;/=
:*:78p::[[2078]] ;/=
:*:79p::[[2079]] ;/=
:*:80p::[[2080]] ;/=
:*:81p::[[2081]] ;/=
:*:82p::[[2082]] ;/=
:*:83p::[[2083]] ;/=
:*:84p::[[2084]] ;/=
:*:85p::[[2085]] ;/=
:*:86p::[[2086]] ;/=
:*:87p::[[2087]] ;/=
:*:88p::[[2088]] ;/=
:*:89p::[[2089]] ;/=
:*:90p::[[2090]] ;/=
:*:91p::[[2091]] ;/=
:*:92p::[[2092]] ;/=
:*:93p::[[2093]] ;/=
:*:94p::[[2094]] ;/=
:*:95p::[[2095]] ;/=
:*:96p::[[2096]] ;/=
:*:97p::[[2097]] ;/=
:*:98p::[[2098]] ;/=
:*:99p::[[2099]] ;/=
;-----------------------------------------------------------------------religions	
;abcdefghijklmnopqstuvwxyz
; END KEY - 9 (also for languages)
;	:*:hr.::hinduism
; 	:*:br.::buddhism
;	:*:jr.::jainism
;	:*:cr.::christianity
; 	:*:ir.::islam
:*:jur.::judaism
; kaizen !
	
	^+i::send islam ;/=
	^+h::send hinduism ;/=
	^+c::send christianity ;/=
	^+j::send jainism ;/=
	^+b::send buddhism ;/=
;--------------------------------------------------------------------------------	
; WEATHER
;abcdefghijklmnopqrstuvxyz
; END KEY -
:*:su.::summer ;/=
:*:wi.::winter ;/=
:*:sp.::spring ;/=
:*:au.::autumn ;/=
;--------------------------------------------------------------------------------
	/*
		a b c d e f g h i j k l m n o p q r s t u v w x y z
		! @ # $ % ^ & * ( ) ~ `
		
		ahk studio shortcuts
		
		alt = - omnisearch
		alt r - run (ie save and then execute code, saves a hell lotta time !)
		Ctrl Shift up/down = move line/s up/down
		alt Shift left/right = move letter/s or words left/right
		
	*/
	
	/*
		Permutations without repetition (n=26, r=2)
		Using Items: a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z
		
		List has 650 entries.
		{a,b} {a,c} {a,d} {a,e} {a,f} {a,g} {a,h} {a,i} {a,j} {a,k} {a,l} {a,m} {a,n} {a,o} {a,p} {a,q} {a,r} {a,s}{a,t} {a,u} {a,v}
		{a,w} {a,x} {a,y} {a,z}
		{b,a} {b,c} {b,d} {b,e} {b,f} {b,g} {b,h} {b,i} {b,j} {b,k} {b,l} {b,m} {b,n} {b,o} {b,p} {b,q} {b,r} {b,s} {b,t} {b,u} {b,v}
		{b,w} {b,x} {b,y} {b,z}
		{c,a} {c,b} {c,d} {c,e} {c,f} {c,g} {c,h} {c,i} {c,j} {c,k} {c,l} {c,m} {c,n} {c,o} {c,p} {c,q} {c,r} {c,s} {c,t} {c,u} {c,v}
		{c,w} {c,x} {c,y} {c,z}
		{d,a} {d,b} {d,c} {d,e} {d,f} {d,g} {d,h} {d,i} {d,j} {d,k} {d,l} {d,m} {d,n} {d,o} {d,p} {d,q} {d,r} {d,s} {d,t} {d,u}
		{d,v} {d,w} {d,x} {d,y} {d,z}
		{e,a} {e,b} {e,c} {e,d} {e,f} {e,g} {e,h} {e,i} {e,j} {e,k} {e,l} {e,m} {e,n} {e,o} {e,p} {e,q} {e,r} {e,s} {e,t} {e,u}
		{e,v} {e,w} {e,x} {e,y} {e,z}
		{f,a} {f,b} {f,c} {f,d} {f,e} {f,g} {f,h} {f,i} {f,j} {f,k} {f,l} {f,m} {f,n} {f,o} {f,p} {f,q} {f,r} {f,s} {f,t} {f,u} {f,v}
		{f,w} {f,x} {f,y} {f,z}
		{g,a} {g,b} {g,c} {g,d} {g,e} {g,f} {g,h} {g,i} {g,j} {g,k} {g,l} {g,m} {g,n} {g,o} {g,p} {g,q} {g,r} {g,s} {g,t} {g,u} {g,v}
		{g,w} {g,x} {g,y} {g,z}
		{h,a} {h,b} {h,c} {h,d} {h,e} {h,f} {h,g} {h,i} {h,j} {h,k} {h,l} {h,m} {h,n} {h,o} {h,p} {h,q} {h,r} {h,s} {h,t} {h,u} {h,v}
		{h,w} {h,x} {h,y} {h,z}
		{i,a} {i,b} {i,c} {i,d} {i,e} {i,f} {i,g} {i,h} {i,j} {i,k} {i,l} {i,m} {i,n} {i,o} {i,p} {i,q} {i,r} {i,s} {i,t} {i,u} {i,v}
		{i,w} {i,x} {i,y} {i,z}
		{j,a} {j,b} {j,c} {j,d} {j,e} {j,f} {j,g} {j,h} {j,i} {j,k} {j,l} {j,m} {j,n} {j,o} {j,p} {j,q} {j,r} {j,s} {j,t} {j,u}
		{j,v} {j,w} {j,x} {j,y} {j,z} {k,a} {k,b} {k,c} {k,d} {k,e} {k,f} {k,g} {k,h} {k,i} {k,j} {k,l} {k,m} {k,n} {k,o} {k,p} {k,q} {k,r} {k,s} {k,t} {k,u} {k,v} {k,w} {k,x} {k,y} {k,z} {l,a} {l,b} {l,c} {l,d} {l,e} {l,f} {l,g} {l,h} {l,i} {l,j} {l,k} {l,m} {l,n} {l,o} {l,p} {l,q} {l,r} {l,s} {l,t} {l,u} {l,v} {l,w} {l,x} {l,y} {l,z} {m,a} {m,b} {m,c} {m,d} {m,e} {m,f} {m,g} {m,h} {m,i} {m,j} {m,k} {m,l} {m,n} {m,o} {m,p} {m,q} {m,r} {m,s} {m,t} {m,u} {m,v} {m,w} {m,x} {m,y} {m,z} {n,a} {n,b} {n,c} {n,d} {n,e} {n,f} {n,g} {n,h} {n,i} {n,j} {n,k} {n,l} {n,m} {n,o} {n,p} {n,q} {n,r} {n,s} {n,t} {n,u} {n,v} {n,w} {n,x} {n,y} {n,z} {o,a} {o,b} {o,c} {o,d} {o,e} {o,f} {o,g} {o,h} {o,i} {o,j} {o,k} {o,l} {o,m} {o,n} {o,p} {o,q} {o,r} {o,s} {o,t} {o,u} {o,v} {o,w} {o,x} {o,y} {o,z} {p,a} {p,b} {p,c} {p,d} {p,e} {p,f} {p,g} {p,h} {p,i} {p,j} {p,k} {p,l} {p,m} {p,n} {p,o} {p,q} {p,r} {p,s} {p,t} {p,u} {p,v} {p,w} {p,x} {p,y} {p,z} {q,a} {q,b} {q,c} {q,d} {q,e} {q,f} {q,g} {q,h} {q,i} {q,j} {q,k} {q,l} {q,m} {q,n} {q,o} {q,p} {q,r} {q,s} {q,t} {q,u} {q,v} {q,w} {q,x} {q,y} {q,z} {r,a} {r,b} {r,c} {r,d} {r,e} {r,f} {r,g} {r,h} {r,i} {r,j} {r,k} {r,l} {r,m} {r,n} {r,o} {r,p} {r,q} {r,s} {r,t} {r,u} {r,v} {r,w} {r,x} {r,y} {r,z} {s,a} {s,b} {s,c} {s,d} {s,e} {s,f} {s,g} {s,h} {s,i} {s,j} {s,k} {s,l} {s,m} {s,n} {s,o} {s,p} {s,q} {s,r} {s,t} {s,u} {s,v} {s,w} {s,x} {s,y} {s,z} {t,a} {t,b} {t,c} {t,d} {t,e} {t,f} {t,g} {t,h} {t,i} {t,j} {t,k} {t,l} {t,m} {t,n} {t,o} {t,p} {t,q} {t,r} {t,s} {t,u} {t,v} {t,w} {t,x} {t,y} {t,z} {u,a} {u,b} {u,c} {u,d} {u,e} {u,f} {u,g} {u,h} {u,i} {u,j} {u,k} {u,l} {u,m} {u,n} {u,o} {u,p} {u,q} {u,r} {u,s} {u,t} {u,v} {u,w} {u,x} {u,y} {u,z} {v,a} {v,b} {v,c} {v,d} {v,e} {v,f} {v,g} {v,h} {v,i} {v,j} {v,k} {v,l} {v,m} {v,n} {v,o} {v,p} {v,q} {v,r} {v,s} {v,t} {v,u} {v,w} {v,x} {v,y} {v,z} {w,a} {w,b} {w,c} {w,d} {w,e} {w,f} {w,g} {w,h} {w,i} {w,j} {w,k} {w,l} {w,m} {w,n} {w,o} {w,p} {w,q} {w,r} {w,s} {w,t} {w,u} {w,v} {w,x} {w,y} {w,z} {x,a} {x,b} {x,c} {x,d} {x,e} {x,f} {x,g} {x,h} {x,i} {x,j} {x,k} {x,l} {x,m} {x,n} {x,o} {x,p} {x,q} {x,r} {x,s} {x,t} {x,u} {x,v} {x,w} {x,y} {x,z} {y,a} {y,b} {y,c} {y,d} {y,e} {y,f} {y,g} {y,h} {y,i} {y,j} {y,k} {y,l} {y,m} {y,n} {y,o} {y,p} {y,q} {y,r} {y,s} {y,t} {y,u} {y,v} {y,w} {y,x} {y,z} {z,a} {z,b} {z,c} {z,d} {z,e} {z,f} {z,g} {z,h} {z,i} {z,j} {z,k} {z,l} {z,m} {z,n} {z,o} {z,p} {z,q} {z,r} {z,s} {z,t} {z,u} {z,v} {z,w} {z,x} {z,y}
		
	*/
	
	
;************************************************************
	/* TODO
		hhhh
		dddd
		ffff
		
	*/
	
;************************************************************
; numbers & bases
;                       100s hundreds
;combined efficiency /=
:*:1h::100{space}
:*:2h::200{space} ;/=
:*:3h::300{space} ;/=
:*:4h::400{space} ;/=
:*:5h::500{space} ;/=
:*:6h::600{space} ;/=
:*:7h::700{space} ;/=
:*:8h::800{space} ;/=
:*:9h::900{space} ;/=
;                       1000s thousands
;combined efficiency /=
:*:1t::1000
:*:2t::2000 ;/=
:*:3t::3000 ;/=
:*:4t::4000 ;/=
:*:5t::5000 ;/=
:*:6t::6000 ;/=
:*:7t::7000 ;/=
:*:8t::8000 ;/=
:*:9t::9000 ;/=

;************************************************************
	
;													          INDIAN CITIES
	
; ENDKEY - \

/*	
:*:m\::mumbai{space} ;/=
:*:\m::mysore{space} ;/=
	
:*:d\::delhi{space} ;/=
:*:b\::bangalore {space}
:*:h\::hyderabad{space} ;/=
	 ;/=
:*:a\::ahmedabad{space} ;/=
:*:\a::aurangabad{space} ;/=
:*:\ag::agra{space} ;/=
:*:al\::allahabad{space} ;/=
	
:*:c\::chennai{space}
:*:co\::coimbatore{space} ;/=
	 ;/=
:*:k\::kolkata{space} ;/=
:*:\k::kota{space} ;/=
	 ;/=
:*:s\::surat{space} ;/=
	
:*:p\::pune{space}
:*:\p::patna{space} ;/=
:*:pp\::panipat{space} ;/=
:*:po\::pondicherry{space} ;/=
	 ;/=
:*:j\::jaipur{space} ;/=
:*:\j::junagadh{space} ;/=
	
:*:l\::lucknow{space}
	 ;/=
:*:v\::visakhapatnam{space} ;/=
:*:\v::varanasi{space} ;/=
	 ;/=
:*:t\::thiruvananthapuram{space} ;/=
:*:\t::thanjavur{space} ;/=
	
:*:u\::udaipur ;/=
	
:*:g\::gandhinagar{space} ;/=
*/	
;************************************************************
	
;                                                             LANGUAGE
;abcdefghijklmnopqrstuvwxyz
; ch es en hi ar portu ur ru jp
; END KEY - 9
	
:*:l9::language{space}
	:*:zh9::chinese{space} ;/=
	:*:es9::spanish{space} ;/=
	:*:en9::english{space} ;/=
	:*:hi9::hindi{space} ;/=
	:*:ar9::arabic{space} ;/=
	:*:ur9::urdu{space} ;/=
	;**russian - type using the demonym hotstr --> u r 0
	;**japanese - type using the demonym hotstr --> p j 0
	
;************************************************************
	
;************************************************************
;													          OPEN VISION HOMEPAGE DASHBOARD
	#+z::
	run http://visionias.in/student/student_home.php
	return
;************************************************************
;                                                             CLASS SCHEDULE
	#+x::
	run http://visionias.in/student/pt/video_student/class_calendar.php?package_id=4888
	return
;************************************************************
;                                                             OPEN TEST
	#+v::
	run http://visionias.in/student_open/pt/pt_list.php?type=4
	return
;************************************************************
;                                                             VISION RESOURCES
	#+c::
	run http://visionias.in/resources/value_added_material.php
	return
;************************************************************
;                                     NGRAMS                    BLEEDING EDGE/CHORDING
	~ d & f::send {space}of the{space}{left 8}{bs}{right 8}
	~ f & d::send {space}in the{space}{left 8}{bs}{right 8} ;/=
;***************************************************			 ;/=
	~ f & g::send {space}to the{space}{left 8}{bs}{right 8} ;/=
	~ g & f::send {space}on the{space}{left 8}{bs}{right 8} ;/=
;***************************************************	 ;/=
	~ d & g::send {space}is a{space}{left 6}{bs}{right 6} ;is the ;/=
	~ g & d::send {space}and the{space}{left 8}{bs}{right 8} ;is the
;***************************************************				 ;/=
	~ f & h::send is a{left 4}{bs}{right 4} ;/=
	~ h & f::send {space}with the{space}{left 10}{bs}{right 10} ;/=
;***************************************************		 ;/=
/*
	~ u & i::send it is{space}{left 6}{bs}{right 6} ;/=
	~ i & o::send it is the{space}{left 10}{bs}{right 10} ;/=
	~ y & u::send it is a{space}{left 8}{bs}{right 8} ;/=
*/
;***************************************************			 ;/=
	~ a & f::send {space}from the{space}{left 10}{bs}{right 10}
	~ f & a::send {space}by the{space}{left 8}{bs}{right 8} ;/=
	~ s & f::send {space}is the{space}{left 8}{bs}{right 8} ;/=
	~ s & d::send {space}for the{space}{left 9}{bs}{right 9} ;/=
;***************************************************

;********************************************************** wo zhidao till here
;~ k & l::send that the{space}{left 7}{bs}{right 7}
;~ l & k::send was the{space}{left 7}{bs}{right 7}
	
;~ a & s::send for the{space}{left 7}{bs}{right 7}
;~ s & a::send on the{space}{left 7}{bs}{right 7}
	
;~ l & ;::send are the{space}{left 7}{bs}{right 7}
;~ ; & l::send with the{space}{left 7}{bs}{right 7}
	
;~ f & s::send as the{space}{left 7}{bs}{right 7}
;~ s & f::send this is{space}{left 7}{bs}{right 7}
	
;~ d & a::send from the{space}{left 9}{bs}{right 9}
;;~ a & d::send had the{space}{left 8}{bs}{right 8}
	
;~ j & l::send but the{space}{left 7}{bs}{right 7}
;~ l & j::send what the{space}{left 7}{bs}{right 7}
	
;~ k & ;::send there{space}{left 7}{bs}{right 7}
;~ ; & k::send can{space}{left 7}{bs}{right 7}
	
;~ f & a::send when the{space}{left 7}{bs}{right 7}
;~ a & f::send which{space}{left 7}{bs}{right 7}
	
	/*	
		~ u & i::send their{space}{left 6}{bs}{right 6}
		~ i & u::send them{space}{left 5}{bs}{right 5}
		
		
		^!t::
		send it is cnd alled as
		 1.2
return
	*/
	
;************************************************************
; alphabets repository                                                           SCIENCE TERMS
	/*
:*:a::{space} ;/=
:*:b::{space ;/=}
:*:c::{space ;/=}
:*:d::{space ;/=}
:*:e::{space ;/=}
:*:f::{space ;/=}
:*:g::{space ;/=}
:*:h::{space ;/=}
:*:i::{space ;/=}
:*:j::{space ;/=}
:*:k::{space ;/=}
:*:l::{space ;/=}
:*:m::{space ;/=}
:*:n::{space ;/=}
:*:o::{space ;/=}
:*:p::{space ;/=}
:*:q::{space ;/=}
:*:r::{space ;/=}
:*:s::{space ;/=}
:*:t::{space ;/=}
:*:u::{space ;/=}
:*:v::{space ;/=}
:*:w::{space ;/=}
:*:x::{space ;/=}
:*:y::{space ;/=}
:*:z::{space ;/=}
	*/
;************************************************************
;                                                               ANCIENT & MED HISTORY TERMS
; END KEY = 5
;fhioqxyz
	
:*:mbt5::muhammad bin tughlaq{space} ;/=
:*:ak5::allaudin khilji{space} ;/=
:*:fst5::firoz shah tughlaq{space} ;/=
:*:mp5::marco polo{space} ;/=
	
/*
:*:e5::elephant{space ;/=}
:*:p5::persian{space} ;/=
:*:g5::greek{space} ;/=
:*:v5::vedic{space} ;/=
:*:u5::upanishad{space} ;/=
:*:r5::rigveda{space} ;/=
:*:t5::traveller{space} ;/=
:*:w5::warrior{space ;/=}
:*:5w::war{space} ;/=
:*:ar5::arthashastra{space} ;/=
:*:d5::dharma{space} ;/=
:*:b5::gautam buddha{space} ;/=
:*:j5::jainism{space} ;/=
:*:c5::chandragupta{space} ;/=
:*:bg5::bodh gaya{space} ;/=
:*:k5::kushinagar{space} ;/=
:*:n5::nirvana{space} ;/=
:*:m5::medieval{space} ;/=
*/
;************************************************************
;                                                               MODERN HISTORY TERMS

/*
;END KEY = 4
; abcdefhijklnopqrstuvwxy
:*?:aicc4::all india congress{space} ;/=
:*?:inc4::indian national congress{space} ;/=
:*?:aituc4::all india trade union congress{space} ;/=
:*?:cpi4::communist party of india{space} ;/=
:*?:dk4::dravida kazhagam{space} ;/=
:*?:ics4::indian civil services{space} ;/=
:*?:ina4::indian national army{space} ;/=
	 ;/=
:*?:mgp::{space}gandhi{space}
:*?:m4::{space}mansabdar{space} ;/=
:*?:z4::{space}zamindar{space} ;/=

;************************************************************ ;/=
;                                                               POLITY TERMS ;/=
;kntwxyz ;/=
:*?:in7::individual ;/=
:*?:7i::impeachment{space} ;/=
:*?:in7::independence{space} ;/=
:*?:f7::fundamental rights{space} ;/=
:*?:d7::democracy{space} ;/=
:*?:7d::directive principles of state policy ;/=
:*?:h7::habeas corpus{space} ;/=
:*?:q7::quo warranto{space} ;/=
:*?:b7::bicameral{space} ;/=
:*?:v7::vote{space} ;/=
:*?:7v::vice president{space} ;/=
:*?:sv7::sardar vallabh bhai patel{space} ;/=
:*?:am7::amendment ;/=
:*?:ad7::administration  ;/=
:*?:7a::act{space} ;/=
:*?:am7::ambedkar ;/=
:*?:c7::constitution ;/=
:*?:7c::centre{space} ;/=
:*?:cn7::{space}central{space} ;/=
:*:cr7::court{space} ;/=
:*:ca7::constituent assembly{space} ;/=
:*:caa7::constitutional amendment act{space} ;/=
:*:ch7::chairman{space} ;/=
:*:e7::election{space} ;/=
:*:7e::executive{space} ;/=
:*:em7::emergency{space} ;/=

:*:j7::justice{space} ;/=
:*:7j::judicial review{space} ;/=
:*:jj7::judge{space} ;/=
:*:lg7::legislature{space} ;/=
:*:7m::minority{space} ;/=
:*:m7::majority{space} ;/=
:*:ml7::muslim league{space} ;/=
:*:o7::office{space} ;/=
:*:hc7::high court{space} ;/=
:*:sc7::supreme court{space} ;/=
:*:sh7::schedule{space} ;/=
:*:p7::parliament{space} ;/=
:*:pr7::president{space} ;/=
	:*:poi7::president of india{space} ;/=
:*:pm7::prime minister{space} ;/=
	:*:7poi::prime minister of india{space} ;/=
:*:lks::lok sabha ;/=
:*:lk]::[[lok sabha]] ;/=
:*:rjs::rajya sabha ;/=
:*:rj]::[[rajya sabha]] ;/=
:*:7l::legal{space} ;/=
:*:n7::jawaharlal nehru{space} ;/=
;:*:r7::rajya sabha{space} ;/=
:*:rp7::rajendra prasad{space} ;/=
:*:rs7::resolution{space} ;/=
:*:u7::union{space} ;/=
*/
;************************************************************ ;/=
; indian constitution  ;/=
; ENDKEY - \ ;/=
;combined efficiency /=
:*:1\::[[a1 Name and territory of the Union]] ;/=
:*:2\::[[a2 Admission or establishment of new States]] ;/=
:*:3\::[[a3 Formation of new States and alteration of areas-boundaries or names of existing States]] ;/=
:*:4\::[[a4 Laws made under Articles 2 and 3 to provide for the amendment of the First and the Fourth Schedules and supplemental-incidental and consequential matters]] ;/=
:*:5\::[[a5 Citizenship at the commencement of the Constitution]] ;/=
:*:6\::[[a6 Rights of citizenship of certain persons who have migrated to India from Pakistan]] ;/=
:*:7\::[[a7 Rights of citizenship of certain migrants to Pakistan]] ;/=
:*:8\::[[a8 Rights of citizenship of certain persons of India origin residing outside India]] ;/=
:*:9\::[[a9 Person voluntarily acquiring citizenship of a foreign State not to be citizens]] ;/=
:*:10\::[[a10 Continuance of the rights of citizenship]] ;/=
:*:11\::[[a11 Parliament to regulate the right of citizenship by law]] ;/=
:*:12\::[[a12 definition of state for part III of the constitution]] ;/=
:*:13\::[[a13 Laws inconsistent with or in derogation of the fundamental rights]] ;/=
:*:14\::[[a14 Equality before law]] ;/=
:*:15\::[[a15 Prohibition of discrimination on grounds of religion, race, caste, sex]] ;/=
:*:16\::[[a16 equality of opportunity in public employment]] ;/=
:*:17\::[[a17 Abolition of Untouchability]] ;/=
:*:18\::[[a18 Abolition of titles]] ;/=
:*:19\::[[protection of certain rights regarding freedom of speech etc]] ;/=
:*:20\::[[a20 Protection in respect of conviction for offences]] ;/=
:*:21\::[[a21 Protection of life and personal liberty]] ;/=
:*:22\::[[a22 Protection against arrest and detention in certain cases]] ;/=
:*:23\::[[a23 Prohibition of traffic in human beings and forced labour]] ;/=
:*:24\::[[a24 Prohibition of employment of children in factories, etc]] ;/=
:*:25\::[[a25 Freedom of conscience and free profession, practice and propagation of religion]] ;/=
:*:26\::[[a26 Freedom to manage religious affairs]] ;/=
:*:27\::[[a27 Freedom as to payment of taxes for promotion of any particular religion]] ;/=
:*:28\::[[a28 Freedom as to attendance at religious instruction or religious worship in certain educational institutions]] ;/=
:*:29\::[[a29 Protection of interests of minorities]] ;/=
:*:30\::[[a30 Right of minorities to establish and administer educational institutions]] ;/=
:*:31\::[[a31 compulsory acquisition of property]] ;/=
:*:32\::[[a32 Remedies for enforcement of rights conferred by this Part]] ;/=
:*:33\::[[a33 Power of Parliament to modify the rights conferred by this Part in their application to forces, etc]] ;/=
:*:34\::[[a34 restriction on rights conferred by this part while martial law is in force in any area]] ;/=
:*:35\::[[a35 Legislation to give effect to the provisions of this Part]] ;/=
:*:36\::[[a36]] ;/=
:*:37\::[[a37 Application of the principles contained in this part]] ;/=
:*:38\::[[a38 State to secure a social order for the promotion of welfare of the people]] ;/=
:*:39\::[[a39 Certain principles of policy to be followed by the State]] ;/=
:*:40\::[[a40 Organisation of village panchayats]] ;/=
:*:41\::[[a41]] ;/=
:*:42\::[[a42]] ;/=
:*:43\::[[a43 Living wage, etc, for workers]] ;/=
:*:44\::[[a44 Uniform civil code]] ;/=
:*:45\::[[a45 Provision for free and compulsory education for children]] ;/=
:*:46\::[[a46 Promotion of educational and economic interests of Scheduled Castes, Scheduled Tribes and other weaker sections]] ;/=
:*:47\::[[a47]] ;/=
:*:48\::[[a48]] ;/=
:*:49\::[[a49]] ;/=
:*:50\::[[a50 Separation of judiciary from executive]] ;/=
:*:51\::[[a51 promotion of international peace and security]] ;/=
:*:52\::[[a52]] ;/=
:*:53\::[[a53 Executive power of the Union]] ;/=
:*:54\::[[a54 Election of President]] ;/=
:*:55\::[[a55 Manner of election of President]] ;/=
:*:56\::[[a56 Term of office of President]] ;/=
:*:57\::[[a57 Eligibility for re election]] ;/=
:*:58\::[[a58 Qualifications for election as President]] ;/=
:*:59\::[[a59 Conditions of Presidents office]] ;/=
:*:60\::[[a60 Oath or affirmation by the President]] ;/=
:*:61\::[[a61 Procedure for impeachment of the President]] ;/=
:*:62\::[[a62 Time of holding election to fill vacancy in the office of President and the term of office of person elected to fill casual vacancy]] ;/=
:*:63\::[[a63 The Vice President of India]] ;/=
:*:64\::[[a64]] ;/=
:*:65\::[[a65]] ;/=
:*:66\::[[a66]] ;/=
:*:67\::[[a67]] ;/=
:*:68\::[[a68]] ;/=
:*:69\::[[a69]] ;/=
:*:70\::[[a70]] ;/=
:*:71\::[[a71 Matters relating to, or connected with, the election of a president or Vice President]] ;/=
:*:72\::[[a72 Power of President to grant pardons, etc, and to suspend, remit or commute sentences in certain cases]] ;/=
:*:73\::[[a73]] ;/=
:*:74\::[[a74 Council of Ministers to aid and advise President]] ;/=
:*:75\::[[a75 Other provisions as to Ministers]] ;/=
:*:76\::[[a76 Attorney General for India]] ;/=
:*:77\::[[a77 Conduct of business of the Government of India]] ;/=
:*:78\::[[a78 Duties of Prime Minister as respects the furnishing of information to the President]] ;/=
:*:79\::[[a79 Constitution of Parliament]] ;/=
:*:80\::[[a80 Composition of the Council of States]] ;/=
:*:81\::[[a81]] ;/=
:*:82\::[[a82]] ;/=
:*:83\::[[a83]] ;/=
:*:84\::[[a84]] ;/=
:*:85\::[[a85 Sessions of Parliament, prorogation and dissolution]] ;/=
:*:86\::[[a86 Right of President to address and send messages to Houses]] ;/=
:*:87\::[[a87]] ;/=
:*:88\::[[a88 Rights of Ministers and Attorney General in respects Houses]] ;/=
:*:89\::[[a89 The Chairman and Deputy Chairman of the council of States]] ;/=
:*:90\::[[a90 Vacation and resignation of, and removal from, the office of Deputy Chairman]] ;/=
:*:91\::[[a91]] ;/=
:*:92\::[[a92]] ;/=
:*:93\::[[a93 The Speaker and Deputy Speaker of the House of the People]] ;/=
:*:94\::[[a94]] ;/=
:*:95\::[[a95 Power of the Deputy Speaker or other person to perform the duties of the office of, or to act as, Speaker]] ;/=
:*:96\::[[a96 The Speaker or the Deputy Speaker not to preside while a resolution for his removal from office is under consideration]] ;/=
:*:97\::[[a97 Salaries and allowances of the Chairman and Deputy Chairman and the Speaker and Deputy Speaker]] ;/=
:*:98\::[[a98 Secretariat of Parliament]] ;/=
:*:99\::[[a99 Oath or affirmation by members]] ;/=
:*:100\::[[a100 Voting in Houses, power of Houses to act notwithstanding vacancies and quorum]] ;/=
:*:101\::[[a101]] ;/=
:*:102\::[[a102 Disqualification s for membership]] ;/=
:*:103\::[[a103]] ;/=
:*:104\::[[a104]] ;/=
:*:105\::[[a105 Powers, privileges, etc of the Houses of Parliament and of the members and committees thereof]] ;/=
:*:106\::[[a106]] ;/=
:*:107\::[[a107]] ;/=
:*:108\::[[a108 Joint sitting of both Houses in certain cases]] ;/=
:*:109\::[[a109 Special procedure in respect of Money Bills]] ;/=
:*:110\::[[a110 Definition of Money Bill]] ;/=
:*:111\::[[a111 Assent to Bills]] ;/=
:*:112\::[[a112 Annual financial statement]] ;/=
:*:113\::[[a113]] ;/=
:*:114\::[[a114]] ;/=
:*:115\::[[a115]] ;/=
:*:116\::[[a116]] ;/=
:*:117\::[[a117]] ;/=
:*:118\::[[a118]] ;/=
:*:119\::[[a119]] ;/=
:*:120\::[[a120]] ;/=
:*:121\::[[a121]] ;/=
:*:122\::[[a122]] ;/=
:*:123\::[[a123 Power of President to promulgate Ordinances during recess of Parliament]] ;/=
:*:124\::[[a124]] ;/=
:*:125\::[[a125]] ;/=
:*:126\::[[a126]] ;/=
:*:127\::[[a127]] ;/=
:*:128\::[[a128]] ;/=
:*:129\::[[a129 Supreme Court to be a court of record]] ;/=
:*:130\::[[a130]] ;/=
:*:131\::[[a131]] ;/=
:*:132\::[[a132]] ;/=
:*:133\::[[a133]] ;/=
:*:134\::[[a134]] ;/=
:*:135\::[[a135]] ;/=
:*:136\::[[a136]] ;/=
:*:137\::[[a137]] ;/=
:*:138\::[[a138]] ;/=
:*:139\::[[a139 conferment on the Supreme Court of powers to issue certain writs]] ;/=
:*:140\::[[a140]] ;/=
:*:141\::[[a141 Law declared by Supreme Court to be binding on all courts]] ;/=
:*:142\::[[a142]] ;/=
:*:143\::[[a143 Power of President to consult Supreme Court]] ;/=
:*:144\::[[a144]] ;/=
:*:145\::[[a145]] ;/=
:*:146\::[[a146]] ;/=
:*:147\::[[a147]] ;/=
:*:148\::[[a148 Comptroller and Auditor General of India]] ;/=
:*:149\::[[a149 Duties and powers of the Comptroller and Auditor General]] ;/=
:*:150\::[[a150]] ;/=
:*:151\::[[a151]] ;/=
:*:152\::[[a152]] ;/=
:*:153\::[[a153]] ;/=
:*:154\::[[a154]] ;/=
:*:155\::[[a155 Appointment of Governor]] ;/=
:*:156\::[[a156 Term of office of Governor]] ;/=
:*:157\::[[a157]] ;/=
:*:158\::[[a158]] ;/=
:*:159\::[[a159]] ;/=
:*:160\::[[a160]] ;/=
:*:161\::[[a161 Power of Governor to grant pardons, etc, and to suspend, remit or commute sentences in certain cases]] ;/=
:*:162\::[[a162]] ;/=
:*:163\::[[a163 Council of Ministers to aid and advise Governor]] ;/=
:*:164\::[[a164]] ;/=
:*:165\::[[a165]] ;/=
:*:166\::[[a166]] ;/=
:*:167\::[[a167 Duties of Chief Minister as respects the furnishing of information to Governor, etc]] ;/=
:*:168\::[[a168]] ;/=
:*:169\::[[a169 Abolition or creation of Legislative Councils in States]] ;/=
:*:170\::[[a170]] ;/=
:*:171\::[[a171]] ;/=
:*:172\::[[a172]] ;/=
:*:173\::[[a173]] ;/=
:*:174\::[[a174]] ;/=
:*:175\::[[a175]] ;/=
:*:176\::[[a176]] ;/=
:*:177\::[[a177]] ;/=
:*:178\::[[a178]] ;/=
:*:179\::[[a179]] ;/=
:*:180\::[[a180]] ;/=
:*:181\::[[a181]] ;/=
:*:182\::[[a182]] ;/=
:*:183\::[[a183]] ;/=
:*:184\::[[a184]] ;/=
:*:185\::[[a185]] ;/=
:*:186\::[[a186]] ;/=
:*:187\::[[a187]] ;/=
:*:188\::[[a188]] ;/=
:*:189\::[[a189]] ;/=
:*:190\::[[a190]] ;/=
:*:191\::[[a191]] ;/=
:*:192\::[[a192]] ;/=
:*:193\::[[a193]] ;/=
:*:194\::[[a194]] ;/=
:*:195\::[[a195]] ;/=
:*:196\::[[a196]] ;/=
:*:197\::[[a197]] ;/=
:*:198\::[[a198 Restriction on powers of Legislative Council as to Bills other than Money Bills]] ;/=
:*:199\::[[a199]] ;/=
:*:200\::[[a200 Assent to Bills]] ;/=
:*:201\::[[a201 Bill reserved for consideration]] ;/=
:*:202\::[[a202 Annual financial statement]] ;/=
:*:203\::[[a203]] ;/=
:*:204\::[[a204]] ;/=
:*:205\::[[a205]] ;/=
:*:206\::[[a206]] ;/=
:*:207\::[[a207]] ;/=
:*:208\::[[a208]] ;/=
:*:209\::[[a209]] ;/=
:*:210\::[[a210]] ;/=
:*:211\::[[a211]] ;/=
:*:212\::[[a212]] ;/=
:*:213\::[[a213]] ;/=
:*:214\::[[a214]] ;/=
:*:215\::[[a215]] ;/=
:*:216\::[[a216]] ;/=
:*:217\::[[a217]] ;/=
:*:218\::[[a218]] ;/=
:*:219\::[[a219]] ;/=
:*:220\::[[a220]] ;/=
:*:221\::[[a221]] ;/=
:*:222\::[[a222]] ;/=
:*:223\::[[a223]] ;/=
:*:224\::[[a224 Appointment of additional and acting Judges]] ;/=
:*:225\::[[a225]] ;/=
:*:226\::[[a226 Power of High Courts to issue certain writs]] ;/=
:*:227\::[[a227]] ;/=
:*:228\::[[a228]] ;/=
:*:229\::[[a229]] ;/=
:*:230\::[[a230]] ;/=
:*:231\::[[a231]] ;/=
:*:232\::[[a232]] ;/=
:*:233\::[[a233]] ;/=
:*:234\::[[a234]] ;/=
:*:235\::[[a235]] ;/=
:*:236\::[[a236]] ;/=
:*:237\::[[a237]] ;/=
:*:238\::[[a238]] ;/=
:*:239\::[[a239 Administration of Union territories]] ;/=
:*:240\::[[a240]] ;/=
:*:241\::[[a241]] ;/=
:*:242\::[[a242]] ;/=
:*:243\::[[a243]] ;/=
:*:244\::[[a244]] ;/=
:*:245\::[[a245]] ;/=
:*:246\::[[a246]] ;/=
:*:247\::[[a247]] ;/=
:*:248\::[[a248]] ;/=
:*:249\::[[a249 Power of Parliament to legislate with respect to a matter in the State List in the national interest]] ;/=
:*:250\::[[a250]] ;/=
:*:251\::[[a251]] ;/=
:*:252\::[[a252]] ;/=
:*:253\::[[a253]] ;/=
:*:254\::[[a254]] ;/=
:*:255\::[[a255]] ;/=
:*:256\::[[a256]] ;/=
:*:257\::[[a257 Control of the Union over States in certain cases]] ;/=
:*:258\::[[a258]] ;/=
:*:259\::[[a259]] ;/=
:*:260\::[[a260]] ;/=
:*:261\::[[a261]] ;/=
:*:262\::[[a262 Adjudication of disputes relating to waters of inter State rivers or river valleys]] ;/=
:*:263\::[[a263 provisions with respect to an inter state council]] ;/=
:*:264\::[[a264]] ;/=
:*:265\::[[a265 Taxes not to be imposed save by authority of law]] ;/=
:*:266\::[[a266 Consolidated Funds and public accounts of India and of the States]] ;/=
:*:267\::[[a267 Contingency Fund]] ;/=
:*:268\::[[a268]] ;/=
:*:269\::[[a269]] ;/=
:*:270\::[[a270]] ;/=
:*:271\::[[a271]] ;/=
:*:272\::[[a272]] ;/=
:*:273\::[[a273]] ;/=
:*:274\::[[a274]] ;/=
:*:275\::[[a275 Grants from the Union to certain States]] ;/=
:*:276\::[[a276]] ;/=
:*:277\::[[a277]] ;/=
:*:278\::[[a278]] ;/=
:*:279\::[[a279]] ;/=
:*:280\::[[a280 finance commission]] ;/=
:*:281\::[[a281]] ;/=
:*:282\::[[a282]] ;/=
:*:283\::[[a283]] ;/=
:*:284\::[[a284]] ;/=
:*:285\::[[a285]] ;/=
:*:286\::[[a286]] ;/=
:*:287\::[[a287]] ;/=
:*:288\::[[a288]] ;/=
:*:289\::[[a289]] ;/=
:*:290\::[[a290]] ;/=
:*:291\::[[a291]] ;/=
:*:292\::[[a292]] ;/=
:*:293\::[[a293]] ;/=
:*:294\::[[a294]] ;/=
:*:295\::[[a295]] ;/=
:*:296\::[[a296]] ;/=
:*:297\::[[a297]] ;/=
:*:298\::[[a298]] ;/=
:*:299\::[[a299]] ;/=
:*:300\::[[a300 Suits and proceedings]] ;/=
:*:301\::[[a301]] ;/=
:*:302\::[[a302]] ;/=
:*:303\::[[a303]] ;/=
:*:304\::[[a304]] ;/=
:*:305\::[[a305]] ;/=
:*:306\::[[a306]] ;/=
:*:307\::[[a307]] ;/=
:*:308\::[[a308]] ;/=
:*:309\::[[a309 Recruitment and conditions of service of persons serving the Union or a State Subject to the provisions of this Constitution]] ;/=
:*:310\::[[a310 Tenure of office of persons serving the Union or a State]] ;/=
:*:311\::[[a311 Dismissal, removal or reduction in rank of persons employed in civil capacities under the Union or a State]] ;/=
:*:312\::[[a312 All India Services]] ;/=
:*:313\::[[a313]] ;/=
:*:314\::[[a314]] ;/=
:*:315\::[[a315 Public Service Commissions for the Union and for the States]] ;/=
:*:316\::[[a316]] ;/=
:*:317\::[[a317]] ;/=
:*:318\::[[a318]] ;/=
:*:319\::[[a319]] ;/=
:*:320\::[[a320]] ;/=
:*:321\::[[a321]] ;/=
:*:322\::[[a322]] ;/=
:*:323\::[[a323 Reports of Public Service Commissions]] ;/=
:*:324\::[[a324 Superintendence, direction and control of elections to be vested in an Election Commission]] ;/=
:*:325\::[[a325]] ;/=
:*:326\::[[a326]] ;/=
:*:327\::[[a327]] ;/=
:*:328\::[[a328]] ;/=
:*:329\::[[a329]] ;/=
:*:330\::[[a330 Reservation of seats for Scheduled Castes and Scheduled Tribes in the House of the People]] ;/=
:*:331\::[[a331]] ;/=
:*:332\::[[a332]] ;/=
:*:333\::[[a333]] ;/=
:*:334\::[[a334]] ;/=
:*:335\::[[a335 Claims of Scheduled Castes and Scheduled Tribes to services and posts]] ;/=
:*:336\::[[a336]] ;/=
:*:337\::[[a337]] ;/=
:*:338\::[[a338 Special Officer for Scheduled Castes-Scheduled Tribes etc]] ;/=
:*:339\::[[a339]] ;/=
:*:340\::[[a340 Appointment of a Commission to investigate the conditions of backward classes]] ;/=
:*:341\::[[a341]] ;/=
:*:342\::[[a342]] ;/=
:*:343\::[[a343 Official language of the Union]] ;/=
:*:344\::[[a344]] ;/=
:*:345\::[[a345]] ;/=
:*:346\::[[a346]] ;/=
:*:347\::[[a347]] ;/=
:*:348\::[[a348]] ;/=
:*:349\::[[a349]] ;/=
:*:350\::[[a350 Language to be used in representations for redress of grievances]] ;/=
:*:351\::[[a351 Directive for development of the Hindi language]] ;/=
:*:352\::[[a352 Proclamation of Emergency]] ;/=
:*:353\::[[a353]] ;/=
:*:354\::[[a354]] ;/=
:*:355\::[[a355]] ;/=
:*:356\::[[a356 Provisions in case of failure of constitutional machinery in State]] ;/=
:*:357\::[[a357]] ;/=
:*:358\::[[a358]] ;/=
:*:359\::[[a359]] ;/=
:*:360\::[[a360 Provisions as to financial emergency]] ;/=
:*:361\::[[a361 Protection of President and Governors and Rajpramukhs]] ;/=
:*:362\::[[a362]] ;/=
:*:363\::[[a363]] ;/=
:*:364\::[[a364]] ;/=
:*:365\::[[a365 Effect of failure to comply with, or to give effect to, directions given by the Union]] ;/=
:*:366\::[[a366]] ;/=
:*:367\::[[a367]] ;/=
:*:368\::[[a368 Power of Parliament to amend the Constitution and procedure therefor]] ;/=
:*:369\::[[a369]] ;/=
:*:370\::[[a370]] ;/=
:*:371\::[[a371]] ;/=
:*:372\::[[a372]] ;/=
:*:373\::[[a373]] ;/=
:*:374\::[[a374]] ;/=
:*:375\::[[a375]] ;/=
:*:376\::[[a376]] ;/=
:*:377\::[[a377]] ;/=
:*:378\::[[a378]] ;/=
:*:379\::[[a379]] ;/=
:*:380\::[[a380]] ;/=
:*:381\::[[a381]] ;/=
:*:382\::[[a382]] ;/=
:*:383\::[[a383]] ;/=
:*:384\::[[a384]] ;/=
:*:385\::[[a385]] ;/=
:*:386\::[[a386]] ;/=
:*:387\::[[a387]] ;/=
:*:388\::[[a388]] ;/=
:*:389\::[[a389]] ;/=
:*:390\::[[a390]] ;/=
:*:391\::[[a391]] ;/=
:*:392\::[[a392 Power of the President to remove difficulties]] ;/=
:*:393\::[[a393]] ;/=
:*:394\::[[a394]] ;/=
:*:395\::[[a395]] ;/=

;************************************************************
;                                                               INDIAN STATES
; END KEY = - minus sign
; ISO 3166-2:IN = International CODING SYSTEM

:*?:ap-::andhra pradesh
:*?:ar-::arunanchal pradesh ;/=
:*?:as-::assam ;/=
:*?:br-::bihar ;/=
:*?:ct-::chhattisgarh ;/=
:*?:ga-::goa ;/=
:*?:gj-::gujarat ;/=
:*?:hr-::haryana ;/=
:*?:hp-::himachal pradesh ;/=
:*?:jh-::jharkhand ;/=
:*?:ka-::karnataka ;/=
:*?:kl-::kerala ;/=
:*?:mp-::madhya pradesh ;/=
:*?:mh-::maharashtra ;/=
:*?:mn-::manipur ;/=
:*?:ml-::meghalaya ;/=
:*?:mz-::mizoram ;/=
:*?:nl-::nagaland ;/=
:*?:or-::odissa ;/=
:*?:pb-::punjab ;/=
:*?:rj-::rajasthan ;/=
:*?:sk-::sikkim ;/=
:*?:tn-::tamil nadu ;/=
:*?:tg-::telangana ;/=
:*?:tr-::tripura ;/=
:*?:ut-::uttarakhand ;/=
:*?:up-::uttar pradesh ;/=
:*?:wb-::west bengal ;/=
;********UT UNION TERRITORIES
:*?:an-::andaman and nicobar islands
:*?:ch-::chandigarh ;/=
:*?:dh-::dadra & nagar haveli & daman & diu ;/=
:*?:dl-::delhi ;/=
:*?:jk-::jammu and kashmir ;/=
:*?:la-::ladakh ;/=
:*?:ld-::lakshadweep ;/=
:*?:py-::puducherry ;/=
	
;***********************************
;                                                               INDIAN STATES wikinotes
; END KEY = "=" minus sign
; obsidian format notes
; ISO 3166=2:IN = International CODING SYSTEM

:*?:ap=::[[andhra pradesh]]
:*?:ar=::[[arunanchal pradesh]] 
:*?:as=::[[assam]] 
:*?:br=::[[bihar]] 
:*?:ct=::[[chhattisgarh]] 
:*?:ga=::[[goa]] 
:*?:gj=::[[gujarat]] 
:*?:hr=::[[haryana]] 
:*?:hp=::[[himachal pradesh]] 
:*?:jh=::[[jharkhand]] 
:*?:ka=::[[karnataka]] 
:*?:kl=::[[kerala]] 
:*?:mp=::[[madhya pradesh]] 
:*?:mh=::[[maharashtra]] 
:*?:mn=::[[manipur]] 
:*?:ml=::[[meghalaya]] 
:*?:mz=::[[mizoram]] 
:*?:nl=::[[nagaland]] 
:*?:or=::[[odisha]] 
:*?:pb=::[[punjab]] 
:*?:rj=::[[rajasthan]] 
:*?:sk=::[[sikkim]] 
:*?:tn=::[[tamil nadu]] 
:*?:tg=::[[telangana]] 
:*?:tr=::[[tripura]] 
:*?:ut=::[[uttarakhand]] 
:*?:up=::[[uttar pradesh]] 
:*?:wb=::[[west bengal]] 
;********UT UNION TERRITORIES
:*?:an=::[[andaman and nicobar islands]]
:*?:ch=::[[chandigarh]] 
:*?:dh=::[[dadra and nagar haveli]] 
:*?:dl=::[[delhi]] 
:*?:jk=::[[jammu and kashmir]] 
:*?:la=::[[ladakh]] 
:*?:ld=::[[lakshadweep]] 
:*?:py=::[[puducherry]] 
	
;***********************************

; END KEY - 8
;bfhjknquxyz
	
:*:a8::atmosphere{space} ;/=
:*:br8::brahmaputra{space} ; for rivers ENDKEY - r ;/=
:*:c8::current{space} ;/=
:*:d8::deccan{space} ;/=
:*:e8::earth{space} ;/=
:*:8e::eclipse{space} ;/=
:*:f8::fish{space} ;/=
:*:g8::gulf{space} ;/=
:*:8g::galaxy{space} ;/=
:*:gr8::ganga{space} ; for rivers ENDKEY - r ;/=
;:*:h::{space} ;/=
:*:is8::island{space} ;/=
;:*:j::{space} ;/=
;:*:k::{space} ;/=
:*:l8::land{space} ;/=
:*:m8::moon{space} ;/=
 ;           :*:8m::mountain{space}
	
;:*:n::{space}
:*:o8::ocean{space}
	 ;/=
:*:p8::plateau{space} ;/=
:*:8p::peninsula{space} ;/=
:*:pl8::plain{space} ;/=
:*:r8::river{space} ;/=
:*:8r::radiation{space} ;/=
:*:s8::sun{space} ;/=
:*:8s::satellite{space} ;/=
:*:sp8::space{space} ;/=
:*:st8::strait{space} ;/=
:*:ss8::solar system{space} ;/=
:*:sr8::sutlej{space} ;/=
;:*:t8::topography{space} ;/=
;:*:u::{space} ;/=
:*:v8::volcano{space} ;/=
:*:8v::vulture{space} ;/=
:*:vl8::valley{space} ;/=
:*:w8::water{space} ;/=
:*:8w::weather{space} ;/=
:*:x8::xerophyte{space} ;/=
;:*:y::{space} ;/=
:*:yr8::yamuna{space} ; for rivers ENDKEY - r ;/=
;:*:z::{space} ;/=
		 ;/=
:*:g8::gult{space} ;/=
:*:s8::sea{space}
:*:p8::precipitation{space}
:*:ev8::evaporation{space}
:*:co8::condensation{space}
:*:e8::earth{space}
:*:s8::sun{space}
:*:m8::moon{space}
:*:s8::solar system{space}
:*:sp8::space{space}
:*:c8::cloud{space}
		
:*:wi8::wind{space}
	*/
;***********************************
;                                                              COLOR
; END KEY = k
; adekjklmnqstuvxz
:*?:dc,::dark
:*?:lc,::light ;/=
:*?:cc,::color ;/=
:*?:wc,::white ;/=
:*?:bc,::black ;/=
:*?:zc,::brown ; from chinese word "zong1 se4" ;/=
:*?:vc,::violet ;/=
:*?:ic,::indigo ;/=
:*?:bc,::blue ;/=
:*?:gc,::green ;/=
:*?:hc,::grey ; from chinese word "hui1 se4" ;/=
:*?:yc,::yellow ;/=
:*?:oc,::orange ;/=
:*?:rc,::red ;/=
:*?:pc,::pink ;/=
;************************************ ;/=
; 9 is the end key ;/=
;                                                              common stuff / current affairs ;/=
;befjklquvxyz ;/=
/*
:*:b9::board{space}	 ;/=
:*:t9::treaty{space} ;/=
:*:s9::structuge{space} ;/=
:*:9s::sanctuary{space} ;/=
:*:ce9::critically endangered{space} ;/=
:*:a9::agency{space} ;/=
:*:ag9::agenda{space} ;/=
:*:d9::department{space} ;/=
:*:o9::organisation{space} ;/=
:*:r9::report{space} ;/=
;--------------------- ;/=
:*:cl9::climate{space} ;/=
:*:cf9::current affairs{space} ;/=
:*:c9::council ;/=
:*:9c::committee ;/=
:*:cm9::commission ;/=
;--------------------- ;/=
:*:m9::ministry{space} ;/=
;             :*:9m::military{space} ;/=
:*:mg9::magazine{space} ;/=
:*:9p::power{space} ;/=
;--------------------- ;/=
:*?:n9::{space}national{space} ;/=
:*?:p9::{space}population{space} ;/=
:*?:im9::{space}important{space} ;/=
:*?:i9::{space}international{space} ;/=
:*?:9i::{space}initiative{space} ;/=
:*?:if9::{space}infrastructure{space} ;/=
;--------------------- ;/=
:*?:w9::world ;/=
:*?:wb9::{space}world bank{space} ;/=
:*?:9w::wildlife{space} ;/=
;--------------------- ;/=
:*:e9::exercise{space} ;/=
	:*:me9::military exercise{space} ;/=
:*?:g9::global{space} ;/=
:*:h9::human rights{space} ;/=
*/
;--------------------- ;/=
;                                                              PERSONALITIES ;/=
; end key - (also for indian states) ;/=
:*:rmp::raja rammohan roy{space} ;18/3=6
:*:svp::swami vivekanada{space} ;16/3=5
;************************************************************************************* ;/=
;                                                        disciplines or mains subjects et cetera ;/=
; period is the end key ;/=
;                                                           a ;/=
:*?:a.::anthropology ;12/2=6
:*:.a::ancient history ;/=
:*:ab.::abysmal ;/=
:*:acm.::accommodate ;/=
:*:aff.::affect ;/=
:*:af.::afforestation ;/=
	:*:fa.::deforestation ;/=
:*:ar.::art and culture ;/=
:*:an.::ancient ;/=
	:*:na.::modern ;/=
:*:ah.::ancient history	 ;/=
	:*:ha.::modern history	 ;/=
:*:arc.::architecture ;/=
;                                                           b ;/=
:*?:b.::biology ;/=
:*:.b::business ;/=
;                                                           c ;/=
:*?:c.::culture ;/=
	:*:.c::commerce ;/=
:*:cm.::computer ;/=
;                                                           d ;/=
:*:d.::digital ;/=
	:*:dp.::diplomacy ;/=
;                                                           e	 ;/=
:*?:e.::economics ;/=
	:*:.e::environment ;/=
:*:em.::electromagnetic ;/=
:*:en.::engineering ;/=
:*:eq.::equality ;/=
:*:er.::ergonomics	 ;/=
:*:es.::espionage ;/=
:*:et.::etymology ;/=
:*:ev.::eventually ;/=
:*:f.::forensic ;/=
:*?:g.::geography ;/=
	:*:.g::geology ;/=
:*:gm.::geomorphology ;/=
:*:.gm::geometry ;/=
:*:h.::history ;/=
:*:j.::journalism ;/=
:*:l.::literature ;/=
:*:m.::mathematics ;/=
:*:mg.::management ;/=
:*:n.::network ;/=
:*:na.::nanotechnology ;/=
:*:nm.::numismatics ;/=
:*:p.::physics ;/=
	:*:.p::polity ;/=
:*:pb.::public ;/=
:*:ph.::philosophy ;/=
:*:py.::psychology ;/=
:*:r.::religion ;/=
:*:.r::robotics ;/=
:*?:s.::science{space} ;/=
	:*:.s::sociology ;/=
:*:st.::statistics{space} ;/=
:*:sp.::spirituality ;/=
:*?:t.::technology{space} ;/=
	:*:.t::trade ;/=
:*:w.::writing ;/=
:*:z.::zoology ;/=
;--------------------- ;/=
;************************************************************************************* ;/=
	
;*************************************************************************************
;                                                              TLD CODES COUNTRIES
;source for TLD codes of åœ‹é–€
; https://www.worldstandards.eu/other/tlds/
; https://byjus.com/govt-exams/country-capital-currency/
; CIA FACTBOOK countries list - https://www.cia.gov/the-world-factbook/countries/
;*************** COUNTRIES & CAPITALS**************************
; END KEY countries - k zero
; END KEY capitals - j
;
; generic terms
		:*?:c0::country ;/=
		:*?:0c::capital ;/=
		:*?:c=::city ;/=
	
;       	******************************
; A
:*:afk::afghanistan ;/=
:*:afj::kabul ;/=
:*:af\::[[afghanistan]] ;/=
;******************************
:*:alk::albania
:*:alj::tirane ;/=
:*?:al\::[[albania]] ;/=
;****************************** ;/=
:*?:atk::austria ;/=
:*?:atj::vienna ;/=
:*?:ath::austrian ;/=
:*?:at\::[[austria]] ;/=
;****************************** ;/=
;****************************** ;/=
:*:dzk::algeria ;/=
:*:dzj::algiers ;/=
:*?:dz\::[[algeria]] ;/=
;****************************** ;/=
:*:aqk::antarctica ;/=
:*?:aq\::[[antarctica]] ;/=
;****************************** ;/=
:*:ark::argentina ;/=
:*:arj::buenos aires ;/=
:*?:ar\::[[argentina]] ;/=
;****************************** ;/=
:*:amk::armenia ;/=
:*:amj::yerevan ;/=
:*?:am\::[[armenia]] ;/=
;****************************** ;/=
:*:auk::australia ;/=
:*:auj::canberra ;/=
:*?:au\::[[australia]] ;/=
;************************************ ;/=
; B ;/=
:*:bsk::bahamas ;/=
:*:bsj::nassau ;/=
:*?:bs\::[[bahamas]] ;/=

:*:bhk::bahrain ;/=
:*:bhj::manama ;/=
:*?:bh\::[[bahrain]] ;/=

:*:bdk::bangladesh ;/=
:*:bdj::dhaka ;/=
:*?:bd\::[[bangladesh]] ;/=

:*:byk::belarus ;/=
:*:byj::minsk ;/=
:*?:by\::[[belarus]] ;/=

:*:bek::belgium ;/=
:*:bej::brussels ;/=
:*?:be\::[[belgium]] ;/=

:*:sck::scotland ;note - tld for scotland - sociology cot ---> but will use sck ;/=
:*:scj::edinburgh ;/=
:*?:sc\::[[scotland]] ;/=

:*:bbk::barbados ;/=
:*:bbj::bridgetown ;/=
:*?:bb\::[[barbados]] ;/=

:*:bwk::botswana	 ;/=
:*:bwj::gaborone ;/=
:*?:bw\::[[botswana±]] ;/=

:*:bik::burundi ;/=
:*:bij::gitega ;/=
:*?:bi\::[[burundi]] ;/=

:*:btk::bhutan ;/=
:*:btj::thimphu ;/=
:*?:bt\::[[bhutan]] ;/=

:*:brk::brazil ;/=
:*:brj::brasilia ;/=
:*?:br\::[[brazil]] ;/=
;************************************ ;/=
;C ;/=
:*:khk::cambodia ;/=
:*:khj::phnom penh ;/=
:*?:kh\::[[cambodia]] ;/=

:*:cak::canada ;/=
:*:caj::ottawa ;/=
:*:ack::canadian ; demonym reverse tld country code ;/=
:*?:ca\::[[canada]] ;/=

:*?:tdk::chad ;/=
:*?:tdj::N'Djamena ;/=
:*?:td\::[[chad]] ;/=
 
:*:cnk::china ;/=
:*:cnj::beijing ;/=
:*:cn8::yuan ;/=
:*:cnh::chinese ;/=
:*?:cn\::[[china]] ;/=
	 
:*:cuk::cuba ;/=
:*:cuj::havana ;/=
:*?:cu\::[[cuba]] ;/=

:*:clk::chile ;/=
:*:clj::santiago ;/=
:*:clh::chilean ;/=
:*?:cl\::[[chile]] ;/=

:*:cok::colombia ;/=
:*:coj::bogota ;/=
:*?:co\::[[colombia]] ;/=

:*:cyk::cyprus ;/=
:*:cyj::nicosia ;/=
:*?:cy\::[[cyprus]] ;/=
;************************************ ;/=
;D ;/=
:*:dkk::denmark ;/=
:*:dkj::copenhagen ;/=
:*?:dk\::[[denmark]] ;/=

; hotstr conflict with uaej moreover it's a city !! ;/=
; :*:aek::dubai ; dubai is a city of UAE ;/=

;************************************ ;/=
;E ;/=
:*?:etk::ethiopia ;/=
:*?:etj::addis ababa ;/=
:*?:et\::[[ethiopia]] ;/=
; neigobors - Somaliaj Djiboutij and Sudank ;/=

:*?:eck::ecuador ;/=
:*?:ecj::quito ;/=
:*?:ec\::[[ecuador]] ;/=

:*?:egk::egypt ;/=
:*?:egj::cairo ;/=
:*?:egh::egyptian ;/=
:*?:eg\::[[egypt]] ;/=

:*?:svk::el salvador ;/=
:*?:svj::san salvador ;/=
:*?:sv\::[[el salvador]] ;/=

:*?:erk::eritrea ;/=
:*?:erj::asmara ;/=
:*?:er\::[[eritrea]] ;/=

:*?:euk::european union ;/=
:*?:euj::brussels ; not de jure but de facto ;/=
:*?:eu\::[[european union]] ;/=
;************************************ ;/=
;F
:*?:fjk::fiji ;/=
:*?:fjj::suva ;/=
:*?:fj\::[[fiji]] ;/=

:*?:fik::finland ;/=
:*?:fij::Helsinki ;/=
:*?:fi\::[[finland]] ;/=

:*?:frk::france ;/=
:*?:frj::paris ;/=
:*?:rfh::french ;/=
:*?:fr\::[[france]] ;/=

;************************************ ;/=
;G ;/=
:*?:gek::georgia ;/=
:*?:gej::tbilisi ;/=
:*?:ge\::[[georgia]] ;/=

:*?:dek::germany ;/=
:*?:dek::berlin ;/=
:*?:deh::german ;/=
:*?:de\::[[germany]] ;/=

:*?:ghk::ghana ;/=
:*?:ghj::accra ;/=
:*?:gh\::[[ghana]] ;/=

:*?:grk::greece ;/=
:*?:grj::athens ;/=
:*?:grh::greek ;/=
:*?:gr\::[[greece]] ;/=

:*?:glk::greenland ;/=
:*?:glk::nuuk ;/=
:*?:gl\::[[greenland]] ;/=
;************************************ ;/=
;H ;/=
:*?:hkk::hong kong ;à¤¯à¥‡  à¤à¤• à¤¶à¤¹à¤° à¤¹à¥ˆ  ;/=
:*?:hk\::[[hong kong]] ;

:*?:huk::hungary ;/=
:*?:huj::budapest ;/=
:*?:hu\::[[hungary]] ;/=
;************************************ ;/=
;I ;/=
:*?:isk::iceland ;/=
:*?:isj::reykjavik ;/=
:*?:is\::[[iceland]] ;/=

:*?:ink::india ;/=
:*?:inj::new delhi ;/=
:*?:in8::rupee ;/=
:*?:inh::indian ;/=
:*?:in\::[[india]] ;/=

:*?:idk::indonesia ;/=
:*?:idj::jakarta ;/=
:*?:id\::[[indonesia]] ;/=

:*?:irk::iran ;/=
:*?:irj::tehran ;/=
:*?:ir\::[[iran]] ;/=

:*?:iqk::iraq ;/=
:*?:iqj::baghdad ;/=
:*?:iq\::[[iraq]] ;/=

:*?:iek::ireland ;/=
:*?:iej::dublin ;/=
:*?:ie\::[[ireland]] ;/=

:*?:ilk::israel ;/=
:*?:ilj::jerusalem ;/=
:*?:il\::[[israel]] ;/=

:*?:itk::italy ;/=
:*?:itj::rome ;/=
:*?:it\::[[italy]] ;/=
;************************************ ;/=
;J ;/=
:*?:jmk::jamaica ;/=
:*?:jmj::Kingston ;/=
:*?:jm\::[[jamaica]] ;/=

:*?:jpk::japan ;/=
:*?:jpj::tokyo ;/=
:*?:jph::japanese ;/=
:*?:jp\::[[japan]] ;/=

:*?:jok::jordan ;/=
:*?:joj::amman ;/=
:*?:jo\::[[jordan]] ;/=
;************************************ ;/=
;K ;/=
:*?:kzk::kazakhstan ;/=
:*?:kzj::Nur Sultan ;/=
:*?:kz\::[[kazakhstan]] ;/=

:*?:kek::kenya ;/=
:*?:kej::nairobi ;/=
:*?:ke\::[[kenya]] ;/=

:*?:krk::south korea ;/=
:*?:krj::seoul ;/=
:*?:rkj::korean ;/=
:*?:kr\::[[south korea]] ;/=

:*?:kwk::kuwait ;/=
:*?:kwj::kuwait city ;/=
:*?:kw\::[[kuwait]] ;/=

:*?:kgk::kyrgyzstan ;/=
:*?:kgj::bishkek ;/=
:*?:kg\::[[kyrgyzstan]] ;/=
;************************************ ;/=
;L ;/=
:*?:lak::laos ;/=
:*?:laj::vientiane ;/=
:*?:la\::[[laos]] ;/=

:*?:lbk::lebanon ;/=
:*?:lbj::beirut ;/=
:*?:lb\::[[lebanon]] ;/=

:*?:lyk::libya ;/=
:*?:lyj::tripoli ;/=
:*?:ly\::[[libya]] ;/=

:*?:ltk::lithuania ;/=
:*?:ltj::vilnius ;/=
:*?:lt\::[[lithuania]] ;/=

:*?:luk::luxembourg ;/=
:*?:luj::luxembourg city ;/=
:*?:lu\::[[luxembourg]] ;/=
;************************************ ;/=
;M ;/=

:*?:mlk::mali{space} ;/=
:*?:mlj::bamako{space} ;/=
:*?:ml\::mali{space} ;/=

:*?:mgk::madagascar ;/=
:*?:mgj::Antananarivo ;/=
:*?:mg\::[[madagascar]] ;/=

:*?:myk::malaysia ;/=
:*?:myj::kuala lumpur ;/=
:*?:myh::malaysian ;/=
:*?:my\::[[malaysia]] ;/=

:*?:mvk::maldives ;/=
:*?:mvj::malÃ© ;/=
:*?:mv\::[[maldives]] ;/=

:*?:muk::mauritius ;/=
:*?:muj::port louis ;/=
:*?:mu\::[[mauritius]] ;/=

:*?:mxk::mexico ;/=
:*?:mxj::mexico city ;/=
:*?:mxh::mexican ;/=
:*?:mx\::[[mexico]] ;/=

:*?:mnk::mongolia ;/=
:*?:mnj::ulaanbaatar ;/=
:*?:mn\::[[mongolia]] ;/=

:*?:mak::morocco ;/=
:*?:maj::rabat ;/=
:*?:ma\::[[morocco]] ;/=

:*?:mmk::myanmmar ;/=
:*?:mmk::naypyidaw ;/=
:*?:mm\::[[myanmmar]] ;/=
;************************************ ;/=
;N ;/=
:*?:nak::namibia ;/=
:*?:naj::windhoek ;/=
:*?:na\::[[namibia]] ;/=

:*?:npk::nepal ;/=
:*?:npj::kathmandu ;/=
:*?:np\::[[nepal]] ;/=

:*?:nlk::netherlands ;/=
:*?:nlj::amsterdam ;/=
:*?:nl\::[[netherlands]] ;/=

:*?:nzk::new zealand ;/=
:*?:nzj::wellington ;/=
:*?:nz\::[[new zealand]] ;/=

:*?:nik::nicaragua ;/=
:*?:nij::managua ;/=
:*?:ni\::[[nicaragua]] ;/=

:*?:ngk::nigeria ;/=
:*?:ngj::abuja ;/=
:*?:ng\::[[nigeria]] ;/=

:*?:nok::norway ;/=
:*?:noj::oslo ;/=
:*?:no\::[[norway]] ;/=
;************************************ ;/=
;O ;/=
:*?:omk::oman ;/=
:*?:omj::muscat ;/=
:*?:om\::[[oman]] ;/=
;************************************ ;/=
;P ;/=
:*?:pkk::pakistan ;/=
:*?:pkj::islamabad ;/=
:*?:pkh::pakistan ;/=
:*?:pk\::[[pakistan]] ;/=

:*?:psk::palestine ;/=
:*?:psj::ramallah j jerusalem ;/=
:*?:ps\::[[palestine]] ;/=

:*?:pyk::paraguay ;/=
:*?:pyj::asunciÃ³n ;/=
:*?:py\::[[paraguay]] ;/=

:*?:phk::philippines ;/=
:*?:phj::manila  ;/=
:*?:ph\::[[philippines]] ;/=

:*?:plk::poland ;/=
:*?:plj::warsaw ;/=
:*?:pl\::[[poland]] ;/=

:*?:ptk::portugal ;/=
:*?:ptj::lisbon ;/=
:*?:tpk::portugese ;/=
:*?:pt\::[[portugal]] ;/=

:*?:prk::puerto rico ;/=
:*?:prj::san juan ;/=
:*?:pr\::[[puerto rico]] ;/=
;************************************ ;/=
;Q ;/=
:*?:qak::qatar ;/=
:*?:qaj::doha ;/=
:*?:qa\::[[qatar]] ;/=
;************************************ ;/=
;R ;/=
:*?:ruk::russia ;/=
:*?:ruj::moscow ;/=
:*?:ru8::ruble ;/=
:*?:urk::russian ;/=
:*?:ru7::soviet ;/=
:*?:ru6::soviet union ;/=
:*?:ru\::[[russia]] ;/=
;************************************ ;/=
;S ;/=
:*?:sak::saudi arabia ;/=
:*?:saj::riyadh ;/=
:*?:sa8::riyal ;/=
:*?:sa\::[[saudi arabia]] ;/=

:*?:snk::senegal ;/=
:*?:snj::dakar ;/=
:*?:sn\::[[senegal]] ;/=

:*?:rsk::serbia ;/=
:*?:rsj::belgrade ;/=
:*?:rs\::[[serbia]] ;/=

:*?:sgk::singapore ; city-state ;/=
:*?:sg\::[[singapore]] ;/=

:*?:skk::slovakia ;/=
:*?:skj::bratislava ;/=
:*?:sk\::[[slovakia]] ;/=

:*?:sik::slovenia ;/=
:*?:sij::ljubljana ;/=
:*?:si\::[[slovenia]] ;/=

:*?:sok::somalia ;/=
:*?:soj::mogadishu ;/=
:*?:so\::[[somalia]] ;/=

:*?:zak::south africa ;/=
:*?:zaj::cape town ;/=
:*?:za\::[[south africa]] ;/=

:*?:sbk::solomon islands ;/=
:*?:sbj::honiara ;/=
:*?:sb\::[[solomon islands]] ;/=

:*?:esk::spain ;/=
:*?:esj::madrid ;/=
:*?:es\::[[spain]] ;/=

:*?:lkk::sri lanka ;/=
:*?:lkj::Sri Jayawardenepura Kotte ;/=
:*?:lk\::[[sri lanka]] ;/=

:*?:sdk::sudan ;/=
:*?:sdj::khartoum ;/=
:*?:sd\::[[sudan]] ;/=

:*?:ssk::south sudan ;/=
:*?:sdj::juba ;/=
:*?:ss\::[[south sudan]] ;/=

:*?:sek::sweden ;/=
:*?:sej::stockholm ;/=
:*?:se\::[[sweden]] ;/=

:*?:chk::switzerland ;/=
:*?:chj::bern ;/=
:*?:ch\::[[switzerland]] ;/=

:*?:syk::syria ;/=
:*?:syj::damascus ;/=
:*?:sy\::[[syria]] ;/=
;************************************ ;/=
;T ;/=
:*?:twk::taiwan ;/=
:*?:twj::taipei ;/=
:*?:tw\::[[taiwan]] ;/=

:*?:tjk::tajikistan ;/=
:*?:tjj::dushanbe ;/=
:*?:tj\::[[tajikistan]] ;/=

:*?:tzk::tanzania ;/=
:*?:tzj::dodoma ;/=
:*?:tz\::[[tanzania]] ;/=

:*?:thk::thailand ;/=
:*?:thj::bangkok ;/=
:*?:th\::[[thailand]] ;/=

:*?:tok::tonga ;/=a small polynesian country
:*?:toj::nukualofa ;/=
:*?:to\::[[tonga]] ;/=


:*?:ttk::trinidad & tobago ;/=
:*?:ttj::port of spain ;/=
:*?:tt\::[[trinidad & tobago]] ;/=

:*?:tnk::tunisia ;/=
:*?:tnj::tunis ;/=
:*?:tn\::[[tunisia]] ;/=

:*?:trk::turkey ;/=
:*?:trj::ankara ;/=
:*?:tr\::[[turkey]] ;/=

:*?:tmk::turkmenistan ;/=
:*?:tmk::ashgabat ;/=
:*?:tm\::[[turkmenistan]] ;/=

;************************************ ;/=
;U ;/=
:*?:ugk::uganda ;/=
:*?:ugj::kampala ;/=
:*?:ug\::[[uganda]] ;/=

:*?:uak::ukraine ;/=
:*?:uaj::kyiv ;/=
:*?:ua\::[[ukraine]] ;/=

:*?:aek::united arab emirate ;/=
:*?:aej::abu dhabi ;/=
:*?:ae\::[[united arab emirate]] ;/=

:*?:ukk::united kingdom ;/=
:*?:ukj::london ;/=
:*?:uk8::pound ;/=
:*?:ukh::british ;/=
:*?:uk\::[[united kingdom]] ;/=

:*?:usk::united states of america ;/=
:*?:usj::washington ;/=
:*?:us8::dollar ;/=
:*?:ush::american ;/=
:*?:us\::[[united states of america]] ;/=

:*?:uyk::uruguay ;/=
:*?:uyj::montevideo ;/=
:*?:uy\::[[uruguay]] ;/=


:*?:uzk::uzbekistan ;/=
:*?:uzj::tashkent ;/=
:*?:uz\::[[uzbekistan]] ;/=

;************************************ ;/=
;V ;/=
:*?:vuk::vanuatu ;/=
:*?:vuj::port vila ;/=
:*?:vu\::[[vanuatu]] ;/=

:*?:vak::vatican city ; it's a city-state ;/=
:*?:va\::[[vatican city]] ;/=

:*?:vek::venezuela ;/=
:*?:vej::caracus ;/=
:*?:ve\::[[venezuela]] ;/=

:*?:vnk::vietnam ;/=
:*?:vnj::hanoi ;/=
:*?:vnh::vietnamese ;/=
:*?:vn\::[[vietnam]] ;/=
;************************************ ;/=
;W ;/=
;************************************ ;/=
;X ;/=
;************************************ ;/=
;Y ;/=
:*?:yek::yemen ;/=
:*?:yej::sanaa ;/=
:*?:ye\::[[yemen]] ;/=

;************************************ ;/=
;Z ;/=
:*?:zmk::zambia ;/=
:*?:zmj::lusaka ;/=
:*?:zm\::[[zambia]] ;/=

:*?:zwk::zimbabwe ;/=
:*?:zwj::harare ;/=
:*?:zw\::[[zimbabwe]] ;/=