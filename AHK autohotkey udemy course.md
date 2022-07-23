### to send raw text
- SendInput {Raw}=SPARKLINE(1,{"charttype","bar";"max",100;"color1","black"})
- AHK studio
	- ahk studio can run scripts inside without you saving it ! :)))
	- compiled scrips 有 更 size since they need everything to make a running version
	- alt+m = omni-search
	- alt+r = run a script in د studio !
- taskbar on right for 更 [[efficiency]]
- make Unicode 32-bit files so that they can be run on older computers as welll
- **#SingleInstance,Force** = forces د script to launch د command for a single time only
- Message boxes (MsgBox) are super easy to 用  and are د way د vast majority 和 coders 用  to do simple troubleshooting ; they are 用  to debug code.
- #WinActive, PROGRAM_ 名称
 // whatever typed 里 b/w bw will affect only د program mentioned, context-sensitive 热string 和 stuff
- #WinActive
---
- Variable
	   - Var:= "Text stored inside"
	   - to print a variable, MsgBox %Var% or %(1 space)Var --> % Var

- linux [[philosophy]]
	- 用  tree root analogy to store scripts instead 和 making all 和 them 里 one 大 file

- #Directives = Non-Positional #Directives can be thought 和 as a scripts "settings"
	- Only **one** **_command_** can be 用  per line whereas **multiple _functions_** can be 用  on one line. That  是 why د author prefers functions over commands
	---
	
	29/5/2021 12:09 AM
	
	This AutoHotkey script inserts a table 和 contents into your Markdown file - a table 和 contents can be updated by simply calling د script again.

Place a marker in د document where you would like د table 和 contents to appear. Then, a nested list 和 all د headers in د document will replace د marker. د marker defaults to \[...\] so د following document:

<!-- \[toc\] \-->
...
<!-- \[/toc\] \-->

 #  remapping 
 a::b  ; to remap a key to b
# Mouse
- Click, 2  ; will click 2 times at curr mouse pos
- MouseGetPos, x,y
# Click
click 1
getmousepos
MouseMove 941,791
# comments
select text = shift+F1 (toggle multi-line comment)

# review
; works 只 为 这 script
^!e:: Edit
^!r:: Reload
^!p:: Pause
^!s::Suspend


11-06-2021
# tool tip 和 splash text
;LAlt & j::AltTab
LAlt & a::  
Send, australia
return

## tooltip
{hash} persistant = keeps د script running

tooltip hahaha
Sleep 4000
tooltip ; to close it

## splashtext

SplashTextOn 500,500, titulos, textos
Sleep 2000
SplashTextOff

## gosub 和 subroutine

Gosub,mysub
MsgBox ytytytyt
return

mysub:
MsgBox hihihihi
return

## funtions

```query
"AHK autohotkey udemy course"
```