---
id: HTML5CSS
title: HTML5 and CSS shapes the WWW
sidebar_label: HTML5 and CSS
---

## Overview

No Introduction

---

## HTML Architecture

### [HTML Elements](https://www.w3schools.com/tags/ref_byfunc.asp)

#### Basic Elements

- `<html>, <meta>, <base>, <title>, <body>`
- `<!-- .html comments -->`
- refs:
  - [base](https://www.w3schools.com/tags/tag_base.asp)

#### Inline Elements

-`<span>, <b>, <i>, <em>, <strong>, <small>, <mark>, <del>, <ins>, <sub>, <sup>`

#### Block Elements

- `<h1>, <h2>, <h3>, <h4>, <h5>, <h6>,`
- `<p>, <br>, <hr>`
- `<pre>`

#### Multimedia Elements

- `<img>`
  - `<img src="IMAGE_PATH_OR_URL" alt="SHOW_IMG_INFO" width="W" height="H"/>`
- `<audio>`
- `<video>`

#### Graphic Elements

- `canvas`
- `map`

---

### [HTML Styling](https://www.w3schools.com/css/default.asp)

#### Inline Style

- `<button sytle="color:#00ff00; margin"> </elem>`

#### Internal Style

- ```html
  <header>
    <!-- .... end other header content -->
    <style>
      body {
        background-color: linen;
      }

      h1 {
        color: maroon;
        margin-left: 40px;
      }
    </style>
  </header>
  ```

#### External Style

- ```html
  <header>
    <!-- .... end other header content -->
    <link rel="stylesheet" type="text/css" href="mystyle.css" />
    <!-- .... start other header content -->
  </header>
  ```

### HTML Layout

#### Spacing

- px
- em
  - 1em ~~ 16px
- rem

### HTML Semantic Layout

#### Semantic Directives and Structure

```html
<header>
  <!-- Header Layout -->
  <nav></nav>
  <!-- Header Layout -->
</header>
<main>
  <section>
    <!-- section Layout -->
    <article>
      <!-- article Layout -->
      <h1>headline</h1>
      <div>
        <aside>aside left</aside>
        <div>
          <p>P1</p>
          <p>P2</p>
          <p>P3</p>
        </div>
        <aside>aside right</aside>
      </div>
      <!-- article Layout -->
    </article>
    <!-- section Layout -->
  </section>
  <!-- more section Layout -->
  <!-- more section Layout -->
  <!-- more section Layout -->
  <!-- more section Layout -->
</main>
<footer></footer>
```

---

## CSS Deepdive

### Selectors and Precedence

#### Selectors

- Class Selector: `.className`
- ID Selector: `#id`
- Element Selector: `elem`
- Comma Selector, all elem1 and all elem2：`elem1, elem2`
- Combinators
  - space : all p inside div
    - `div p`
  - \> : all p whoes parent is a div (p nested one level in div)
    - `div > p`
  - \+ : all p are placed immediately after div
    - `div + p`
  - ~ : all ul are preceded by p
    - `p ~ ul`
- [see more](https://www.w3schools.com/cssref/css_selectors.asp)

#### Rules

- inline css ( html style attribute ) overrides css rules in style tag and css file
- a more specific selector takes precedence over a less specific one
- rules that appear later in the code override earlier rules if both have the same specificity.
- A css rule with **!important** always takes precedence.

### CSS Selectors and Specificity Hierarchy

- Inline styles
- IDs
- Classes, attributes and pseudo-classes
- Elements and pseudo-elements

---

## HTML Component

### Typography

- [Google Fonts](https://fonts.google.com/)
- Attributes
  - color
  - font-family
  - font-size
  - font-style
  - font-weight
  - line-height
  - text-decoration
  - text-transform
    - uppercase
    - lowercase
    - capitalize

---

## Misc

### Frameworks

- [Bootstrap4](https://getbootstrap.com/docs/4.3/getting-started/introduction/)

### Learning Resources

- [HTML5 Tutorial](https://www.w3schools.com/html/default.asp)
- [Learn HTML5 and CSS3 From Scratch - Full Course](https://www.youtube.com/watch?v=mU6anWqZJcc)
- [Learn HTML5 & CSS3 From Scratch - Make Responsive Websites](https://www.youtube.com/watch?v=hefT68D-zTA)
- [HTML5 & CSS3 tutorial: From Beginner to Expert](https://www.youtube.com/watch?v=3MH8P2eFnnk)

---
