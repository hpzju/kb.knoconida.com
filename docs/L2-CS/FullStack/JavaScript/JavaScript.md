---
id: JavaScript
title: JavaScript, A Web Oriented Programming Language
sidebar_label: JavaScript
---

## Overview

### Features

---

### Applicable Scenarios

- Web Apps

---

---

## JavaScript Language Basic

---

<!-- ### Building Blocks -->

### Types

#### [Number](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)

- number literal
  - int
  - float
  - negative
  - NaN
- properties:
- methods
  - `num.toString(radix)`
    - radix ranges [2, 36]
  - `num.toExponential()`
  - `num.toFixed()`
  - `num.toPrecision()`
- global built-in
  - `parseInt(string, radix)`
  - `parseFloat(string)`
  - [math object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math)

#### [String](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)

- string literal

  - single quote: `'string'`
  - double quote: `"string"`
  - escaping char: `'string\'s length'`
  - Template literals

    ```javascript
    `hello world!` ...
    `helllo world` ...
    `hello ${myVal} world` ...
    ```

  - Long literal

    ```javascript
    let longString =
      "This is a very long string which needs " +
      "to wrap across multiple lines because " +
      "otherwise my code is unreadable.";
    let longString =
      "This is a very long string which needs \
    to wrap across multiple lines because \
    otherwise my code is unreadable.";
    ```

- properties:
  - `"string".length`
- methods
  - `''.toLowerCase()`
  - `''.toUpperCase()`
- global built-in
  - `parseInt(string, radix)`
  - `parseFloat(string)`

#### Boolean

- true
- false
  - falsy values
    - null
    - undefined
    - '', ""
    - 0
    - NaN

#### Null

#### Undefined

#### Symbol

#### Object

<!-- ### Structures -->

---

### Operator

- operator precedence

  - [ref](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Operator_Precedence)

- assignment operators

  - `=`
  - `+=, -=, *=, /=, %=, **=`
  - `>>=, <<=, >>>=`
    - `>>>=` Unsigned right shift assignment
  - `&=, ^=, |=,`
    - `^=` bitwise xor

- arithmetic operators

  - `+, -, *, /, %, **,`
  - `operand++, ++operand, operand--, --operand`
    - If used postfix (for example, x--), then it returns the value before decrementing.
    - If used prefix (for example, --x), then it returns the value after decrementing.
  - `+operand, -operand`

- string operators

  - `+`

- equality operators

  - `operand1 == operand2`
    - `2 == '2' is true`
    - `false == 'false' is false`
    - `2 === '2' is false`
  - `operand1 === operand2`
  - `!=, !==`

- comparison operators

  - `>, >=, <, <=`

- conditional operator

  - `... ? ... : ...`

- logical operators

  - `&&, ||, !`
    - no xor in JS, xor pattern: `(x && !y || !x && y)`

- bitwise operators

  - `&, |, ^, ~`
  - `>>, >>>, <<`

- grouping operator

  - `( )`

- member access operator

  -`obj.member`

- indexing access operator

  - `obj[...]`

- new operator

  - `new Obj( ... )`
  - `new Obj`

- function operator

  - `... ( .. )`

- arrow function operator

  - `(param1, param2, …, paramN) => { statements }`
  - `(param1, param2, …, paramN) => expression`

- typeof operator
  - `typeof operand`
    - `typeof null` returns "object"
    - typeof always returns a string
- void operator
- delete operator
- await operator
- in operator
- instanceof operator
- yeild operator
  - `yeild ...`
  - `yeild* ...`
- comma/sequence operator
  - `... , ...`

---

### Function

#### Built-in Functions

- Info

  ```javascript
  alert("Hello World!");
  ```

---

### Object

#### Built-in Objects

- [Date](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date)

  ```javascript
  const date = new Data();
  var months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];
  var days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];
  ```

- [Math](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math)

  ```javascript
  Math.ceil();
  Math.floor();
  Math.round();
  Math.min();
  Math.max();
  Math.random() // [0,1)
  ...
  ```

- [Array](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array)

  ```javascript
  var fruits = ["Apple", "Banana", "Peach", "Durian"];
  var first = fruits[0];
  var last = fruits[fruits.length - 1];
  var some = fruits["2"];
  arr.length;
  arr.toString();
  arr.push();
  arr.pop();
  ```

...

````

---

<!-- ### Architectures -->

### Expression

#### Conditon Test

- `==`
- `===`
- undefined variables return false
- `>, >=, <, <=, !=`

#### Logical Operation

- `&&, ||, !`
- xor pattern: `(x && !y || !x && y)`

#### String Concatenation

- `"String " + myVal + " Another String."`

---

### Statement

#### Declare Variables

- const
- var
- let

#### Assignment

- `=`

#### Comment

- line comment
- `// LINE`
- block comment
- `/* BLOCK */`

---

### Context Control with Block

---

### Flow Control

#### Conditional Statement

- if
- if-else
- if-else if-else

```javascript
if (a === "other value") {
  do_something;
} else if (a === "another value") {
  do_something;
} else {
  do_something;
}
````

- switch-case-break-default
- switch-case-break
- switch-case
- swotch-case-default

  ```javascript
  switch (x) {
    case 1:
      console.log("one");
      break;
    case 2:
      console.log("two");
      break;
    default:
      console.log("none");
  }
  ```

#### Loop Statement

- for

  ```javascript
  for (let i = 0; i < 100; i += 1) {
    do_something;
  }
  ```

- do-while

  ```javascript
  do {
    x += 1;
    console.log(x);
  } while (x < 100);
  ```

- while

  ```javascript
  while (x > 90) {
    x -= 1;
    console.log(x);
  }
  ```

---

### Design Patterns

---

### Builtin Libs

---

### External Libs

---

---

## [JavaScript HTML DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)

### DOM Tree

- DOM tree: ![Alt](/img/JS-DOM-Tree.png "DOM Tree")

---

### [document](https://developer.mozilla.org/en-US/docs/Web/API/document)

- properties

  ```javascript
  document.body.innerHTML;
  ```

- methods

---

### [window](https://developer.mozilla.org/en-US/docs/Web/API/window)

- properties

  ```javascript
  windows.console;
  ```

- methods

  ```javascript
  alert("message");
  var message = prompt("Input your message: ");
  console.log("message");
  ```

---

---

## AJAX and JSON

---

---

## Best Practice

### Install and Initialize

#### Inline Script

- HelloWorld.html

```html
...
<body>
  ...
  <script>
    // JAVASCRIPT HERE
  </script>
</body>
...
```

#### External Script

- HelloWorld.html

```html
...
<body>
  ...
  <script src="PATH_TO_JAVASCRIPT"></script>
  ...
</body>
...
```

---

---

---

## Misc

### JavaScript Standards

- ECMA: European Computer Manufacturers Association
- [ECMA-262](https://github.com/tc39/ecma262)
- [ECMA-404 The JSON Data Interchange Syntax](https://ecma-international.org/publications/standards/Ecma-404.htm)
- [ECMA-402](https://ecma-international.org/publications/standards/Ecma-402.htm)

---

### Online Resources

- [Mozilla Documentation](https://developer.mozilla.org/en-US/docs/Web/JavaScript)
- [W3School JavaScript Tutorial](https://www.w3schools.com/js/)
- [JavaScript Resources](https://www.javascript.com/resources)

---

---
