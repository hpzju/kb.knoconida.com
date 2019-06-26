---
id: Python
title: Python a programming language.
sidebar_label: Python
---

## Overview

- Bytecode compiled interpreted language
  - `.py` to `.pyc`
- OOP
- FP

### Features

- Open source
- Platform independent

### Applicable Scenarios

- Web Dev
- Game Dev
- Data Science
- Sys DevOps

---

---

## Python Language Basic

<!-- ### Building Blocks -->

### Variables and Namespace

- variables
- namespace
  - global
  - local
    - global variable reference statement
      - `global variable_list`
- keywords
  - `import keyword; print(keyword.kwlist)`

### Types

- Reference

  - refer by reference
  - refer by value

- Mutability

  - mutable
  - imutable

- type() function

  - return Type Object
  - `int, float, str, list, set, dict, NoneType, function`

- type conversion

  - `int()`
  - `float()`
  - `str()`
  - `bool()`
  - `list()`
  - `tuple()`
  - `set()`

- Categories

  - `int`
  - `float`
  - `bool`
  - `str`

---

#### None

- `None`

#### Boolean

- Introduction

  - immutable type
  - refer elements by value
  - type conversion: `bool(var)`
  - Falsey values
    - `0, 0.0, 0L, 0j, None, "", [], (), {}`
  - logical operators
    - `not, and, or`

- Practices

  ```python
    # boolean literal
    b = True
    b = False
  ```

---

#### Number

- Introduction

  - immutable type
  - refer by value
  - categories
    - `int, float, long, complex`
  - arithmetic operators
    - `+, -, *, /, //, %, **`
  - comparison operators
    - `>, >=, <, <=, ==, !=`

- Practices

  ```python
    # boolean literal
    b = True
    b = False
  ```

---

#### String

- Introduction

  - immutable
  - char array data structure

- Practices

  ```python
    # string literal
    s = "string literal"
    s = 'string literal'
    s = ''' string literal with
            (indented)multiple lines'''
    s = """ string literal with
    (no indentation)multiple lines"""
    s = r"C:\number\nums"

    # formatting
    "{0} placeholder {1}".format(var1, var2)
    "{name} is {age} years old".format(age = 10, name = "Jane")
    "position tag: {0} and {1}, named tag: {name}".format(2, 5, name = "Jane")
    "{:<{len}} align left with width {len}".format("string", len=10)
    "{:>{len}} align right with width {len}".format("string", len=10)
    "{:>{len}b} binary align right with width {len}".format(32, len=10)
    "{:>{len}o} binary align right with width {len}".format(32, len=10)
    "{:>{len}x} hex align right with width {len}".format(32, len=10)

    # indexing/slicing
    len(s)
    s[index]
    s[start:end:step]
    s[:end]
    s[start:]
    s[-1]

    # string manipulation
    s = "s1" + " " + "s2"
    s = "repeate"*2

    # string manipulation
    str.find(substr)
    str.startwith(substr, start, end)
    str.endwith(substr, start, end)

    str.strip(charColl)
    str.lstrip(charColl)
    str.rstrip(charColl)

    str.replace(" ","")
    str.split(splitCharCol)
    str.join(jointChar)

    str.lower()
    str.upper()

    char in str
    str.index(char)
    str.count(char)
  ```

---

#### List

- Introduction

  - mutable type
  - array data structure

- Practices

  ```python
    # list literal
    li = [1, 2, 4, "lsit"]

    # list comprehension
    li = [x**2 for x in range(10)]
    li = [x**2 if x > 5 else x**4 for x in range(10)]

    # list constructor explicit/implicit
    li = list(range(1,10,2))

    # methods
    li.insert(index, item)
    li.append(item)
    del li[index]
    li.pop(index)
    li.remove(value)

    li.index(value)
    li.count(value)

    li[start:end:step]
    li[start:]
    li[:end]

    li.sort()
    li.reverse()
    li.extend(li2)

    # external functions/operators
    newLi = li + li2
    newLi = li * 2
    newLi = sorted(li)

  ```

---

#### Tuple

- Introduction

  - immutable type
  - array data structure

