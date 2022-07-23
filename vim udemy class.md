---
alias: [,]
---
#quote - show me your friends and i will show you your future

### progress - 22/49 (vids)

[[2022-02-03]] 20:20
:set nu = same as :set number
:set nonu = negation of above command
:set nu! = toggle the command
```
same line searching
f {char} - Forward search
F{char} - Reverse search
t{char} - Forward till search
T {char} - Reverse till search
- Repeat in the same direction
- Repeat in the opposite direction

searching
/ {pattern} - Forward search
? {pattern} - Reverse search
n - Repeat search in the same direction
N - Repeat search in the opposite direction
- Forward search for word
# - Reverse search for word

Summary - Substitute Command
Format:
:[range]s/{pattern}/{string}/[flags]

Global Substitution (just add "g" at the end)
%s/old/new/g

```

- [[2021-12-29]] 04:49

:s/old/new/ - search and replace in current line
```
:s/old/new/
```

:s/old/new/[flags]
	g flag - to replace each occurrence on current line (by default operates on the current line)
```
	:s/old/new/g
```

for a range
```
:[range]s/old/new/

example
:3s/old/new/         ; change instances of "old" to "new" on the third line
:1,5s/old/new/g ; change instances of "old" to "new" from 1-5th line
```

.,$ = from current line to the last line
**note - period (.) represents the current line**
% - entire file (all lines)

#imp 
```
to replace in the entire file -

:%s/old/new/g
```

- [[2021-12-27]] 05:53

f - search in current line (forward)
	fa - search for "a" in current line
F - search backward in the line

; semi-colon = repeat the search in forward direction (very useful)
, comma = repeat the search in backward direction (very useful)

