---
alias: [2021-12-10,personal vim notes]
---
[[]]
```toc
```
practical vim edit book
<a rel='nofollow' href='https://www.qr-code-generator.com' border='0' style='cursor:default'><img src='https://chart.googleapis.com/chart?cht=qr&chl=https%3A%2F%2Ft.me%2Freader_paradise%2F1229&chs=180x180&choe=UTF-8&chld=L|2' alt=''></a>
[[2022-02-27]] 19:53
# increment numbers
g Ctrl-A

[[2022-02-03]] 20:34 [[]] | [[]] | [[]] # # #

![[vi-vim-tutorial-1 1.gif]]

![[vi-vim-tutorial-2.gif]]

![[vi-vim-tutorial-3.gif]]

![[vi-vim-tutorial-4.gif]]

![[vi-vim-tutorial-5.gif]]

![[vi-vim-tutorial-6.gif]]

![[vi-vim-tutorial-7 2.gif]]


graphical cheat sheet
https://i.stack.imgur.com/i3iyY.gif
### macro
process for making a macro -
q**a** –> q –> @**a**
```
`. = go to the last edited line
ma = make a Mark "a" (it's invisible, kind of meta)
`a = go to Mark "a"
) = Move the cursor forward to the next sentence.
( = Move the cursor backward by a sentence.

c{motion} = would delete the text from the cursor up to (but not including) the next exclamation mark and enter insert mode. The deleted text is copied to the clipboard and can be pasted.
OR
delete and enter insert mode

V = Linewise selection mode. Whole lines are always selected.

```
^ww = toggle between 2 open windows (better and faster)
### range in vim
:put=range(1,5)
:put=range(1,5,2) - to control the increment itself ! (gotta love vim !!!)
or
g c-a = press g then ctrl + a on your selected range
	c-a = to increment
	c-x = to decrement
[[2022-01-19]] 10:01 [[]] | [[]] | [[]] # # #
:tabedit - open a new file as as tab
gt - go to next tab
gT - go to prev tab
:echo expand('%:p') - display full path of the file - https://vi.stackexchange.com/questions/104/how-can-i-see-the-full-path-of-the-current-file
[[2022-01-18]] 10:22 [[]] | [[]] | [[]] # # #
[[logfile obsidian#^5bc2e0|how to turn vim irritating highlight after search off]]
```
* = find next occurrence of the word under cursor
# = find prev occurrence of the word under cursor 
```
- [[2021-12-10]]  `23:10` _related_ [[]] | [[]] | [[]] # # #
VIM'S INTERFACE = A PROGRAMMING [[400 Language]] SO THAT YOU CAN WORK AT THE SPEED OF THOUGHT
```query
"vim notes"
```
