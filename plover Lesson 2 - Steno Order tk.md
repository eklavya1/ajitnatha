---
alias: [2021-12-10,]
---
- mother note - [[]] [[]]
- related note - [[]] [[]] #quote 
- `contemporary events` - [[]] [[]] [[]] [[]] [[]] [[]] [[]] [[]] #quran -

- [[2021-12-10]]  `00:46` _related_ [[]] | [[]] | [[]] # # #
	- https://sites.google.com/site/learnplover/lesson-2-steno-order

## Single-Stroke Versus Multi-Stroke Words

One of the most important things to know about Plover is that virtually all the rules - really almost everything you need to explicitly learn - applies only to single strokes of the keyboard. In the current lesson, and in the next bunch of lessons, you'll learn chords for all the different sounds, and how to type lots of words using just a single stroke. In almost all cases, single-stroke words are one or maybe two syllables. If you didn't know better, you might start to wonder when we were going to get to bigger words like 'encyclopedia' and 'rambunctious' - words that would require more than a single stroke to produce phonetically.

In fact, each stroke of a multi-stroke word obeys all the rules laid down in the lessons for typing single-stroke words. By learning how to type single-stroke words, you're also learning how to type multi-stroke words.

What might still seem unclear, however, is how to correctly tell what part of a longer word goes in the 1st stroke, the 2nd stroke, and so on. When experts and advocates talk about steno theories, they often say that longer words are split up syllabically. But that's an oversimplification. As you'll see in the current lesson, many multi-syllable words can be typed with just a single stroke. Clearly all steno theories obtain much of their speed by finding ways to fit multiple syllables into single strokes - and Plover is the same.

Plover - and all steno theories - solve the question of multi-stroke words in a very elegant way: **As long as you follow the rules for constructing single strokes, you can - and should - divide a longer word into a series of strokes that feels most natural and intuitive to you.**

The default Plover dictionary provides many alternative entries for multi-stroke words, and the chances are high that any given multi-stroke word already has an entry that matches what feels right to you. But for the multi-stroke words that don't, **the recommended and correct approach is to create a new dictionary entry with your preferred set of strokes, rather than try to memorize any of the existing entries for that word.**

This is all just by way of explaining why most of the upcoming lessons cover only single-stroke words. The reason is that single-strokes are Plover theory. A single stroke may be used to type a whole word, or it may be used to type part of a bigger word. But Plover theory itself is about typing that single stroke.

Having said that, let's look more deeply at what is actually meant by a single stroke, and at how much of a word we can fit into it.
## Steno Order
In Lesson 1: Fingers And Keys, I mentioned that chord sounds are constructed from left to right on the keyboard. But there is actually a formal order to this, called "steno order":

![[Pasted image 20211210005444.png]]

Written out as a single string of characters, this looks like STKPWHRAO x EUFRPBLGTSDZ. Memorize this string of characters until it comes absolutely naturally to you. It's the cornerstone of the entire system. ( #wo_de  x - represents the star sign, avoided cause of markdown issues)

[[Lars Doucet]] has come up with this funny mnemonic to help learn steno order:

    "Should The King Please Wear His Red And Orange STARry Elephant Underwear For Royal Purposes Before Lunch Gets Totally Super Devoured (by) Zombies?"

Also, if you like flash cards, [[Alan Aversa]] has created an Anki deck for practicing steno order.

If you try to see the chord for a word within the steno order string, you'll find that all the examples in Lesson 1: Fingers And Keys can be done entirely by reading from left to right. Consider a few examples:
```
    'pad'   : stkPwhrAo*eufrpblgtsDz
    'roll'  : stkpwhRaO*eufrpbLgtsdz
    'tub'   : sTkpwhrao*eUfrpBlgtsdz
    'straps': STkpwhRAo*eufrPblgtSdz
01:02 M 10/12/2021 - trivia - i used vim to edit the cases from UPPER to lower and etc (deng3deng3)
```

Any word that fits into steno order can be typed in a single stroke. That's why memorizing steno order is so important. The faster you can call it to mind in a useful way, the faster you'll be able to decide on the appropriate stroke for a word.

