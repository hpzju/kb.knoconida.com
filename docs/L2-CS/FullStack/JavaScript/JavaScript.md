---
id: JavaScript
title: JavaScript, A Web Oriented Programming Language
sidebar_label: JavaScript
---

## Overview

### Features

- lightweight interpreted scripting language
- dynamic type language
- prototype-based OOP
- Web Oriented, client-side prone

---

### Applicable Scenarios

- Web Apps: server/client side

---

### JavaScript engine(V8)

- Implements just-in-time compilation ECMAScript
- Implements WebAssembly
- Supported by Linux with x64, IA-32, ARM, or MIPS
- Written in C++
- Used by chrome, Node.js
- Single threaded execution engine
- Proccessing:
  - compile
  - execute
  - Handling call stack
  - Handling event loop
  - memory allocation
  - garbage collects
- V8 engine Components:
  ![Alt](/img/JS-V8-engine-components.png "engine components")
- V8 engine pipeline:
  ![Alt](/img/JS-V8-engine-pipeline.svg "engine pipeline")
- V8 Optimization: [V8 Website](https://v8.dev/)
  - hidden classes optimization
  - number, 31-bit interger using tagged values
  - array, double numbers using unboxing
  - array, dense with fast elements linear store, sparse with dictionary element hash store
  - monomorphic is better than polymorphic
  - optimizing compiler using type feedback
  - IC: inline cacheing
  - minimize try-catch block
- Other Engines
  - Firefox has SpiderMonkey
  - Safari has JavaScriptCore (also called Nitro)
  - Edge has Chakra

---

### JavaScript Runtime

- Node.js
- Browsers, Chrome, Firefox, Edge
- Runtime Diagram:
  ![Alt](/img/JS-runtime.png "JavaScript Runtime")

---

---

## JavaScript Language Basic

---

<!-- ### Building Blocks -->

### Variable and Scope

- Variable Identifier:

  - `/(Starter)(Repeater)*/`:
    - Starter
      - `/[$_A-Za-z]/`
    - Repeater
      - `/(starter)|\d/`
      - `/[$_A-Za-z0-9]/`

- Reserved Words:

  - `await, break, case, catch, class, const, continue, debugger, default, delete, do, else, export, extends, finally, for, function, if, import, in, instanceof, new, return, super, switch, this, throw, try, typeof, var, void, while, with, yield`
  - `let, static`
  - `enum, implements, package, protected, interface, private, public`

- Namespace Scope:

  - Global Scope
    - variables declared outside any function, block, or module scope have global scope.
  - Block Scope
    - variable is defined inside a block `{}` using the let or const keywords
  - Function Scope
    - variables declared inside a function
  - Hoisting
    - no matter where functions/variables are declared, they are moved to the top of their scope regardless of weather they were globally scoped or locally.
  - Name Shadowing
    - local scope varaible shadows upper scope chain name
  - Scope Chain
    - used to resolve variables,from inner to outer.
  - Closures
    - A closure can also access the variables of its outer function even after the function has returned. This allows the returned function to maintain access to all the resources of the outer function.
  - Ref: [Understanding Scope in JavaScript](https://scotch.io/tutorials/understanding-scope-in-javascript)

- let, const, var

  - `const` means that the identifier can’t be reassigned.
  - `let` used only in the block it’s defined in
  - `var`
    - declarations are globally scoped or function scoped,
    - variables can be re-declared and updated
    - variables can be used before declare by hoisting mechanism.

- block: `{ ... }`

  - if, else if, else statement
  - switch statement
  - for statement
  - do statement
  - while statement

---

### Primitive Types

- Primitive Types
  - string, number, bigint, boolean, null, undefined, symbol
- Primitive wrapper objects
  - String, Number,Boolean, BigInt, Symbol
- typeof operator

  ```javascript
  // Numbers
  typeof 37 === "number";
  typeof 3.14 === "number";
  typeof 42 === "number";
  typeof Math.LN2 === "number";
  typeof Infinity === "number";
  typeof NaN === "number"; // Despite being "Not-A-Number"
  typeof Number("1") === "number"; // Number tries to parse things into numbers
  typeof 42n === "bigint";

  // Strings
  typeof "" === "string";
  typeof "bla" === "string";
  typeof `template literal` === "string";
  typeof "1" === "string"; // note that a number within a string is still typeof string
  typeof typeof 1 === "string"; // typeof always returns a string
  typeof String(1) === "string"; // String converts anything into a string, safer than toString

  // Booleans
  typeof true === "boolean";
  typeof false === "boolean";
  typeof Boolean(1) === "boolean"; // Boolean() will convert values based on if they're truthy or falsy
  typeof !!1 === "boolean"; // two calls of the ! (logical NOT) operator are equivalent to Boolean()

  // Symbols
  typeof Symbol() === "symbol";
  typeof Symbol("foo") === "symbol";
  typeof Symbol.iterator === "symbol";

  // Undefined
  typeof undefined === "undefined";
  typeof declaredButUndefinedVariable === "undefined";
  typeof undeclaredVariable === "undefined";

  //Null
  typeof null === "object";

  // Objects
  typeof { a: 1 } === "object";

  // use Array.isArray or Object.prototype.toString.call
  // to differentiate regular objects from arrays
  typeof [1, 2, 4] === "object";

  typeof new Date() === "object";
  typeof /regex/ === "object"; // See Regular expressions section for historical results

  // The following are confusing, dangerous, and wasteful. Avoid them.
  typeof new Boolean(true) === "object";
  typeof new Number(1) === "object";
  typeof new String("abc") === "object";
  typeof new Function() === "function";

  // Functions
  typeof function() {} === "function";
  typeof class C {} === "function";
  typeof Math.sin === "function";
  ```

#### string type and String Wrapper Object

- string literal

  - single quote: `'string'`
  - double quote: `"string"`
  - escaping char: `'string\'s length'`
  - string template literals

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

- Properties:
  - `str.length`
  - `String.prototype`
    - `str.__proto__`
- Static methods
  - `String.fromCharCode(189, 43, 190, 61)`
  - `String.fromCodePoint(9731, 9733, 9842, 0x2F804)`
- String manipulation methods

  - `character = str.charAt(index)`
  - `newStr = str.toLowerCase()`
  - `newStr = str.toLocaleLowerCase([locale, locale, ...])`
  - `newStr = str.toUpperCase()`
  - `newStr = str.toLocaleUpperCase([locale, locale, ...])`

  - `charCode = str.charCodeAt(index)`
  - `codePoint = str.charCodePoint(index)`
  - `str.normalize([form])`

  - `newStr = str.concat(string2[, string3, ..., stringN])`

    - `+, += operator is prefered.`

  - `bool = str.endsWith(searchString[, searchBackwardPos])`
  - `bool = str.startsWith(searchString[, searchForwardPos])`
  - `bool = str.includes(searchString[, searchForwardPos])`
  - `index = str.indexOf(searchString[, searchForwardPos]) //-1 returns if not found`
  - `index = str.lastIndexOf(searchString[, searchBackwardPos]) //-1 returns if not found`
    - `'abab'.lastIndexOf('ab', 2)` will return 2 and not 0, as fromIndex limits only the beginning of the match.
  - `compare = str.localeCompare(compareString[, locales[, options]])`
  - `matchArr = str.match(regexp)`
  - `matchIterator = str.matchAll(regexp)`
  - `index = str.search(regexp)`

  - `newStr = str.slice(beginIndex[, endIndex])`
  - `strArr = str.split([separator[, limit]])`
  - `newStr = str.substring(indexStart[, indexEnd])`

  - `newStr = str.padEnd(targetLength [, padString])`
  - `newStr = str.padStart(targetLength [, padString])`
  - `newStr = str.repeat(count);`
  - `newStr = str.replace(regexp|substr, newSubstr|function)`
  - `newStr = str.trim()`
  - `newStr = str.trimEnd()`
  - `newStr = str.trimStart()`

  - `str = StringObj.toString()`
  - `str = StringObj.valueOf()`

  - `strIterator = str[Symbol.iterator]()`
  - `for (char of str) { ... }`

- Global built-in
  - `int = parseInt(string, radix)`
  - `float = parseFloat(string)`
  - `value = eval(string)`
  - `encodeURI(uriString), encodeURIComponent(uriString)`
  - `decodeURI(encodedURI), decodeURIComponent(encodedURI)`

#### number and Number Wrapper Object

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
  - `isFinite()`
  - `isNaN`
  - [math object](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Math)

#### boolean and Boolean Wrapper Object

- true
  - []
  - {}
- false
  - falsy values
    - null
    - undefined
    - '', ""
    - 0
    - NaN
    - [][0]
    - {}.props

#### BigInt Wrapper Object

#### Symbol Wrapper Object

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

- [String](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)

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

#### Class

#### Function

---

### Functions

- arguments object is a local variable available within all non-arrow functions

#### Built-in Functions

- Info

  ```javascript
  alert("Hello World!");
  ```

---

### Expression

#### Conditional Expression

- `==`
- `===`
- undefined variables return false
- `>, >=, <, <=, !=`
- ternary expression

#### Logical Expression

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

#### Function Statement

- `const funName = (...parameters) => { ...codes }`

### Mudule

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

---

### Promise, Async, Await, and Sync

```javascript
async function sequence() {
  await Promise.all([promise1(), promise2()]);
  return "done!";
}

const makeRequest = () =>
  getJSON().then(data => {
    console.log(data);
    return "done";
  });

const makeRequest = async () => {
  console.log(await getJSON());
  return "done";
};

makeRequest();
```

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

## Design Patterns

---

---

## Best Practice

### Install and Initialize

#### Internal Script

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
    <script src="src/helloWorld.js"></script>
    ...
  </body>
  ...
  ```

- helloWorld.js

  ```javascript
  ...
  console.log("hello world!")
  ...
  ```

---

### Script Loading

- scripts reffering DOM elements should be loaded after HTML elements parsed by browser.
  - internal scripting:
    - `document.addEventListener("DOMContentLoaded", function() { ... });`
  - external scripting:
    - `<script src="script.js" async></script>`
  - put script element right at the bottom of the body (e.g. just before the `</body>` tag)
- defer vs async diractive

  - `defer` loads script by order
  - `async` cannot granty orders

    ```javascript
    //async diractive
    <script async src="js/vendor/jquery.js" />
    <script async src="js/script2.js"></script>

    //defer diractive
    <script defer src="js/vendor/jquery.js" />
    <script defer src="js/script2.js"></script>
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
