---
alias: [,]
---
- mother note	- [[]] [[]]
- related note - [[]] [[]]
- `contemporary events`- [[]]	- [[]]	- [[]]	- [[]]	- [[]]

link - https://forum.obsidian.md/t/regex-resources/3353
game based learning
https://www.therobinlord.com/projects/slash-escape
https://regex101.com/
https://regexcrossword.com/
# progress sec 4 (24,34)

- [[2021-12-03]] 00:17 _related_ [[]] | [[]] | [[]] # # # #quran - 

```
foo.*bar

will find all occurrences starting with foo and ending with bar
.* = find any letter occurring for 0-infinite times !

- [x] foobar
- [ ] barfoo
- [x] fooabcbar
- [x] foobxcbar
- [ ] barcbyfoo
- [x] foozbar
- [ ] barafoo
- [ ] barabfoo
```

```
whitespace = \s

foo\s*bar = \s* means all instances of space from 0 to infinity !

- [ ] fooxxxbar
- [x] foo          bar
- [x] foox bar
- [ ] fooxxbar
- [x] foo    bar
- [x] foo        bar
- [ ] foobar
- [ ] fooyyybar
```

```
character class

[fcl]oo = will find only those where the first letter is either f,c,l + oo

- [x] foo
- [ ] moo
- [x] coo
- [ ] doo
- [ ] poo
- [x] loo
- [ ] boo
- [ ] hoo
```

sometimes its easier to identify the letters for the exclusion list (for ex when the inclusion list has too many letters)
```
character class - exclusion

find only the tick marked ones
in this case its not recommended to find using inclusion list, so we will find the negative/exclusion list

use caret sign for exclusion list
[^abc] - Any character EXCEPT any of the ones inside the square brackets, in a single position.

[^mh]oo - give me everything except the ones starting with m and h

- [x] foo
- [ ] moo
- [x] coo
- [x] doo
- [x] poo
- [x] loo
- [x] boo
- [ ] hoo

general principle learned from this - whatever your case, find the minority and work on it (whether it is + or -)
```

```
character classes with ranges

[a-c] - One of the characters falling in the range given in square brackets - a,b,c

- [x] joo
- [ ] boo
- [x] koo
- [x] loo
- [ ] woo
- [x] moo
- [ ] zoo
- [ ] coo

identify the pattery - j,k,l,m are in an alphabetic range
apply regex - [j-m]oo

```

```
[a-cx]oo = find letters from a-c plus the letter "x" ones that end with "oo"

- [ ] joo
- [x] boo
- [x] aoo
- [ ] woo
- [x] xoo
- [ ] moo
- [ ] zoo
- [x] coo

```

```
combined ranges or double ranges

[a-cA-Cx] - One of the characters falling in one of the ranges OR any of the other choices given in square brackets - a,b,c,A,B,C,x
note - no spaces or anything fancy is used b/w the 2 ranges, it's a continuum


- [x] joo
- [ ] boo
- [x] Koo
- [x] Loo
- [ ] woo
- [x] moo
- [x] zoo
- [ ] coo

pattern - j,K,L,m,z,x
make regex pattern - [j-mJ-Mz]oo
```

```
x*\.y* = all occurrences of x & y and treat period (.) as a literal character (in regex lingo its c/a escaping the character)

xxx.yy
xx.yyyy
x.yy
xy
xxyy
yyxx
yx
yxxx

```

```
example 12

x[#:.]y

note - if a period is inside square brackets then it does not need to be escaped
- [x] x#y
- [x] x:y
- [x] x.y
- [ ] x&y
- [ ] x%y

```

```
example 13

x[#:\^]y - escape the carot sign using "\"

note - if a period is inside square brackets then it does not need to be escaped
- [x] x#y
- [x] x:y
- [x] x^y
- [ ] x&y
- [ ] x%y

```

```
example 14

x[#\\\^]y

note - if a period is inside square brackets then it does not need to be escaped
- [x] x#y
- [x] x\y
- [x] x^y
- [ ] x&y
- [ ] x%y


```

- [[2021-11-25]]  `16:04` _related_ [[tony stark]] | [[]] | [[]] # # #
	- REGular EXpressions are a way to search for **patterns within data sets**.
	- it is not a programming lang but more of a universal feature
	- legend has it that the true power of linux is unleashed only when you supplement it with regex
	- * - Zero or more occurrences of 'a' (The character just preceding the asterisk).
		- ex - a* - 0 or more occurrences of **a** [[ad infinitum]]

fooaaaabar
fooabar
foobar
fooaabar
fooxxxbar
fooxbar
	- our query
	- fooa* bar = means {foo + a's infinite instances + bar} --> search query
- Understand the requirement:
	- What needs to be included?
	- What needs to be excluded?

```query
"regex udemy course"
```