But there are also several standard ways of getting a word into a single stroke when it seems like it shouldn't fit. The rest of this lesson covers these standard ways.

## Where's The TRUFT?
In Lesson 1: Fingers And Keys, recall that the word 'trust' didn't chord the way we expected. That's because if we try to sound it out in steno order, we get STKPWHRAO*EUFRPBLGTSDZ. Note that the T and the S are out of order. And when we try to sound out 'tassle' in steno order, we get STKPWHRAO*EUFRPBLGTSDZ, where the L and the S are out of order. 

At the top of Lesson 1, I mentioned that in addition to being used for 'f' and 'v' sounds, the F key was also sometimes used for 's' sounds. But it's only now, with an understanding of steno order, that the reason for this becomes clear. After all, there's already an S key on the right half of the keyboard - why would we need another on that half as well?

With a grasp of steno order, it's easy to explain: the S key on the right side of the keyboard is very far to the right - near the end of steno order. This placement is convenient because plurals and possessives tend to end in 's'. But a lot of words, like 'trust', 'rasp', and 'tassle', have consonant clusters where an 's' sound is followed by another consonant. If you try to make chords for these words using the regular S key, they violate steno order:

```
    'trust': STKPWHRAO*EUFRPBLGTSDZ (incorrect)
    'rasp': STKPWHRAO*EUFRPBLGTSDZ (incorrect)
    'tassle': STKPWHRAO*EUFRPBLGTSDZ (incorrect)
```
The above chords don't produce the words you want. But the use of 's' in this sort of consonant cluster occurs so frequently in English that Plover has a special solution for it: if you use the ability of the F key to represent the 's' sound, the words no longer violate steno order:

```
    'trust': STKPWHRAO*EUFRPBLGTSDZ
    'rasp': STKPWHRAO*EUFRPBLGTSDZ
    'tassle': STKPWHRAO*EUFRPBLGTSDZ
```
It may look weird at first, but you get used to it.

You may be wondering what happens when you encounter a conflict - words like 'cost' and 'coughed', or 'rust' and 'roughed', where either the 'f' or the 's' sounds would produce legitimate English words. How would KOFT and RUFT be interpreted by Plover? Would the F key result in an 'f' sound or an 's' sound?

First of all, there are relatively few of these cases. For the ones that do exist, Plover has a variety of 'disambiguation' techniques to define different chords for each conflicting word. Disambiguation is an important topic in Plover, and it's covered in a later tutorial. For now, focus on the keyboard, the details of steno order, and the ways to combine sounds into chords that make words.
Exercise: Where's The TRUFT?

Use your knowledge of steno order and the F key to construct chords for these words:

```
    'past' 'castle' 'stressed' 'pressed' 'passed' 'test' 'tussle' 'crossed'
```
Practice these until you can do them easily, and don't find it too unnatural to hit the F key to get an 's' sound.
Considerations

Fluency with the F key is important. A lot of words combine 's' with another consonant sound. The need to get around steno order in this way - placing the 's' earlier in the chord - is so common in English that most steno theories, including Plover, give the F key this special power.

## Dropping Unstressed Vowels

In English, vowel sounds can either be stressed or unstressed. See the Wikipedia article on linguistic stress.

When stroking multi-syllable words in Plover, unstressed vowels don't need to be included in a stroke. They can just be dropped. This is very useful because steno order only allows for a single vowel sound in any one stroke. Up till now we've only typed single-syllable words. By dropping unstressed vowels in multi-syllable words, it becomes possible to type many such words in just a single stroke.

For example, the two-syllable word 'tablet' can be typed in a single stroke, as TABLT. Without the unstressed 'e' sound, the rest of the consonants have no trouble fitting into steno order. Likewise, 'rugged' is stroked with the single chord RUGD.
Exercise: Dropping Unstressed Vowels

Try to figure out the chords for the following words. They all have at least two syllables, but can be chorded with just one stroke:

```
   'several' 'suppress' 'averages' 'tablet' 'tepid' 'superb' 'scaffold' 'scarlet' 'starlet' 'started' 'ruffled' 'scuffled' 'corrupted' 'spotted' 'horrible' 'effort'
```

