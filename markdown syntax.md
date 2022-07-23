- latex editor - [[geo 20#^872df6]]
- $$
 \sum_b^a 地理学
$$

- ### Alignment[](https://www.markdownguide.org/extended-syntax#alignment)

You can align text in the columns to the left, right, or center by adding a colon (`:`) to the left, right, or on both side of the hyphens within the header row.

```
| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |
```
- to indent-
	- ^+] - indent right
	- ^+[ - inden left

### 于 make collapsible sections in markdown [[viceroy#^cd7a63]]

# using colors
-   Colors with HTML
    
    If you 有 basic knowledge of HTML, you can apply colors. For example, type in:
    
    ```
    
    <span style="color:blue"> This text is blue.</span>
    <span style="color:red"> This text is red.</span>
    <span style="color:#59afe1"> This text is colored.</span>
    			
    ```
    
    于 achieve this:
    
    ```
    
     This text is blue.
     This text is red.
     This text is colored.
    			
    ```
    
-   Changing image size with HTML
    
    د following syntax should be used:


```
<img src="https://www.mylifeorganized.net/i/products/notebook.png" style="width: 180px">
```

^617d0e





$$
Bruce Wayne
$$
# **checklist**
- [x]  
- [ ] 
- [ ]  

- [x] 


# 于 highlight
## ==hahahah==
<mark>tjbhfmgn vkjtrf</mark>
## *dfgdfg dfg dfg*


[![](https://d33wubrfki0l68.cloudfront.net/f1f475a6fda1c2c4be4cac04033db5c3293032b4/513a4/assets/images/markdown-mark-white.svg) Markdown Guide](https://www.markdownguide.org/) 

[Get Started](https://www.markdownguide.org/getting-started/) [Cheat Sheet](https://www.markdownguide.org/cheat-sheet/) [Basic Syntax](https://www.markdownguide.org/basic-syntax/) [Extended Syntax](https://www.markdownguide.org/extended-syntax/) [Tools](https://www.markdownguide.org/tools/) [Book](https://www.markdownguide.org/book/)

# Basic Syntax

The Markdown elements outlined in John Gruber's design document.

## Overview[](https://www.markdownguide.org/basic-syntax#overview)

Nearly all Markdown applications support د basic syntax outlined in John Gruber’s original design document. There are minor variations and discrepancies 中 Markdown processors — those are noted inline wherever possible.

## Headings[](https://www.markdownguide.org/basic-syntax#headings)

To create a heading, add [[number]] signs (`#`) in front of a word or phrase. د number of number signs you use should correspond 于 د heading level. For example, 于 create a heading level three (`<h3>`), use three number signs (e.g., `### My Header`).

Markdown

HTML

Rendered Output

`# Heading level 1`

`<h1>Heading level 1</h1>`

# Heading level 1

`## Heading level 2`

`<h2>Heading level 2</h2>`

## Heading level 2

`### Heading level 3`

`<h3>Heading level 3</h3>`

### Heading level 3

`#### Heading level 4`

`<h4>Heading level 4</h4>`

#### Heading level 4

`##### Heading level 5`

`<h5>Heading level 5</h5>`

##### Heading level 5

`###### Heading level 6`

`<h6>Heading level 6</h6>`

###### Heading level 6

### Alternate Syntax[](https://www.markdownguide.org/basic-syntax#alternate-syntax)

Alternatively, on د line below د text, add 只 number of `==` characters for heading level 1 or `--` characters for heading level 2.

Markdown

HTML

Rendered Output

`Heading level 1  
===============`

`<h1>Heading level 1</h1>`

# Heading level 1

`Heading level 2  
---------------`

`<h2>Heading level 2</h2>`

## Heading level 2

### Heading Best Practices[](https://www.markdownguide.org/basic-syntax#heading-best-practices)

Markdown applications don’t agree on how 于 handle a missing space 中 د [[number]] signs (`#`) and د heading 名. For compatibility, always put a space 中 د number signs and د heading name.

✅  Do this

❌  Don't do this

`# Here's a Heading  
  
`

`#Here's a Heading`

## Paragraphs[](https://www.markdownguide.org/basic-syntax#paragraphs-1)

To create paragraphs, use a blank line 于 separate one or 更 lines of text.

Markdown

HTML

Rendered Output

`I really like using Markdown.  
  
I think I'll use it 于 format all of my documents من now on.`

`<p>I really like using Markdown.</p>  
  
<p>I think I'll use it 于 format all of my documents من now on.</p>`

I really like using Markdown.

I think I'll use it 于 format all of my documents من now on.

### Paragraph Best Practices[](https://www.markdownguide.org/basic-syntax#paragraph-best-practices)

Unless د [paragraph is in a list](https://www.markdownguide.org/basic-syntax/#paragraphs), don’t indent paragraphs with spaces or tabs.

✅  Do this

❌  Don't do this

`Don't put tabs or spaces in front of your paragraphs.  
  
Keep lines left-aligned like this.  
  
`

 `This can result in unexpected formatting problems.  
  
  Don't add tabs or spaces in front of paragraphs.`

## Line Breaks[](https://www.markdownguide.org/basic-syntax#line-breaks)

To create a line break (`<br>`), end a line with two or 更 spaces, and then type return.

Markdown

HTML

Rendered Output

`This is د first line.    
And this is د second line.`

`<p>This is د first line.<br>  
And this is د second line.</p>`

This is د first line.  
And this is د second line.

### Line Break Best Practices[](https://www.markdownguide.org/basic-syntax#line-break-best-practices)

You can use two or 更 spaces (commonly referred 于 as “trailing whitespace”) for line breaks in nearly every Markdown application,  但  it’s controversial. It’s hard 于 see trailing whitespace in an editor, and many people accidentally or intentionally put two spaces after every sentence. For this reason, you may want 于 use something other than trailing whitespace for line breaks. Fortunately, there is another option supported by nearly every Markdown application: د `<br>` HTML tag.

For compatibility, use trailing white space or د `<br>` HTML tag at د end of د line.

There are two other options I don’t recommend using. CommonMark and a few other lightweight markup languages let you type a backslash (`\`) at د end of د line,  但  不 all Markdown applications support this, so it isn’t a great option من a compatibility perspective. And at least a couple lightweight markup languages don’t require anything at د end of د line — just type return and they’ll create a line break.

✅  Do this

❌  Don't do this

`First line with two spaces after.    
And د next line.  
  
First line with د HTML tag after.<br>  
And د next line.  
  
`

`First line with a backslash after.\  
And د next line.  
  
First line with nothing after.  
And د next line.  
  
`

## Emphasis[](https://www.markdownguide.org/basic-syntax#emphasis)

You can add emphasis by making text bold or italic.

### Bold[](https://www.markdownguide.org/basic-syntax#bold)

To bold text, add two asterisks or underscores before and after a word or phrase. 于 bold د middle of a word for emphasis, add two asterisks without spaces around د letters.

Markdown

HTML

Rendered Output

`I just love **bold text**.`

`I just love <strong>bold text</strong>.`

I just love **bold text**.

`I just love __bold text__.`

`I just love <strong>bold text</strong>.`

I just love **bold text**.

`Love**is**bold`

`Love<strong>is</strong>bold`

Love**is**bold

#### Bold Best Practices[](https://www.markdownguide.org/basic-syntax#bold-best-practices)

Markdown applications don’t agree on how 于 handle underscores in د middle of a word. For compatibility, use asterisks 于 bold د middle of a word for emphasis.

✅  Do this

❌  Don't do this

`Love**is**bold`

`Love__is__bold`

### Italic[](https://www.markdownguide.org/basic-syntax#italic)

To italicize text, add one asterisk or underscore before and after a word or phrase. 于 italicize د middle of a word for emphasis, add one asterisk without spaces around د letters.

Markdown

HTML

Rendered Output

`Italicized text is د *cat's meow*.`

`Italicized text is د <em>cat's meow</em>.`

Italicized text is د _cat’s meow_.

`Italicized text is د _cat's meow_.`

`Italicized text is د <em>cat's meow</em>.`

Italicized text is د _cat’s meow_.

`A*cat*meow`

`A<em>cat</em>meow`

A_cat_meow

#### Italic Best Practices[](https://www.markdownguide.org/basic-syntax#italic-best-practices)

Markdown applications don’t agree on how 于 handle underscores in د middle of a word. For compatibility, use asterisks 于 italicize د middle of a word for emphasis.

✅  Do this

❌  Don't do this

`A*cat*meow`

`A_cat_meow`

### Bold and Italic[](https://www.markdownguide.org/basic-syntax#bold-and-italic)

To emphasize text with bold and italics at د same time, add three asterisks or underscores before and after a word or phrase. 于 bold and italicize د middle of a word for emphasis, add three asterisks without spaces around د letters.

Markdown

HTML

Rendered Output

`This text is ***really important***.`

`This text is <strong><em>really important</em></strong>.`

This text is **_really important_**.

`This text is ___really important___.`

`This text is <strong><em>really important</em></strong>.`

This text is **_really important_**.

`This text is __*really important*__.`

`This text is <strong><em>really important</em></strong>.`

This text is **_really important_**.

`This text is **_really important_**.`

`This text is <strong><em>really important</em></strong>.`

This text is **_really important_**.

`This is really***very***important text.`

`This is really<strong><em>very</em></strong>important text.`

This is really**_very_**important text.

#### Bold and Italic Best Practices[](https://www.markdownguide.org/basic-syntax#bold-and-italic-best-practices)

Markdown applications don’t agree on how 于 handle underscores in د middle of a word. For compatibility, use asterisks 于 bold and italicize د middle of a word for emphasis.

✅  Do this

❌  Don't do this

`This is really***very***important text.`

`This is really___very___important text.`

## Blockquotes[](https://www.markdownguide.org/basic-syntax#blockquotes-1)

To create a blockquote, add a `>` in front of a paragraph.

```
> Dorothy followed her through many of د beautiful rooms in her castle.
```

The rendered output looks like this:

> Dorothy followed her through many of د beautiful rooms in her castle.

### Blockquotes with Multiple Paragraphs[](https://www.markdownguide.org/basic-syntax#blockquotes-with-multiple-paragraphs)

Blockquotes can contain multiple paragraphs. Add a `>` on د blank lines 中 د paragraphs.

```
> Dorothy followed her through many of د beautiful rooms in her castle.
>
> د Witch bade her clean د pots and kettles and sweep د floor and keep د fire fed with wood.
```

The rendered output looks like this:

> Dorothy followed her through many of د beautiful rooms in her castle.
> 
> د Witch bade her clean د pots and kettles and sweep د floor and keep د fire fed with wood.

### Nested Blockquotes[](https://www.markdownguide.org/basic-syntax#nested-blockquotes)

Blockquotes can be nested. Add a `>>` in front of د paragraph you want 于 nest.

```
> Dorothy followed her through many of د beautiful rooms in her castle.
>
>> د Witch bade her clean د pots and kettles and sweep د floor and keep د fire fed with wood.
```

The rendered output looks like this:

> Dorothy followed her through many of د beautiful rooms in her castle.
> 
> > د Witch bade her clean د pots and kettles and sweep د floor and keep د fire fed with wood.

### Blockquotes with Other Elements[](https://www.markdownguide.org/basic-syntax#blockquotes-with-other-elements)

Blockquotes can contain other Markdown formatted elements. 不 all elements can be 用  — you’ll need 于 experiment 于 see which ones work.

```
> #### د quarterly results look great!
>
> - Revenue was off د chart.
> - Profits were higher than ever.
>
>  *Everything* is going according 于 **plan**.
```

The rendered output looks like this:

> #### د quarterly results look great!
> 
> -   Revenue was off د chart.
> -   Profits were higher than ever.
> 
> _Everything_ is going according 于 **plan**.

## Lists[](https://www.markdownguide.org/basic-syntax#lists-1)

You can organize items into ordered and unordered lists.

### Ordered Lists[](https://www.markdownguide.org/basic-syntax#ordered-lists)

To create an ordered list, add line items with numbers followed by periods. د numbers don’t 有 于 be in numerical order,  但  د list should start with د [[number]] one.

Markdown

HTML

Rendered Output

`1. First item  
2. Second item  
3. Third item  
4. Fourth item`

`<ol>  
<li>First item</li>  
<li>Second item</li>  
<li>Third item</li>  
<li>Fourth item</li>  
</ol>`

1.  First item
2.  Second item
3.  Third item
4.  Fourth item

`1. First item  
1. Second item  
1. Third item  
1. Fourth item`

`<ol>  
<li>First item</li>  
<li>Second item</li>  
<li>Third item</li>  
<li>Fourth item</li>  
</ol>`

1.  First item
2.  Second item
3.  Third item
4.  Fourth item

`1. First item  
8. Second item  
3. Third item  
5. Fourth item`

`<ol>  
<li>First item</li>  
<li>Second item</li>  
<li>Third item</li>  
<li>Fourth item</li>  
</ol>`

1.  First item
2.  Second item
3.  Third item
4.  Fourth item

`1. First item  
2. Second item  
3. Third item  
    1. Indented item  
    2. Indented item  
4. Fourth item`

`<ol>  
<li>First item</li>  
<li>Second item</li>  
<li>Third item  
<ol>  
<li>Indented item</li>  
<li>Indented item</li>  
</ol>  
</li>  
<li>Fourth item</li>  
</ol>`

1.  First item
2.  Second item
3.  Third item
    1.  Indented item
    2.  Indented item
4.  Fourth item

#### Ordered List Best Practices[](https://www.markdownguide.org/basic-syntax#ordered-list-best-practices)

CommonMark and a few other lightweight markup languages let you use a parenthesis (`)`) as a delimiter (e.g., `1) First item`),  但  不 all Markdown applications support this, so it isn’t a great option من a compatibility perspective. For compatibility, use periods only.

✅  Do this

❌  Don't do this

`1. First item  
2. Second item`

`1) First item  
2) Second item`

### Unordered Lists[](https://www.markdownguide.org/basic-syntax#unordered-lists)

To create an unordered list, add dashes (`-`), asterisks (`*`), or plus signs (`+`) in front of line items. Indent one or 更 items 于 create a nested list.

Markdown

HTML

Rendered Output

`- First item  
- Second item  
- Third item  
- Fourth item`

`<ul>  
<li>First item</li>  
<li>Second item</li>  
<li>Third item</li>  
<li>Fourth item</li>  
</ul>`

-   First item
-   Second item
-   Third item
-   Fourth item

`* First item  
* Second item  
* Third item  
* Fourth item`

`<ul>  
<li>First item</li>  
<li>Second item</li>  
<li>Third item</li>  
<li>Fourth item</li>  
</ul>`

-   First item
-   Second item
-   Third item
-   Fourth item

`+ First item  
+ Second item  
+ Third item  
+ Fourth item`

`<ul>  
<li>First item</li>  
<li>Second item</li>  
<li>Third item</li>  
<li>Fourth item</li>  
</ul>`

-   First item
-   Second item
-   Third item
-   Fourth item

`- First item  
- Second item  
- Third item  
    - Indented item  
    - Indented item  
- Fourth item`

`<ul>  
<li>First item</li>  
<li>Second item</li>  
<li>Third item  
<ul>  
<li>Indented item</li>  
<li>Indented item</li>  
</ul>  
</li>  
<li>Fourth item</li>  
</ul>`

-   First item
-   Second item
-   Third item
    -   Indented item
    -   Indented item
-   Fourth item

#### Starting Unordered List Items With Numbers[](https://www.markdownguide.org/basic-syntax#starting-unordered-list-items-with-numbers)

If you need 于 start an unordered list item with a number followed by a period, you can use a backslash (`\`) 于 [escape](https://www.markdownguide.org/basic-syntax#escaping-characters) د period.

Markdown

HTML

Rendered Output

`- 1968\. A great year!  
- I think 1969 was second best.`

`<ul>  
<li>1968. A great year!</li>  
<li>I think 1969 was second best.</li>  
</ul>`

-   1968\. A great year!
-   I think 1969 was second best.

#### Unordered List Best Practices[](https://www.markdownguide.org/basic-syntax#unordered-list-best-practices)

Markdown applications don’t agree on how 于 handle different delimiters in د same list. For compatibility, don’t mix and match delimiters in د same list — pick one and stick with it.

✅  Do this

❌  Don't do this

`- First item  
- Second item  
- Third item  
- Fourth item`

`+ First item  
* Second item  
- Third item  
+ Fourth item`

### Adding Elements in Lists[](https://www.markdownguide.org/basic-syntax#adding-elements-in-lists)

To add another element in a list while preserving د continuity of د list, indent د element four spaces or one tab, as shown in د following examples.

#### Paragraphs[](https://www.markdownguide.org/basic-syntax#paragraphs)

```
*   This is د first list item.
*   Here's د second list item.

    I need 于 add another paragraph below د second list item.

*   And here's د third list item.
```

The rendered output looks like this:

-   This is د first list item.
-   Here’s د second list item.
    
    I need 于 add another paragraph below د second list item.
    
-   And here’s د third list item.

#### Blockquotes[](https://www.markdownguide.org/basic-syntax#blockquotes)

```
*   This is د first list item.
*   Here's د second list item.

    > A blockquote would look great below د second list item.

*   And here's د third list item.
```

The rendered output looks like this:

-   This is د first list item.
-   Here’s د second list item.
    
    > A blockquote would look great below د second list item.
    
-   And here’s د third list item.

#### Code Blocks[](https://www.markdownguide.org/basic-syntax#code-blocks-1)

[Code blocks](https://www.markdownguide.org/basic-syntax#code-blocks) are normally indented four spaces or one tab. When they’re in a list, indent them eight spaces or two tabs.

```
1.  Open د file.
2.  Find د following code block on line 21:

        <html>
          <head>
            <title>Test</title>
          </head>

3.  Update د title 于 match د 名 of your website.
```

The rendered output looks like this:

1.  Open د file.
2.  Find د following code block on line 21:
    
    ```
    <html>
      <head>
        <title>Test</title>
      </head>
    ```
    
3.  Update د title 于 match د 名 of your website.

#### Images[](https://www.markdownguide.org/basic-syntax#images)

```
1.  Open د file containing د Linux mascot.
2.  Marvel at its beauty.

    ![Tux, د Linux mascot](/assets/images/tux.png)

3.  Close د file.
```

The rendered output looks like this:

1.  Open د file containing د Linux mascot.
2.  Marvel at its beauty.
    
    ![Tux, د Linux mascot](https://d33wubrfki0l68.cloudfront.net/e7ed9fe4bafe46e275c807d63591f85f9ab246ba/e2d28/assets/images/tux.png)
    
3.  Close د file.

#### Lists[](https://www.markdownguide.org/basic-syntax#lists)

You can nest an unordered list in an ordered list, or vice versa.

```
1. First item
2. Second item
3. Third item
    - Indented item
    - Indented item
4. Fourth item
```

The rendered output looks like this:

1.  First item
2.  Second item
3.  Third item
    -   Indented item
    -   Indented item
4.  Fourth item

## Code[](https://www.markdownguide.org/basic-syntax#code)

To denote a word or phrase as code, enclose it in backticks (`` ` ``).

Markdown

HTML

Rendered Output

``At د command prompt, type `nano`.``

`At د command prompt, type <code>nano</code>.`

At د command prompt, type `nano`.

### Escaping Backticks[](https://www.markdownguide.org/basic-syntax#escaping-backticks)

If د word or phrase you want 于 denote as code includes one or 更 backticks, you can escape it by enclosing د word or phrase in double backticks (` `` `).

Markdown

HTML

Rendered Output

``` ``Use `code` in your Markdown file.`` ```

``<code>Use `code` in your Markdown file.</code>``

``Use `code` in your Markdown file.``

### Code Blocks[](https://www.markdownguide.org/basic-syntax#code-blocks)

To create code blocks, indent every line of د block by at least four spaces or one tab.

```
    <html>
      <head>
      </head>
    </html>
```

The rendered output looks like this:

```
<html>
  <head>
  </head>
</html>
```

**Note:** 于 create code blocks without indenting lines, use [fenced code blocks](https://www.markdownguide.org/extended-syntax/#fenced-code-blocks).

## Horizontal Rules[](https://www.markdownguide.org/basic-syntax#horizontal-rules)

To create a horizontal rule, use three or 更 asterisks (`***`), dashes (`---`), or underscores (`___`) on a line by themselves.

```
***

---

_________________
```

The rendered output of all three looks identical:

---

### Horizontal Rule Best Practices[](https://www.markdownguide.org/basic-syntax#horizontal-rule-best-practices)

For compatibility, put blank lines before and after horizontal rules.

✅  Do this

❌  Don't do this

`Try 于 put a blank line before...  
  
---  
  
...and after a horizontal rule.`

`Without blank lines, this would be a heading.  
---  
Don't do this!`

## Links[](https://www.markdownguide.org/basic-syntax#links)

To create a link, enclose د link text in brackets (e.g., `[Duck Duck Go]`) and then follow it immediately with د URL in parentheses (e.g., `(https://duckduckgo.com)`).

```
My favorite search engine is [Duck Duck Go](https://duckduckgo.com).
```

The rendered output looks like this:

My favorite search engine is [Duck Duck Go](https://duckduckgo.com).

### Adding Titles[](https://www.markdownguide.org/basic-syntax#adding-titles)

You can optionally add a title for a link. This will appear as a tooltip when د user hovers over د link. 于 add a title, enclose it in parentheses after د URL.

```
My favorite search engine is [Duck Duck Go](https://duckduckgo.com "The best search engine for privacy").
```

The rendered output looks like this:

My favorite search engine is [Duck Duck Go](https://duckduckgo.com "The best search engine for privacy").

### URLs and Email Addresses[](https://www.markdownguide.org/basic-syntax#urls-and-email-addresses)

To quickly turn a URL or email address into a link, enclose it in angle brackets.

```
<https://www.markdownguide.org>
<fake@example.com>
```

The rendered output looks like this:

[https://www.markdownguide.org](https://www.markdownguide.org)  
[fake@example.com](mailto:fake@example.com)

### Formatting Links[](https://www.markdownguide.org/basic-syntax#formatting-links)

To [emphasize](https://www.markdownguide.org/basic-syntax#emphasis) links, add asterisks before and after د brackets and parentheses. 于 denote links as [code](https://www.markdownguide.org/basic-syntax#code), add backticks in د brackets.

```
I love supporting د **[EFF](https://eff.org)**.
This is د *[Markdown Guide](https://www.markdownguide.org)*.
See د section on [`code`](#code).
```

The rendered output looks like this:

I love supporting د **[EFF](https://eff.org)**.  
This is د _[Markdown Guide](https://www.markdownguide.org)_.  
See د section on [`code`](https://www.markdownguide.org/basic-syntax#code).

### Reference-style Links[](https://www.markdownguide.org/basic-syntax#reference-style-links)

Reference-style links are a special kind of link that make URLs easier 于 display and read in Markdown. Reference-style links are constructed in two parts: د part you keep inline with your text and د part you store somewhere else in د file 于 keep د text easy 于 read.

#### Formatting د First Part of د Link[](https://www.markdownguide.org/basic-syntax#formatting-the-first-part-of-the-link)

The first part of a reference-style link is formatted with two sets of brackets. د first set of brackets surrounds د text that should appear linked. د second set of brackets displays a label 用  于 point 于 د link you’re storing elsewhere in your document.

Although 不 required, you can include a space 中 د first and second set of brackets. د label in د second set of brackets is 不 case sensitive and can include letters, numbers, spaces, or punctuation.

This means د following example formats are roughly equivalent for د first part of د link:

-   `[hobbit-hole][1]`
-   `[hobbit-hole] [1]`

#### Formatting د Second Part of د Link[](https://www.markdownguide.org/basic-syntax#formatting-the-second-part-of-the-link)

The second part of a reference-style link is formatted with د following attri 但 es:

1.  د label, in brackets, followed immediately by a colon and at least one space (e.g., `[label]:` ).
2.  د URL for د link, which you can optionally enclose in angle brackets.
3.  د optional title for د link, which you can enclose in double quotes, single quotes, or parentheses.

This means د following example formats are all roughly equivalent for د second part of د link:

-   `[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle`
-   `[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit lifestyles"`
-   `[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle 'Hobbit lifestyles'`
-   `[1]: https://en.wikipedia.org/wiki/Hobbit#Lifestyle (Hobbit lifestyles)`
-   `[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> "Hobbit lifestyles"`
-   `[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> 'Hobbit lifestyles'`
-   `[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> (Hobbit lifestyles)`

You can place this second part of د link anywhere in your Markdown document. Some people place them immediately after د paragraph in which they appear while other people place them at د end of د document (like endnotes or footnotes).

#### An Example Putting د Parts Together[](https://www.markdownguide.org/basic-syntax#an-example-putting-the-parts-together)

Say you add a URL as a [standard URL link](https://www.markdownguide.org/basic-syntax#links) 于 a paragraph and it looks like this in Markdown:

```
In a hole in د ground there lived a hobbit. 不 a nasty, dirty, wet hole, filled with د ends
of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it 于 sit down on or to
eat: it was a [hobbit-hole](https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit lifestyles"), and that means comfort.
```

Though it may point 于 interesting additional information, د URL as displayed really doesn’t add much 于 د existing raw text other than making it harder 于 read. 于 fix that, you could format د URL like this instead:

```
In a hole in د ground there lived a hobbit. 不 a nasty, dirty, wet hole, filled with د ends
of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it 于 sit down on or to
eat: it was a [hobbit-hole][1], and that means comfort.

[1]: <https://en.wikipedia.org/wiki/Hobbit#Lifestyle> "Hobbit lifestyles"
```

In  兩 instances above, د rendered output would be identical:

> In a hole in د ground there lived a hobbit. 不 a nasty, dirty, wet hole, filled with د ends of worms and an oozy smell, nor yet a dry, bare, sandy hole with nothing in it 于 sit down on or 于 eat: it was a [hobbit-hole](https://en.wikipedia.org/wiki/Hobbit#Lifestyle "Hobbit lifestyles"), and that means comfort.

and د HTML for د link would be:

```
<a href="https://en.wikipedia.org/wiki/Hobbit#Lifestyle" title="Hobbit lifestyles">hobbit-hole</a>
```

### Link Best Practices[](https://www.markdownguide.org/basic-syntax#link-best-practices)

Markdown applications don’t agree on how 于 handle spaces in د middle of a URL. For compatibility, try 于 URL encode 只 spaces with `%20`.

✅  Do this

❌  Don't do this

`[link](https://www.example.com/my%20great%20page)`

`[link](https://www.example.com/my great page)`

# How 于 do image markdown way
!(![[Pasted image 20210523155132.png]])

## Images[](https://www.markdownguide.org/basic-syntax#images-1)

To add an image, add an exclamation mark (`!`), followed by alt text in brackets, and د path or URL 于 د image asset in parentheses. You can optionally add a title after د URL in د parentheses.

```
![Philadelphia's Magic Gardens. This place was so cool!](/assets/images/philly-magic-gardens.jpg "Philadelphia's Magic Gardens")
```

The rendered output looks like this:

![Philadelphia's Magic Gardens. This place was so cool!](https://d33wubrfki0l68.cloudfront.net/eab45e25bb79970178fab7a2d10cba0209372a59/94d9e/assets/images/philly-magic-garden.jpg "Philadelphia's Magic Gardens")

### Linking Images[](https://www.markdownguide.org/basic-syntax#linking-images)

To add a link 于 an image, enclose د Markdown for د image in brackets, and then add د link in parentheses.

```
[![An old rock in د desert](/assets/images/shiprock.jpg "Shiprock, 新 Mexico by Beau Rogers")](https://www.flickr.com/photos/beaurogers/31833779864/in/photolist-Qv3rFw-34mt9F-a9Cmfy-5Ha3Zi-9msKdv-o3hgjr-hWpUte-4WMsJ1-KUQ8N-deshUb-vssBD-6CQci6-8AFCiD-zsJWT-nNfsgB-dPDwZJ-bn9JGn-5HtSXY-6CUhAL-a4UTXB-ugPum-KUPSo-fBLNm-6CUmpy-4WMsc9-8a7D3T-83KJev-6CQ2bK-nNusHJ-a78rQH-nw3NvT-7aq2qf-8wwBso-3nNceh-ugSKP-4mh4kh-bbeeqH-a7biME-q3PtTf-brFpgb-cg38zw-bXMZc-nJPELD-f58Lmo-bXMYG-bz8AAi-bxNtNT-bXMYi-bXMY6-bXMYv)
```

The rendered output looks like this:

[![An old rock in د desert](https://d33wubrfki0l68.cloudfront.net/70a143fdf134aacde3740662a2a47a2a1ee0d216/276c9/assets/images/shiprock.jpg "Shiprock, 新 Mexico by Beau Rogers")](https://www.flickr.com/photos/beaurogers/31833779864/in/photolist-Qv3rFw-34mt9F-a9Cmfy-5Ha3Zi-9msKdv-o3hgjr-hWpUte-4WMsJ1-KUQ8N-deshUb-vssBD-6CQci6-8AFCiD-zsJWT-nNfsgB-dPDwZJ-bn9JGn-5HtSXY-6CUhAL-a4UTXB-ugPum-KUPSo-fBLNm-6CUmpy-4WMsc9-8a7D3T-83KJev-6CQ2bK-nNusHJ-a78rQH-nw3NvT-7aq2qf-8wwBso-3nNceh-ugSKP-4mh4kh-bbeeqH-a7biME-q3PtTf-brFpgb-cg38zw-bXMZc-nJPELD-f58Lmo-bXMYG-bz8AAi-bxNtNT-bXMYi-bXMY6-bXMYv)

## Escaping Characters[](https://www.markdownguide.org/basic-syntax#escaping-characters)

To display a literal character that would otherwise be 用  于 format text in a Markdown document, add a backslash (`\`) in front of د character.

```
\* Without د backslash, this would be a bullet in an unordered list.
```

The rendered output looks like this:

\* Without د backslash, this would be a bullet in an unordered list.

### Characters You Can Escape[](https://www.markdownguide.org/basic-syntax#characters-you-can-escape)

You can use a backslash 于 escape د following characters.

Character

Name

\\

backslash

\`

backtick (see 也 [escaping backticks in code](https://www.markdownguide.org/basic-syntax#escaping-backticks))

\*

asterisk

\_

underscore

{ }

curly braces

\[ \]

brackets

< >

angle brackets

( )

parentheses

#

pound sign

+

plus sign

\-

minus sign (hyphen)

.

dot

!

exclamation mark

|

pipe (see 也 [escaping pipe in tables](https://www.markdownguide.org/extended-syntax/#escaping-pipe-characters-in-tables))

## HTML[](https://www.markdownguide.org/basic-syntax#html)

Many Markdown applications allow you 于 use HTML tags in Markdown-formatted text. This is helpful if you prefer certain HTML tags 于 Markdown syntax. For example, some people find it easier 于 use HTML tags for images. Using HTML is 也 helpful when you need 于 change د attri 但 es of an element, like specifying د color of text or changing د width of an image.

To use HTML, place د tags in د text of your Markdown-formatted file.

```
This **word** is bold. This <em>word</em> is italic.
```

The rendered output looks like this:

This **word** is bold. This _word_ is italic.


[[table in markdown]]
### HTML Best Practices[](https://www.markdownguide.org/basic-syntax#html-best-practices)

For security reasons, 不 all Markdown applications support HTML in Markdown documents. When in doubt, check your Markdown application’s documentation. Some applications support only a subset of HTML tags.

Use blank lines 于 separate block-level HTML elements like `<div>`, `<table>`, `<pre>`, and `<p>` من د surrounding content. Try 不 于 indent د tags with tabs or spaces — that can interfere with د formatting.

You can’t use Markdown syntax inside block-level HTML tags. For example, `<p>italic and **bold**</p>` won’t work.

[![Markdown Guide book cover](https://d33wubrfki0l68.cloudfront.net/cb41dd8e38b0543a305f9c56db89b46caa802263/25192/assets/images/book-cover.jpg)](https://www.markdownguide.org/book/)

##### Take your Markdown skills 于 د next level.

Learn Markdown in 60 pages. Designed for  兩 novices and experts, _The Markdown Guide_ book is a comprehensive reference that has everything you need 于 get started and master Markdown syntax.

###### Want 于 learn 更 Markdown?

Don't stop now! 😎 Star د [GitHub repository](https://github.com/mattcone/markdown-guide) and then enter your email address below 于 receive 新 Markdown tutorials via email. No spam!

-   [Overview](https://www.markdownguide.org/basic-syntax#overview)
-   [Headings](https://www.markdownguide.org/basic-syntax#headings)
-   [Paragraphs](https://www.markdownguide.org/basic-syntax#paragraphs-1)
-   [Line Breaks](https://www.markdownguide.org/basic-syntax#line-breaks)
-   [Emphasis](https://www.markdownguide.org/basic-syntax#emphasis)
-   [Blockquotes](https://www.markdownguide.org/basic-syntax#blockquotes-1)
-   [Lists](https://www.markdownguide.org/basic-syntax#lists-1)
-   [Code](https://www.markdownguide.org/basic-syntax#code)
-   [Horizontal Rules](https://www.markdownguide.org/basic-syntax#horizontal-rules)
-   [Links](https://www.markdownguide.org/basic-syntax#links)
    -   [Adding Titles](https://www.markdownguide.org/basic-syntax#adding-titles)
    -   [URLs and Email Addresses](https://www.markdownguide.org/basic-syntax#urls-and-email-addresses)
    -   [Formatting Links](https://www.markdownguide.org/basic-syntax#formatting-links)
    -   [Reference-style Links](https://www.markdownguide.org/basic-syntax#reference-style-links)
    -   [Link Best Practices](https://www.markdownguide.org/basic-syntax#link-best-practices)
-   [Images](https://www.markdownguide.org/basic-syntax#images-1)
-   [Escaping Characters](https://www.markdownguide.org/basic-syntax#escaping-characters)
-   [HTML](https://www.markdownguide.org/basic-syntax#html)

[![](https://media.ethicalads.io/media/images/2020/12/ea-logo.png)](https://server.ethicalads.io/proxy/click/1300/182f1cba-12be-4eaa-9ba3-c12a18a01d95/)

[**EthicalAds:** A privacy-focused ad network for developers. **Publishers & Advertisers wanted!**](https://server.ethicalads.io/proxy/click/1300/182f1cba-12be-4eaa-9ba3-c12a18a01d95/)

[Ad by EthicalAds](https://ethicalads.io?ref=ea-image)

[About](https://www.markdownguide.org/about/)     [Contact](https://www.markdownguide.org/contact/)     [GitHub](https://github.com/mattcone/markdown-guide)     [API](https://www.markdownguide.org/api/v1/)     [Privacy Policy](https://app.termly.io/document/privacy-policy/1ca2b712-96e3-46bf-a8f1-d0035d389e7d)

© 2021. A [Matt Cone](https://www.mattcone.com) project. [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). Made with 🌶️ in [New Mexico](https://www.newmexico.org/).

---

# Markdown For Typora

## Overview

**Markdown** is created by [Daring Fireball](http://daringfireball.net/); د original guideline is [here](http://daringfireball.net/projects/markdown/syntax). Its syntax, however, varies 中 different parsers or editors. **Typora** is using [GitHub Flavored Markdown](#).

Markdown For TyporaOverviewBlock ElementsParagraph and line breaksHeadersBlockquotesListsTask List(Fenced) Code BlocksMath BlocksTablesFootnotesHorizontal RulesYAML Front MatterTable of Contents (TOC)Span ElementsLinksInternal LinksReference LinksURLsImagesEmphasisStrongCodeStrikethroughUnderlinesEmoji 😄Inline MathSubscriptSuperscriptHighlightHTMLEmbed ContentsVideoOther HTML Support

## Block Elements

### Paragraph and line breaks

A paragraph is simply one or 更 consecutive lines of text. In markdown source code, paragraphs are separated by two or 更 blank lines. In Typora, you only need one blank line (press `Return` once) 于 create a 新 paragraph.

Press `Shift` + `Return` 于 create a single line break. Most other markdown parsers will ignore single line breaks, so in order 于 make other markdown parsers recognize your line break, you can leave two spaces at د end of د line, or insert `<br/>`.

### Headers

Headers use 1-6 hash (`#`) characters at د start of د line, corresponding 于 header levels 1-6. For example:

\# This is an H1  
​  
\## This is an H2  
​  
\###### This is an H6

In Typora, input ‘#’s followed by title content, and press `Return` key will create a header.

### Blockquotes

Markdown uses email-style > characters for block quoting. They are presented as:

\> This is a blockquote with two paragraphs. This is first paragraph.  
\>  
\> This is second pragraph. Vestibulum enim wisi, viverra nec, fringilla in, laoreet vitae, risus.  
​  
​  
​  
\> This is another blockquote with one paragraph. There is three empty line 于 seperate two blockquote.

In Typora, inputting ‘>’ followed by your quote contents will generate a quote block. Typora will insert a proper ‘>’ or line break for you. Nested block quotes (a block quote inside another block quote) by adding additional levels of ‘>’.

### Lists

Input `* list item 1` will create an unordered list - د `*` symbol can be replace with `+` or `-`.

Input `1. list item 1` will create an ordered list - their markdown source code is as follows:

\## un-ordered list  
\* Red  
\* Green  
\* Blue  
​  
\## ordered list  
1\. Red  
2\. Green  
3. Blue

### Task List

Task lists are lists with items marked as either \[ \] or \[x\] (incomplete or complete). For example:

\- \[ \] a task list item  
\- \[ \] list syntax required  
\- \[ \] normal \*\*formatting\*\*, @mentions, #1234 refs  
\- \[ \] incomplete  
\- \[x\] completed

You can change د complete/incomplete state by clicking on د checkbox before د item.

### (Fenced) Code Blocks

Typora only supports fences in GitHub Flavored Markdown. Original code blocks in markdown are 不 supported.

Using fences is easy: Input \\`\`\\`and press`return`. Add an optional language identifier after \`\\`\` and we'll run it through syntax highlighting:

Here's an example:  
​  
\`\`\`  
function test() {  
 console.log("notice د blank line before this function?");  
}  
\`\`\`  
​  
syntax highlighting:  
\`\`\`ruby  
require 'redcarpet'  
markdown = Redcarpet.new("Hello World!")  
puts markdown.to\_html  
\`\`\`

### Math Blocks

You can render _LaTeX_ mathematical expressions using **MathJax**.

To add a mathematical expression, input `$$` and press د 'Return' key. This will trigger an input field which accepts _Tex/LaTex_ source. For example:

In د markdown source file, د math block is a _LaTeX_ expression wrapped by a pair of ‘$$’ marks:

$$  
\\mathbf{V}\_1 \\times \\mathbf{V}\_2 = \\begin{vmatrix}  
\\mathbf{i} & \\mathbf{j} & \\mathbf{k} \\\\  
\\frac{\\partial X}{\\partial u} & \\frac{\\partial Y}{\\partial u} & 0 \\\\  
\\frac{\\partial X}{\\partial v} & \\frac{\\partial Y}{\\partial v} & 0 \\\\  
\\end{vmatrix}  
$$

You can find 更 details [here](https://support.typora.io/Math/).

### Tables

Input `| First Header | Second Header |` and press د `return` key. This will create a table with two columns.

After a table is created, putting focus on that table will open up a toolbar for د table where you can resize, align, or delete د table. You can 也 use د context menu 于 copy and add/delete 个人 columns/rows.

The full syntax for tables is described below,  但  it is 不 necessary 于 know د full syntax in detail as د markdown source code for tables is generated automatically by Typora.

In markdown source code, they look like:

| First Header  | Second Header |  
| ------------- | ------------- |  
| Content Cell  | Content Cell  |  
| Content Cell  | Content Cell  |

You can 也 include inline Markdown such as links, bold, italics, or strikethrough in د table.

Finally, by including colons (`:`) within د header row, you can define text in that column 于 be left-aligned, right-aligned, or center-aligned:

| Left-Aligned  | Center Aligned  | Right Aligned |  
| :------------ |:---------------:| -----:|  
| col 3 is      | some wordy text | $1600 |  
| col 2 is      | centered        |   $12 |  
| zebra stripes | are neat        |    $1 |

A colon on د left-most side indicates a left-aligned column; a colon on د right-most side indicates a right-aligned column; a colon on  兩 sides indicates a center-aligned column.

### Footnotes

You can create footnotes like this\[^footnote\].  
​  
\[^footnote\]: Here is د \*text\* of د \*\*footnote\*\*.

will produce:

You can create footnotes like thisfootnote.

\[footnote\] Here is د _text_ of د **footnote**.

Hover over د ‘footnote’ superscript 于 see content of د footnote.

### Horizontal Rules

Inputting `***` or `---` on a blank line and pressing `return` will draw a horizontal line.

---

### YAML Front Matter

Typora now supports [YAML Front Matter](http://jekyllrb.com/docs/frontmatter/). Input `---` at د top of د article and then press `Return` 于 introduce a metadata block. Alternatively, you can insert a metadata block من د top menu of Typora.

### Table of Contents (TOC)

Input `[toc]` and press د `Return` key. This will create a “Table of Contents” section. د TOC extracts all headers من د document, and its contents are updated automatically as you add 于 د document.

## Span Elements

Span elements will be parsed and rendered right after typing. Moving د cursor in middle of those span elements will expand those elements into markdown source. Below is an explanation of د syntax for each span element.

### Links

Markdown supports two styles of links: inline and reference.

In  兩 styles, د link text is delimited by \[square brackets\].

To create an inline link, use a set of regular parentheses immediately after د link text’s closing square bracket. Inside د parentheses, put د URL where you want د link 于 point, along with an optional title for د link, surrounded in quotes. For example:

This is \[an example\](http://example.com/ "Title") inline link.  
  
\[This link\](http://example.net/) has no title attri 但 e.

will produce:

This is [an example](http://example.com/ "Title") inline link. (`<p>This is <a href="http://example.com/" title="Title">`)

[This link](http://example.net/) has no title attri 但 e. (`<p><a href="http://example.net/">This link</a> has no`)

#### Internal Links

**You can set د href 于 headers**, which will create a bookmark that allow you 于 jump 于 that section after clicking. For example:

Command(on Windows: Ctrl) + Click [This link](#block-elements) will jump 于 header `Block Elements`. 于 see how 于 write that, please move cursor or click that link with `⌘` key pressed 于 expand د element into markdown source.

#### Reference Links

Reference-style links use a second set of square brackets, inside which you place a label of your choosing 于 identify د link:

This is \[an example\]\[id\] reference-style link.  
  
Then, anywhere in د document, you define your link label on a line by itself like this:  
  
\[id\]: http://example.com/  "Optional Title Here"

In Typora, they will be rendered like so:

This is [an example](#) reference-style link.

\[id\] http://example.com/ Optional Title Here

The implicit link 名 shortcut allows you 于 omit د 名 of د link, in which case د link text itself is 用  as د 名. Just use an empty set of square brackets — for example, 于 link د word “Google” 于 د google.com web site, you could simply write:

\[Google\]\[\]  
And then define د link:  
  
\[Google\]: http://google.com/

In Typora, clicking د link will expand it for editing, and command+click will open د hyperlink in your web browser.

### URLs

Typora allows you 于 insert URLs as links, wrapped by `<`brackets`>`.

`<i@typora.io>` becomes [i@typora.io](mailto:i@typora.io).

Typora will 也 automatically link standard URLs. e.g: [www.google.com](www.google.com).

### Images

Images 有 similar syntax as links,  但  they require an additional `!` char before د start of د link. د syntax for inserting an image looks like this:

!\[Alt text\](/path/to/img.jpg)  
  
!\[Alt text\](/path/to/img.jpg "Optional title")

You are able 于 use drag & drop 于 insert an image من an image file or your web browser. You can modify د markdown source code by clicking on د image. A relative path will be 用  if د image that is added using drag & drop is in same directory or sub-directory as د document you're currently editing.

If you’re using markdown for building websites, you may specify a URL prefix for د image preview on your local computer with property `typora-root-url` in YAML Front Matters. For example, input `typora-root-url:/User/Abner/Website/typora.io/` in YAML Front Matters, and then `![alt](/blog/img/test.png)` will be treated as `![alt](file:///User/Abner/Website/typora.io/blog/img/test.png)` in Typora.

You can find 更 details [here](https://support.typora.io/Images/).

### Emphasis

Markdown treats asterisks (`*`) and underscores (`_`) as indicators of emphasis. Text wrapped with one `*` or `_` will be wrapped with an HTML `<em>` tag. E.g:

\*single asterisks\*  
  
\_single underscores\_

output:

_single asterisks_

_single underscores_

GFM will ignore underscores in words, which is commonly 用  in code and names, like this:

> wow\_great\_stuff
> 
> do\_this\_and\_do\_that\_and\_another\_thing.

To produce a literal asterisk or underscore at a position where it would otherwise be 用  as an emphasis delimiter, you can backslash escape it:

\\\*this text is surrounded by literal asterisks\\\*

Typora recommends using د `*` symbol.

### Strong

A double `*` or `_` will cause its enclosed contents 于 be wrapped with an HTML `<strong>` tag, e.g:

\*\*double asterisks\*\*  
  
\_\_double underscores\_\_

output:

**double asterisks**

**double underscores**

Typora recommends using د `**` symbol.

### Code

To indicate an inline span of code, wrap it with backtick quotes (\`). Unlike a pre-formatted code block, a code span indicates code within a normal paragraph. For example:

Use د \`printf()\` function.

will produce:

Use د `printf()` function.

### Strikethrough

GFM adds syntax 于 create strikethrough text, which is missing من standard Markdown.

`~~Mistaken text.~~` becomes ~~Mistaken text.~~

### Underlines

Underline is powered by raw HTML.

`<u>Underline</u>` becomes Underline.

### Emoji 😄

Input emoji with syntax `:smile:`.

User can trigger auto-complete suggestions for emoji by pressing `ESC` key, or trigger it automatically after enabling it on preference panel. 也, inputting UTF-8 emoji characters directly is 也 supported by going 于 `Edit` -> `Emoji & Symbols` in د menu bar (macOS).

### Inline Math

To use this feature, please enable it first in د `Preference` Panel -> `Markdown` Tab. Then, use `$` 于 wrap a TeX command. For example: `$\lim_{x \to \infty} \exp(-x) = 0$` will be rendered as LaTeX command.

To trigger inline preview for inline math: input “$”, then press د `ESC` key, then input a TeX command.

You can find 更 details [here](https://support.typora.io/Math/).

### Subscript

To use this feature, please enable it first in د `Preference` Panel -> `Markdown` Tab. Then, use `~` 于 wrap subscript content. For example: `H~2~O`, `X~long\ text~`/

### Superscript

To use this feature, please enable it first in د `Preference` Panel -> `Markdown` Tab. Then, use `^` 于 wrap superscript content. For example: `X^2^`.

### Highlight

To use this feature, please enable it first in د `Preference` Panel -> `Markdown` Tab. Then, use `==` 于 wrap highlight content. For example: `==highlight==`.

## HTML

You can use HTML 于 style content what pure Markdown does 不 support. For example, use `<span style="color:red">this text is red</span>` 于 add text with red color.

### Embed Contents

Some websites provide iframe-based embed code which you can 也 paste into Typora. For example:

<iframe height='265' scrolling='no' title='Fancy Animated SVG Menu' src='http://codepen.io/jeangontijo/embed/OxVywj/?height=265&theme-id=0&default-tab=css,result&embed-version=2' frameborder='no' allowtransparency='true' allowfullscreen='true' style='width: 100%;'></iframe>

### Video

You can use د `<video>` HTML tag 于 embed videos. For example:

<video src="xxx.mp4" />

### Other HTML Support

You can find 更 details [here](https://support.typora.io/HTML/).

\[GFM\] https://help.github.com/articles/github-flavored-markdown/

```query
"markdown syntax"
```