- tilde in search is "t" (note - don't mistake ~ for tilede here ! )
	use t cmd to reach just one place before your search term. ex -
		ti
			ea**t**ing (cursor will be at "t")
		T
			to do the above cmd in reverse direction

- delete till "s" letter - dts
- delete till "space" letter - dt **type space char here**
- delete till "r" letter - dtr
- delete till "e" letter - dte

# to search
/search_term
n - next occurrence
N - previous occurrence

## toggle **incremental search**
in this search, the cursor will show your query in real time (like in mozilla)
	set is (is = **i**ncrementam **s**earch)
	set nois
	set is? (to check status)
## to toggle **highlight search** in vim cmd line
like in the browser	
	set hls
	set nohls
	set hls? (to check status)

## backward search
?search_term
	use **n & N** for forward and backward navigation (in reverse order since it's a backward search)
  
- [[2021-12-09]] 23:03 #quran -  2|84|وَإِذْ أَخَذْنَا مِيثَاقَكُمْ لَا تَسْفِكُونَ دِمَاءَكُمْ وَلَا تُخْرِجُونَ أَنفُسَكُم مِّن دِيَارِكُمْ ثُمَّ أَقْرَرْتُمْ وَأَنتُمْ تَشْهَدُونَ
	- set line number (toggle)
		- :set number
		- :set nonumber
# cases
 upper and lowercase
	 - ~ = toggle cAsE (in normal mode)
		 - to change multiple entities (c/a motions in vim speak)
			 - g[motion]
			 - ex - this is a line (place cursor on "t" of this)
			 - g~w OR g~~ -->       This is a line
			 - g~$ OR g~~ -->        This is a line ==> THIS IS A LINE (and vice versa)
	- gUw or gUU -                          uppEr -- UPPER (when impurity is there)
	- guw or guu -                            Make LOwER lowercase. == make lower lowercase
	- J = to join lines (in case of '.' at end, additional 2 spaces are added by default)
		- to prevent those 2 add. spcs - gJ

d/search_term - to delete till just before that term
## splits
^ w  then v - vertical split
^ w  then s - horiz
:sp = split
:qa = quit all tabs

- G - 14G go to 14th line or :14

---------------
You use the <ESC> key a lot when using Vim: consider remapping Caps Lock to Escape (done ! via autohotkey)

[[2021-12-08]] 23:59 #quran - 2|74|ثُمَّ قَسَتْ قُلُوبُكُم مِّن بَعْدِ ذَٰلِكَ فَهِيَ كَالْحِجَارَةِ أَوْ أَشَدُّ قَسْوَةً ۚ وَإِنَّ مِنَ الْحِجَارَةِ لَمَا يَتَفَجَّرُ مِنْهُ الْأَنْهَارُ ۚ وَإِنَّ مِنْهَا لَمَا يَشَّقَّقُ فَيَخْرُجُ مِنْهُ الْمَاءُ ۚ وَإِنَّ مِنْهَا لَمَا يَهْبِطُ مِنْ خَشْيَةِ اللَّهِ ۗ وَمَا اللَّهُ بِغَافِلٍ عَمَّا تَعْمَلُونَ
- shift + i = insert at line beginning
	- 0 - go to line beginning
	- a - append after current letter
		- shift + a = append at last
		- shift + i = = append at beggining
	- o - insert line below
	- shift + o - insert line above
	- [count]i + string(esc) = repeat a string n number of times
		- esx - 34i% - will print ******-------till 34
			- #wo_de - use period to repeat last cmd to extend the line of ****
- [[2021-11-20]] `11:21`
	- :h - to get help
	- :h :command - help of that specific cmd
	- :h :cmd --> then press ^d - to get auto complete suggestions
	- ctrl ] = place mouse under a cmd in help and press this to know more about it
### - ctrl o = to get back to the prev position
	- ctrl w w = to switch from the help window to the editing window
	- :q = close the help window
	- undo - u
	- redo - ctrl r
	- period (.) - repeat last action
	- swap upper line with lower - ddp
	- pasting (put)
		- p - paste after the current line (default)
		- P - paste before the current line
	- :reg = to see yanked text in vim register
		- see the list of pasted items register wise
		- ex - 4p - paste the copied text in 4th register (ie last 4th item that was copied by you)
	- there are 26 named registers from a-z
	- there are 10 unnamed registers from 0-9
	- : reg [register(s)]
	- [x] tip - ctrl + [ = esc, ergonimics in case you want to avoid moving your hand to the top row        ]
	-  Alt+o opens a new line below the one you are currently editing,
       - Alt+A appends to the end of the current line,
	- Alt+p pastes at the current insert location.
	- Alt+k moves up
- [[2021-11-08]]  `17:52`
	- x - delete current letter under cursor (in edit mode of course !)
	- X - delete letter @ left side
	- dw - to delete a word
		-meaning - **delete word**
	- [count]operation[count]{motion}
		- 3w = Repeat word motion 3 times.
		- d3w = Delete the 3w motion.
		- 2d3w = Delete the 3w motion 2 times. (like loop)
- `2021-08-13`  `00:24`
- why use vim ?
		- ubiquitous
		- amazingly powerful
		- transferable knowledge
		- cross-platform
		- available in a TUI & GUI
		- has syntax highlighting
		- commands are easy to remember
		- its like a language
		- thoroughly documented
		- fun & efficient
- https://www.freecodecamp.org/news/vim-windows-install-powershell/ to learn more on vim
- search ni de tgram - "vim installer"
- vim editor modes  -https://www.freecodecamp.org/news/vim-editor-modes-explained/
- [[vim help manual]] 12:45 AM 13/8/2021
- vim exercise tgram - 12:53 AM 13/8/2021 https://t.me/c/1549736040/4
- :wq<enter> = to save the file and exit vim (write & quit)
- :q!<enter> = exit
- ^ +f = page forward
- ^ +b = page backward
- z <enter> = put the selected line on top of page for reading
- w = word by word skipping of cursor in forward
- b = word by word skipping of cursor in backward
- shift + b = word by word skipping of cursor in backward (same as above)
- 0 - goto beginning of line (true beginning)	
- ^ - goto beginning of line with a character (note - in regex - ^ = beginning & $ = end)
- $ - goto end of line
- to goto a particular line-
		- (line no.)gg -ex- 4gg (goto 4th line of the document)
		- (line no.)G -ex- 4G
		- gg = top of the line (like pressing 0)
		- G - goto last line
		- using line mode - :2 (enter) = goto 5th line
- ^ + g = display total pages and your loc
- :set ruler =  line and column counter turn on
- :set noruler =  line and column counter turn off
- :set ruler!  =  line and column counter turn off (quicker way)
- exercise 02 - https://t.me/c/1549736040/6
	
```query
"vim udemy class"
```
```query
"vim"
```
```query 2021-12-02 17:54
"vim udemy class"
```