### Considerations

Not everyone has a conscious understanding of whether a vowel is stressed or unstressed. It may not help that some words like 'rebel' can have different meanings depending on which syllable has the stress. It also may not help that certain words like 'umbrella' are pronounced 'umbrella' by some people, and 'umbrella' by others.

In fact, those few special cases can be solved by adding appropriate dictionary entries to match the different pronunciations.

It's also important to remember that the rule about dropping unstressed vowel sounds applies only to multi-syllable words. Don't bother trying to figure out if the vowel sound in a word like 'me' is stressed or unstressed, because you should always include the vowel sounds for single-syllable words, regardless of stress.

In steno a good understanding of stressed and unstressed vowels in multi-syllable words is important. If you're having trouble with it, just keep reading articles about it online, and talking to people. If you know anyone who loves sonnets and old poetry, ask them to help you with vowel stress. Regardless of whether you consciously understand it or not, vowel stress is a part of English, and you use it every time you speak. You should be able to understand it in time.

## Inversion
In steno, a word is allowed to violate steno order if it meets all of the following conditions:

    it saves a stroke
    it only happens once in a word
    it only inverts two sounds that are next to each other in the word
    it does not conflict with other entries in the dictionary

A good example of inversion is the word 'portal'. Without the rules in this lesson, you'd have to stroke something like POR and TAL, taking two strokes to type the word.

First of all, the "a" in 'portal' is really an unstressed vowel, so you can drop it, and end up with 'portl'. But if you try and put that in steno order, you get PORLT, where the L and the T are out of order. But thanks to the inversion rule, you don't have to worry about that. You can correctly stroke 'portal' as PORLT, because the inversion reduces the number of needed strokes from two to one, only happens once, only inverts the neighboring sounds 'l' and 't', and has no conflicts in the dictionary.

If there were another word 'porlet' that meant something in English, that word would have a more natural claim to the stroke PORLT, and so 'portal' would have to use a different stroke, or perhaps even the two strokes POR and TAL.
Exercise: Inversion

    'edit' 'elves' 'twelve' 'credit' 'portal'

### Considerations

Did you notice that the inversion rule could also have come to our rescue when we tried to type 'trust' as TRUTS? Why would we need to overload the F key to mean 's' in addition to meaning 'f' and 'v'? Why not just stroke TRUTS and be done with it?

The reason is that the 's' sound appears so frequently before other consonants in English that it's better to give it it's own rule than to heap it onto the inversion rule. Since inversion is only allowed once in a given word, this means that you can use F for an 's' sound, and use inversion in the same word. For example 'worst' is stroked as WOFRT. In that case, the F is used for 's', and the F and R use the inversion rule to fit the whole word into a single stroke.

## Where Are We?

By the end of this lesson, you should be able to:

    figure out steno order with your eyes closed, even if it takes a minute
    likewise, figure out steno order backwards
    use the F key to make the 's' sound in a word
    use your ability to drop unstressed vowels to express some multi-syllable words in a single stroke
    use inversion to chord some words that would otherwise not fit into steno order

Solutions To Exercises
#### Solution: Where's The TRUFT?

    'past': PAFT
    'castle': KAFL
    'stressed': STREFD
    'pressed': PREFD
    'passed': PAFD
    'test': TEFT
    'tussle': TUFL
    'crossed': KROFD

#### Solution: Dropping Unstressed Vowels

    'several': SEFRL
    'suppress': SPRES
    'averages': AFRGS
    'tablet': TABLT
    'tepid': TEPD
    'superb': SPERB
    'scaffold': SKAFLD
    'scarlet': SKARLT
    'starlet': STARLT
    'started': STARTD
    'ruffled': RUFLD
    'scuffled': SKUFLD
    'corrupted': KRUPTD
    'spotted': SPOTD
    'horrible': HORBL
    'effort': EFRT

#### Solution: Inversion

    'edit': ETD
    'elves': EFLS
    'twelve': TWEFL
    'credit': KRETD
    'portal': PORLT

```query
"plover Lesson 2 - Steno Order tk"
```