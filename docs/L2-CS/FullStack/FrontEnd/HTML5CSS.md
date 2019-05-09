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

- `<html>, <meta>, <base>, <title>,<head>, <body>`
- `<!-- .html comments -->`
- refs:
  - [base](https://www.w3schools.com/tags/tag_base.asp)

#### Inline Elements

- `<span>, <b>, <i>, <em>, <strong>, <small>, <mark>, <del>, <ins>, <sub>, <sup>`
- `<a>`

#### Block Elements

- `<h1>, <h2>, <h3>, <h4>, <h5>, <h6>,`
- `<p>, <br>, <hr>`
- `<pre>, <code>`
- `<button>`
  - **display: inline-block**

#### Multimedia Elements

- `<img>`
  - `<img src="IMAGE_PATH_OR_URL" alt="SHOW_IMG_INFO" width="W" height="H"/>`
- `<svg>`
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

---

## HTML Layout

### Layout CSS Properties

- Box Model
  - margin
  - border:
  - padding:
  - content:
- Spacing
  - max-width: from samll auto warpping to large max-width fixed
  - min-width: from large auto warpping to small min-width fixed
  - px
  - em
    - 1em ~~ 16px for lg screen
  - rem
- Placement
  - text-align: justify, left, center, right
  - position: static|absolute|fixed|relative|sticky|initial|inherit;
    - top, bottom, left, right:
  - float: left, right inherit, none
  - overflow: auto, hidden, inherit, scroll, visible
  - clear: both, left, right, inherit, none
- Display
  - [backgroud](https://www.w3schools.com/cssref/css3_pr_background.asp): bg-color bg-image position/bg-size bg-repeat bg-origin bg-clip bg-attachment initial|inherit
  - [display](https://www.w3schools.com/cssref/pr_class_display.asp): inline, block, none
  - color: #FFFFFF | rgb(0,0,0,0.5)
  - float: left, right inherit, none
  - overflow: auto, hidden, inherit, scroll, visible
  - clear: both, left, right, inherit, none
- Transition
  - transition: property duration timing-function delay|initial|inherit;
  - transition-property
    - none|all|property|initial|inherit;
  - transition-duration
  - transition-timing-function
    - linear|ease|ease-in|ease-out|ease-in-out|step-start|step-end|steps(int,start|end)|cubic-bezier(n,n,n,n)|initial|inherit
  - transition-delay
- Animation
  - animation: animationname duration timing-function delay iteration-count direction fill-mode play-state
  - animation-name
  - animation-duration
  - animation-timing-function
  - animation-delay
  - animation-iteration-count
  - animation-direction
  - animation-fill-mode
  - animation-play-state
  - @keyframes
    - @keyframes animationname {keyframes-selector {css-styles;}}

### HTML Visual Layout

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

### CSS Reset

- clear all css settings
- provide a baseline to normalize css file
- [refs](https://meyerweb.com/eric/tools/css/reset/)

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
- Colon Selectors
  - :hover
    - `#button1:hover`
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
