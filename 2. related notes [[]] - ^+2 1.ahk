#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance,Force
#persistent

;****************************************
; ctrl +shift + 2
^+2::
Send, {end}
send, {space}_related_ [[]] | [[]] | [[]] {Left 17}
return
;;;;;;;;;;;;;;;;;;;; hotkey keystrokes - 3
;;;;;;;;;;;;;;;;;;;; keystrokes saved - 46
;;;;;;;;;;;;;;;;;;;; 46/3 = 15.3
;****************************************