- Practices

  ```python
    # tuple literal
    t = (1, 2, 4, "lsit")

    # tuple constructor explicit/implicit
    t = tuple(range(1,10,2))

    # methods
    #indexing/slicing
    t[index]
    t[start:end:step]
    t[-1]

    # element operation
    elem in t

    # external functions/operators
    newT = t * 2
    newT = t1 + t2
  ```

---

#### Set

- Introduction

- mutable type
- Disjoint set data structure

- Practices

  ```python
    # set literal
    s = set([1, 2, 4, "lsit"])

    # set comprehension
    s = {x**2 for x in range(10)}
    s = {x**2 if x > 5 else x**4 for x in range(10)}

    # set constructor explicit/implicit
    s = set(range(1,10,2))

    # methods
    s1.add(elem)
    elem = s1.pop()
    s1.remove(elem)

    s1.clear()

    newS = s1.intersection(s2)
    newS = s1.difference(s2)
    newS = s1.union(s2)

    elem in s1

    # external functions/operators
  ```

---

#### Dictionary

- Introduction

  - mutable type
  - key-value data structure

- Practices

  ```python
    # dict literal
    d = {'key' : 3, "lsit": [1,2,3]}

    # dictionary comprehension
    d = {x: x**2 for x in range(10)}
    d = {x: x**2 if x > 5 else x**4 for x in range(10)}

    # dict constructor explicit/implicit
    d = dict()

    # methods
    d.keys()
    d.values()
    d.items()
  ```

---

### Operators

- Grouping Operators

  - `(group)`

- Indexing/Accessing Operator

  - `sequence[index]`
  - `collect[member]`

- del operator

  - `del arr[i]`

- in operator

  - `elem in Collection`

- Bitwise Operators

  - `&, |, ^,`
  - `<<, >>`

- Tenary Operators

  - `true_expression if condition_express else false_expression`

- Arithmetic Operators

  - `+, -`
  - `*, /, //, %, **`

- Comparison Operators

  - `==, !=`
  - `>, >=, <, <=`

- Condition/Logical Operators

  - `not, and, or`

- Comma Operator

  - `a, b, c`

### FP and Functions

#### Functions

- function declarition
- function docstring
  - `func.__doc__`
- arguments
  - default args
  - keyword args
- lambda function

- practices

  ```python
  # function declarition
  def funcname(arg, *args, **kwargs):
    """function description docstring """
    func_body
    return expression

  #lambda function
  lambda comma_express_argslist: function_body_expression
  named = lambda comma_express_argslist: function_body_expression

  ```

#### Built-in Functions

- Type and type conversion
  - `bool(v)`
  - `int(sn, base=10), bin(i), oct(i), hex(i), float(sn), complex(n1, n2)`
  - `chr(code), ord(char), ascii(s), bytearray(), bytes(), str()`
  - `list(iter), tuple(iter), dict(iter), enumerate(iter), set(iter), frozenset(iter)`
  - `type()`
- Object
  - `isinstance(), issubclass(),`
  - `repr(o), hash(o), id(o), callable(o),`
  - `@classmethod, @staticmethod, super(), object()`
  - `delattr(), hasattr(), getattr(), setattr(), property()`
- Math Calc
  - `abs(x), round(), floor(), ceil()`
  - `max(), min(), divmod(n1, n2), power(x, y)`
  - `len(x)`
- I/O
  - `format(), input(), print()`
  - `open(file)`
- Functors
  - `all(iter), any(iter)`
  - `range(start, end, step), slice(start, end, step)`
  - `max(iter), min(iter),sorted(iter), sum(iter), zip(*iters)`
  - `iter(), next(), reversed(iter)`
  - `map(f, iter)`
  - `filter(f, iter)`
- System and Modules
  - `dir(), vars(), locals(), globals() __import__()`
  - `complie(), memoryview()`
  - `exec()`
  - `eval()`
