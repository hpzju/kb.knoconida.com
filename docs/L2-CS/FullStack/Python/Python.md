---
id: Python
title: Python a programming language.
sidebar_label: Python
---

## Overview

### Features

### Applicable Scenarios

---

---

## Python Language Basic

<!-- ### Building Blocks -->

### Variables and Scope

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

- Categories

  - `int`
  - `float`
  - `bool`
  - `str`

---

#### Boolean

- Introduction

  - immutable type
  - refer elements by value
  - type conversion: `bool(var)`

- Practices

  ```python
    # boolean literal
    b = True
    b = False
  ```

---

#### List

- Introduction

  - dynamic array implementation
  - mutable type
  - refer elements by reference

- Practices

  ```python
    # get size by bytes
    import sys
    sys.getsizeof(arr)
  ```

---

#### String

- Introduction

  - str

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
    # indexing
    len(s)
    s[index]
    s[start:end]
    s[:end]
    s[start:]
    s[-1]

    # string manipulation
    s = "s1" + " " + "s2"
    s = "repeate"*2

    # string manipulation
    str.replace(" ","")
    str.lower()
  ```

---

#### Tuple

#### Set

#### Dictionary

### Operators

- Grouping Operators

  - `(group)`

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

- Condition Operators

  - `not, and, or`

- Comma Operator

  - `a, b, c`

### FP and Functions

#### Built-in Functions

- Type and type conversion
  - `bool(v)`
  - `int(sn, base=10), bin(i), oct(i), hex(i), float(sn), complex(n1, n2)`
  - `chr(code), ord(char), ascii(s), bytearray(), bytes(), str()`
  - `list(iter), tuple(iter), dict(iter), enumerate(iter), set(iter), frozenset(iter)`
  - `type()`
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
  # get size by bytes
  map.(func, list)
  zip.(list1, list2)
  ```

### OOP and Classes

### Expressions

### Statements

- Comments

  - inline comment
    - `# inline comment`
  - block comment
    - `''' block comment '''`

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

- for
- while
- break
- continue

```python
  # if
  if condition_expression :
    true_blocks

```

---

---

## Builtin Moudles

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
