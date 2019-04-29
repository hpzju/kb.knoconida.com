---
id: Markdown
title: Markdown
sidebar_label: Markdown
---

## URL Link

- Github [GFM](https://github.github.com/gfm/)
- Github [Write Formatting](https://help.github.com/en/articles/basic-writing-and-formatting-syntax)
- Github [Mastering Markdown](https://guides.github.com/features/mastering-markdown/)
- Wordpress [Markdown Quick Reference](https://en.support.wordpress.com/markdown-quick-reference/)
- [Markdown Guide](https://www.markdownguide.org/)

---

## Lable Link

- Some text with [a local link][1]
- and [another local link][2]

---

## Image Link

- Logo: ![Alt](/img/Markdown-Markdown.png "Markdown Logo")
- this is a image label: ![Alt][3]

---

## Headers

# H1

## H2

### H3

#### H4

##### H5

###### H6

---

## Lists

### Bullet List

- item1
- item2
- item3

### Number List

1. num1
2. num2
3. num3

### Task List

- [x] @mentions, #refs, [links](), **formatting**, and <del>tags</del> supported
- [x] list syntax required (any unordered or ordered list supported)
- [x] this is a complete item
- [ ] this is an incomplete item

### Nested List

- Level1-1
- Level1-2
  1. Level2-1
     - Level3-1
     - Level3-2
  2. Level2-2
- Level1-3
  - Level2-1
    - Level3-1
      - Level4-1
        - Level5-1

---

## Blockquotes

> Level1-Block1
>
> > Level2-Block1
> >
> > > Level3-Block1

> Level1-Block2
>
> - Item1
> - Item2

---

## Pre-formatted

    Begin each line with
    Tab or more spaces to
    make text look
    e x a c t l y
    like you type i
    t.

---

## Code formatted

### Code Line formatted

`import pymongo`

### Code Block formatted

```python
import pymongo

# establish a connection to the database

client = pymongo.MongoClient("mongodb://localhost")

db_school = client.school
col_grades = db_school.grades
```

---

## Emphasize

- _Itali with one star_
- **Bold with two stars**
- ~~This was mistaken text~~
- **This text is _Bold and Italic_ important**

---

## Escape Formatting

Let's rename \*our-new-project\* to \*our-old-project\*.

---

## Tables

| First Header                | Second Header                               |
| --------------------------- | ------------------------------------------- |
| Content from cell 1         | Content from cell 2                         |
| Content in the first column | Content in the second column with long line |

---

[1]: http://google.com/ "Google"
[2]: http://youtube.com/ "Youtube"
[3]: /img/Markdown-logo.png "Markdown-logo.png"
