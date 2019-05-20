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

### Operators

- operator associativity
  - left-to-right
  - right-to-left
    - `x = y = z = 10;`
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

  - ```javascript
    `string ${value} template literal`;
    ```

- equality operators

  - primitive types compare by value
  - object types compare by memeory slot
  - `operand1 == operand2`
    - `2 == '2' is true`
    - `false == 'false' is false`
    - `2 === '2' is false`
  - `operand1 === operand2`
  - `!=, !==`

- comparison operators

  - `>, >=, <, <=`

- conditional operator

  - `.. ? .. : ..`

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

  - `obj[..]`

- new operator

  - `new Obj( .. )`
  - `new Obj`

- function operator

  - `.. ( .. )`

- rest operator

  ```javascript
  function sum(...args) {
    return args.reduce((accumulator, current) => {
      return (accumulator += current);
    });
  }
  ```

- arrow function operator

  - `(param1, param2, …, paramN) => { statements }`
  - `(param1, param2, …, paramN) => expression`

- Array/Object spread operator

  ```javascript
  const adrian = {
    fullName: "Adrian Oprea",
    occupation: "Software developer",
    age: 31,
    website: "https://oprea.rocks"
  };
  const bill = {
    ...adrian,
    fullName: "Bill Gates",
    website: "https://microsoft.com"
  };
  const numbers1 = [1, 2, 3, 4, 5];
  const numbers2 = [...numbers1, 1, 2, 6, 7, 8];
  // this will be [1, 2, 3, 4, 5, 1, 2, 6, 7, 8]
  ```

- typeof operator

  - `typeof operand`
    - `typeof null` returns "object"
    - typeof always returns a string
      - "undefined"
      - "string"
      - "number"
      - "boolean"
      - "function"
      - "object"

- void operator
- delete operator
- await operator
- in operator
- instanceof operator
- yeild operator
  - `yeild ..`
  - `yeild* ..`
- comma/sequence operator
  - `.. , ..`

---

### Functions

- arguments object is a local variable available within all non-arrow functions

#### Built-in Functions

- Info

  ```javascript
  alert("Hello World!");
  ```

---