- [Refs](https://docs.python.org/3/library/functions.html)

#### Function Programming

- Practices

  ```python
  # functors
  map.(func, iterable)
  zip.(list1, iterable)
  ```

### OOP and Classes

#### Classes

- Object declarition
- Constructor
- Attributes
  - default args
- Methods
- OOP

  - Inheritance
    - Inheritance Chain
  - Encapsulation
  - Polymophism
    - Method Overwriten
  - Isolation

- practices

  ```python
  # Object declarition
  class Shape(object):
    def __init__(self):
      pass

    def calcArea(self):
      pass

  class Circle(Shape):
    def __init__(self, r):
      Shape.__init__(self)
      self.radius = r

    def calcCircumference(self):
      return 2*math.pi*self.radius

    def calcDiameter(self):
      return 2*self.radius

    def calcArea(self):
      return math.pi*self.radius**2

  # Instantiation
  c = Circle()

  ```

---

#### Built-in Classess

##### Exception

- Error Tyeps

  - SyntaxError
  - NameError
  - ValueError
  - TypeError
  - ZeroDivisionError
  - IndexError
  - IOError
  - OSError
  - AttributeError
  - AssertionError
  - UnboundLocalError

---

### Expressions

### Statements

- Comments

  - shebang
    - `#!/usr/bin/env python3`
    - `# -*- coding: utf_8 -*-`
  - inline comment
    - `# inline comment`
  - block comment
    - `''' block comment '''`
    - `""" block comment """`

- Importing/Exporting

  - `import MODULE`

- Pass statement

  - `class MyEmptyClass:`
  - `pass`

- Global variable reference statement

  - `global variable_list`

- docstring statement

  - docstring is a string literal that occurs as the first statement in a module, function, class, or method definition.
  - docstring becomes the `__doc__` special attribute of that object

### Flow Control

#### Condition

- if
- if-else
- if-elif-else

```python
  # if
  if condition_expression :
    true_blocks

  # if-else
  if condition_expression :
    true_blocks
  else :
    false_blocks

  # if-elif-else
  if condition_expression1 :
    condition1_true_blocks
  elif condition_expression2:
    condition1_false
    condition2_true_blocks
  else :
    all_above_condition_expression
    false_block
```

#### Branching

#### Loop

- for-in
- for-in-else
- while
- while-else
- break
- continue

```python
  # for-in
  for i in  range(100) :
    loop_with_indexing_block

  for char in  STR :
    loop_with_char_block

  for iter in  ITERABLE :
    loop_with_iter_block

  for iter in  ITERABLE :
    loop_with_iter_block
  else:
    loop_over_iter_block
    no_run_if_break

  while condition_expression :
    loop_block
    update_condition
    or_if_break_condition

  while condition_expression :
    loop_block
    update_condition
    or_break_condition
  else:
    loop_over_block
    no_run_if_break
```

---

#### Exception/Error Handling

- try-except
- try-raise-except
- try-except-else-finally

```python
  # try-except
  try :
    try_block_with
    nomal_process_logic
  except Exception as e:
    exception_handle_block

  # try-raise-except
  try :
    try_block_with
    nomal_process_logic
    throw_if_error
    raise Exception(msg)
  except Exception as e:
    exception_handle_block
  else:
    no_matched_exception_block
  finally:
    clean_up_block
```

---

---

## Builtin Moudles

### Importing/Exporting

- import module from path: `.; PYTHONPATH`
- import statment excution module codes only once
- import statements
  - `import MODULE`
  - `from MODULE import NAMES`
  - `from MODULE import *`
- exclude codes for import excution
  - `if __name__ == "__main__":`
  - `excluded_module_block`
- `dir(MODULE)`

### sys

- Practices

  ```python
  import sys
  sys.argv
  ```

### math

### re

- Introduction

  - regular expression
  - pattern
  - match object
  - [re Ref](https://docs.python.org/3/library/re.html)

- Practices

  ```python
  import re
  # python regexp pattern
  """
  Metacharacters:
    .         a single character, exclude newlines if DOTALL 're.S' flag is not set.
    \         escaping character
    \0        a null char
    \t        a tab char
    \v        a vertical tab
    \r        a carriage return
    \n        a newline char
    \uXXXX    a unicode char

  Boundaries
    ^     begin of text, if MULTILINE 're.M' flag is not set, else, begin of each line.
    \A    begin on text, no matter re.M flag
    $     end of text, if MULTILINE 're.M' flag is not set, else end of each line.
    \Z    end of text, no matter re.M flag
    \b    word boundary
    \B    not word boundary

  Char Classes
    \s       a whitespace, like [ \t\r\n\f\v]
    \S       a non-whitespace character, like [^ \t\r\n\f\v]
    \d       a digit, like [0-9]
    \D       a non-digit, like [^0-9]
    \w       a world character, like [a-zA-Z0-9_]
    \W       a non-world character, like [^a-zA-Z0-9_]

  Bracket and Ranges
    [...]    Any one character between the brackets, Brackets escapes special chars implicitly, but exclude '-, ^, \, ], '.
    [^...]   Any one character not between the brackets.
    [0-9]    one digit char
    [a-z]    one lowercase char
    [A-Z]    one uppercase char
    [a-Z]    one char case-insensitive
    [^\s]    matches any non-empty char

  Quantifier, Greedniess and Laziness
    p+      p repeated 1 or more, greedniess
    p+?     p repeated 1 or more, laziness
    p*      p repeated 0 or more, greedniess
    p*?     p repeated 0 or more, laziness
    .*      matches any sequence of char, except newline if flag 's' is not set.
    p?      p repeated atmost 1, greedniess
    p??     p repeated atmost 1, laziness
    p{N}    p repeated N, greedniess
    p{N}?   p repeated N, laziness
    p{L,}   p repeated more then L, greedniess
    p{L,U}  p repeated between [L,U], greedniess
    p{L,U}?  p repeated between [L,U], laziness

  Alternation
    p1|p2   p1 or p2 pattern

  Grouping
    (p)               group sub patterns
    (?:...)           group without reference later
    (:P<name>)        named group
    (?P=name)         reference a named group
    (?#...)           comments, ingored

  Assertion Positive/Negative lookahead/lookbehind
    (?=...)           positive lookahead
        'Isaac (?=Asimov)'  matches 'Isaac ' only if it’s followed by 'Asimov'
    (?!...)           negative lookahead
        'Isaac (?!Asimov)'  matches 'Isaac ' only if it’s not followed by 'Asimov'.
    (?<=...)          postive lookbehind
        '(?<=abc)def'       matches 'def' only if it's preceded by 'abc'
    (?<!...)          negative lookbehind
        '(?<=abc)def'       matches 'def' only if it's not preceded by 'abc'
    (?(id/name)yes-pattern|no-pattern)
        given id or name exists, try yes-pattern, if not, try no-pattern

  Flags
    re.I
    re.M
    re.S
    re.L
    re.X
    re.A

  """

  # re mothod
  matchObj = re.match(pattern, text, flags)
  matchObj = re.search(pattern, text, flags)
  matchResult = re.findall(pattern, text, flags)
  substitutestr = re.sub(pattern, text, flags)

  # match object
  mo.group()
  mo.groups()
  ```

---

### io

- Introduction

  - text I/O
  - binary I/O
  - raw I/O
  - [io Ref](https://docs.python.org/3/library/io.html#module-io)

- Practices

  ```python
  import io
  # open mode
  """
  'r'     open for reading (default)
  'w'     open for writing, truncating the file first
  'x'     open for exclusive creation, failing if the file already exists
  'a'     open for writing, appending to the end of the file if it exists
  'b'     binary mode
  't'     text mode (default)
  '+'     open a disk file for updating (reading and writing)
  """

  # text I/O
  f = open("myfile.txt", "r", encoding="utf-8")
  f = io.StringIO("some initial text data")
  f.read()
  f.read(cursorLocation)
  f.readline()
  f.readlines()
  f.seek(cursorLocation)
  cursorLocation = f.tell()
  f.write(string)
  f.writelines(text)
  f.append(string)
  f.close()

  #binary I/O
  f = open("myfile.jpg", "rb")
  f = io.BytesIO(b"some initial binary data: \x00\x01")

  #raw I/O
  f = open("myfile.jpg", "rb", buffering=0)

  ```

---

### ctypes

- [documentation](https://docs.python.org/3/library/ctypes.html)

---

---

## Design Patterns

---

---

## Best Practice

### Install and Initialize

#### Set clear() CMD for CLI

- `import os; clear = lambda: os.system('clear'); clear();`

### Management

### Security

---

---

## Misc

### Learning Resources

- [Python Website](https://www.python.org/)
- [Python Docs](https://docs.python.org/3.7/)
- [Python Language Ref](https://docs.python.org/3/reference/index.html)
- [Python Standard Libs](https://docs.python.org/3/library/index.html)