### Objects

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

  - shallow copy
  - deep copy
  - chaining array methods

  ```javascript
  //Constructor
  var fruits = ["Apple", "Banana", "Peach", "Durian"];
  var fruits = new Array("Apple", "Banana", "Peach", "Durian";
  var fruits = new Array(4);

  //properties
  arr.length;

  // constructor like
  Array.from(arrayLike[, mapFn[, thisArg]]);
  Array.of(element0[, element1[, ...[, elementN]]]);

  // array type testing
  Array.isArray(arr);

  // stringify
  var str = arr.toString();
  var str = arr.join([separator]);//null, undefined elements treated as empty string

  // array operation: shallow-copy
  var new_array = old_array.concat([value1[, value2[, ...[, valueN]]]]);
  var new_array = arr.reverse();

  // array operation: in-place
  arr.copyWithin(target[, start[, end]]);
  arr.fill(value[, start[, end]])
  var popedItem = arr.pop(); // undeinfed if arr is empty.
  arr.push(element1[, ...[, elementN]]);
  var firstItem = arr.shift();
  arr.unshift(element1[, ...[, elementN]]); //push to head of arr

  // array operation: slicing and dicing
  var new_array = arr.slice([begin[, end]]); // [begin, end), shallow-copy
  var arrDeletedItems = arr.splice(start[, deleteCount[, insertItem1[, insertItem2[, ...]]]]);

  // array operation: inidexing
  var first = fruits[0];
  var last = fruits[fruits.length - 1];
  var some = fruits["2"];
  var index = arr.indexOf(searchElement[, fromIndex]); // -1 if not found
  var index = arr.lastIndexOf(searchElement[, fromIndex]); // -1 if not found
  var bool = arr.includes(valueToFind[, fromIndex]);

  //functor-like
  //iterator
  var iterator = arr.entries();
  iterator.next().value; // [index, elem]

  var iterator = arr.keys();
  iterator.next().value; // index

  var iterator = arr.values();
  iterator.next().value; // elem

  //finder
  var elem = arr.find(callback[, thisArg]);//undefined if not found
  var index = arr.findIndex(callback(element[, index[, array]])[, thisArg]);//-1 if not found

  //sorter
  arr.sort([compareFunction]); // sorted in-place

  // tester
  var bool = arr.every(callback(element[, index[, array]])[, thisArg]);
  var bool = arr.some(callback(element[, index[, array]])[, thisArg]);

  //filter
  var newArray = arr.filter(callback(element[, index[, array]])[, thisArg]);

  //flatter
  var newArray = arr.flat(depth);//default depth = 1
    //recursive flatten deep
      function flatten(array) {
        var flattend = [];
        !(function flat(array) {
          array.forEach(function(el) {
            if (Array.isArray(el)) flat(el);
            else flattend.push(el);
          });
        })(array);
        return flattend;
      }
    //map first, then flat at depth=1
    var new_array = arr.flatMap(function callback(currentValue[, index[, array]]) {
      // return element for new_array
    }[, thisArg])

  //mapper
  var new_array = arr.map(function callback(currentValue[, index[, array]]) {
    // Return element for new_array
  }[, thisArg])

  arr.forEach(function callback(currentValue [, index [, array]]) {
    //your iterator
  }[, thisArg]); // return undefined

  //reducer
  var value = arr.reduce(callback(accumulator, currentValue[, index[, array]])[, initialValue]);
  var value = arr.reduceRight(callback(accumulator, currentValue[, index[, array]])[, initialValue])

  // functor patterns:
  // ranger
  const range = n => Array.from(new Array(n).keys());
  const rangeRandom = (n, max_val) => {
  return Array.from(new Array(n).keys()).map(val =>
    Math.ceil(Math.random() * max_val)
  );
  };
  var arr10 = range(10);
  var arr8 = rangeRandom(8, 100);

  //max/min number array
  const maxElement = arr =>
    arr.reduceRight((acc, cur) => (acc = Math.max(acc, cur)), arr[0]);

  const minElement = arr =>
    arr.reduceRight((acc, cur) => (acc = Math.min(acc, cur)), arr[0]);
  //concateArr
  const concateArr = (...args) => Array.from(args).flat();
  //typeof all args
  const typeofAll = (...args) => Array.from(args).map(elem => typeof elem);
  ```

- [Object]

  - JSON like, but different
    - JSON key-value pairs: `"property": value`
    - JS key-value pairs: `property: value`
    - JSON value validation: String, Number, Object, Array, Boolean, Null
    - JS value validation: function, computational properties and JSON allowed.
    - JSON.parse() will reject computed property names and an error will be thrown.

  ```javascript
  //constructor
  var obj = new Object([value])
  // Object literal
  var object1 = {a: 'foo', b: 42, c: {}};

  // Shorthand property names (ES2015)
  var a = 'foo', b = 42, c = {};
  var o = {a, b, c};

  // Shorthand method names (ES2015)
  var o = {
    property(parameters) {}
  };

  // Computed property names (ES2015)
  var prop = 'foo';
  var o = {
    [prop]: 'hey',
    ['b' + 'ar']: 'there'
  };

  var obj = { [ nameValuePair1[, nameValuePair2[, ...nameValuePairN] ] ] };

  //properties
  Object.prototype

  //Object Operation: indexing
  //Object Operation: walking through
  for (key in obj){
    console.log(key+": "+obj[key]);
  };
  ```

* [String](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)

  - bs
  - d

  ```javascript
  //constructor

  //string literal
  `template literal ${value} not working well with Object value`;
  //properties

  //String Operation: indexing

  //String Operation: slicing and dicing

  // String Operation: transforming
  ```

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

### Context Control

- Terms:
  - lexical scoping (static scoping)
  - global scope
  - local scope
  - name shadowing
- var, const
- let
- block: {}
  - if, else if, else statement
  - switch statement
  - for statement
  - do statement
  - while statement -
- module: import, exports

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
```

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

- for-of

  ```javascript
  let iterable = Array(100).keys();

  for (let value of iterable) {
    value += 1;
    console.log(value);
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

---

## [DOM](https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model)

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
