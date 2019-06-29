---
id: Python
title: Python a programming language.
sidebar_label: Python
---

## Overview

- Bytecode compiled interpreted language
  - `.py` to `.pyc`
- Dynamic Typing
- OOP
- FP

### Features

- Open source
- Platform independent
- Modular
- Flexible

### Applicable Scenarios

- Web Dev
- Game Dev
- Data Science
- Sys DevOps

### Python Interpreter Implementation

- Python
  - PyPy
- C
  - CPython, the default interpreter
- Java
  - Jython
- .NET
  - IronPython

---

---

## Python Language Basic

<!-- ### Building Blocks -->

### Variables and Namespace

- variables identifier
  - `/[a-zA-Z_]+[\\w]\*/`
- namespace
  - global
  - local
    - `UnboundLocalError`
      - within local scope, try to assign value to a name in global namespace
    - global variable reference statement
      - `global variable_list`
  - nonlocal
    - innner funnction
  - list namespace variables
    - `dir(NAME_SPACE)`
  - namespace created within:
    - function
    - class
    - instance
    - module
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
  - `int, float, str, list, set, dict, NoneType, type, function, generator`

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
    - `int, float, complex`
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
    s = "C:\\number\\nums"
    s = b"bytes string"

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
    index = str.find(substr)
    str.startwith(substr, start, end)
    str.endwith(substr, start, end)

    str.strip(charColl)
    str.lstrip(charColl)
    str.rstrip(charColl)
    str.center(width)
    str.ljust()
    str.rjust90

    str.replace(" ","")
    str.split(splitCharCol)
    str.join(jointChar)

    str.lower()
    str.upper()
    str.title()
    str.swapcase()

    str.isalpha()

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
    li = []

    # list comprehension
    li = [x**2 for x in range(10)]
    li = [x**2 for x in range(10) if x%2 == 0]
    li = [x**2 if x > 5 else x**4 for x in range(10)]

    # list constructor explicit/implicit
    li = list(range(1,10,2))
    li = list("string char list")

    # element manipulation methods
    li.insert(index, value)
    li.append(value)
    li.pop(index)
    li.remove(value)
    li.count(value)
    li.index(value)

    # __getitem__()
    # __setitem__()
    # __slice__()
    #__del__()
    li[index]
    li[-1]
    li[start:end:step]
    li[start:]
    li[:end]
    li[start::step]
    del li[index]
    del li[start:end:step]

    # list manipulation method
    li.sort()
    li.reverse()
    li.extend(iterable)
    li.clear()

    # external functions/operators
    newLi = li + li2
    newLi = li * 2
    newLi = sorted(li)
    for item in li:
      do_staff_with_item

    # destruction/unpacking
    a, b, c = [1, 3, 4]
    a, *rest = [1, 3, 4]

  ```

---

#### Tuple

- Introduction

  - immutable type
  - array data structure

- Practices

  ```python
    # tuple literal
    t = (1, 2, 4, "lsit", )
    t = (3, )
    t = ()

    # tuple constructor explicit/implicit
    t = tuple(range(1,10,2))
    t = tuple([1,4,9,"er"])
    t = tuple("string char tuple")

    # tuple methods
    t.index(value)

    # __getitem__()
    # __slice__()
    t[index]
    t[-1]
    t[start:end:step]
    t[start:]
    t[:end]
    t[start::step]

    # element operation
    elem in t

    # external functions/operators
    newT = t * 2
    newT = t1 + t2
    for item in t:
      do_staff_with_item

    # destruction/unpacking
    a, b, c = (1, 3, 4)
    a, *rest = (1, 3, 4)

  ```

---

#### Set/FrozenSet

- Introduction

  - set is mutable type
  - frozenset is immutable type
  - Disjoint set data structure
  - no order

- Practices

  ```python
    # set literal
    s = {1,2,3,4,"set",}

    # set comprehension
    s = {x**2 for x in range(10)}
    s = {x**2 if x > 5 else x**4 for x in range(10)}

    # set constructor explicit/implicit
    s = set()
    s = set([1, 2, 4, "lsit"])
    s = set(range(1,10,2))

    # methods
    s1.add(elem)
    elem = s1.pop()
    s1.remove(elem)

    # set operation
    s1.clear()
    newS = s1.union(s2)
    newS = s1 | s2
    newS = s1.intersection(s2)
    newS = s1 & s2
    newS = s1.difference(s2)
    newS = s1 - s2
    newS = s1.symmetric_difference(s2)
    newS = s1 ^ s2
    newS = s1.union(s2) - s1.intersection(s2)

    elem in s1
    elem not in s1

    # external functions/operators
    len(s)
    max(s)
    min(s)

    for elem in S:
      do_stuff

  ```

---

#### Dictionary

- Introduction

  - mutable type
  - RuntimeError if change dict object during iteration
  - key-value data structure
    - key must be immutable type
  - custome key missing behavior
    - `__missing__()`
    - memoization
      - transform a dict subclass into a function
  - dictionary comprehension

- Practices

```python
  # dict literal
  d = {'key' : 3, "lsit": [1,2,3]}

  # dictionary comprehension
  d = {x: x**2 for x in range(10)}
  d = {x: x**2 if x > 5 else x**4 for x in range(10)}

  # dict constructor explicit/implicit
  d = dict()
  d = dict(key1 = value1, key2 = "value2") # key1 will be "key1" string key
  d = dict([("key1", 1),("key2", 2),(3, "three")])

  # dict build method
  d = dict.fromkeys(key_iterable, value_iterable)

  # dict manipulation methods
  d.update(d1)
  d = d1.copy() # shallow copy, key copied, but value referenced.
  d.clear()

  # key-value manipulation methods
  keysObj = d.keys()
  valueObj = d.values()
  keyvalueObj = d.items()
  keyvalue_tuple = d.popitem()
  value = d[key]
  value = d.get(key, default_value)
  value = d.setdefault(key, default_value)
  value = d.pop(key, default_value)

  # external functions/operators
  len(d)

  if key in d:
    do_stuff

  for key in d:
    do_stuff

  for k,v in d.items:
    do_stuff
```

---

### Operators

- Grouping Operators

  - `(group)`

- `__getitem__` Indexing/Accessing Operator

  - `sequence[index]`
  - `collect[member]`

- string/list concatenation and repeatition operator

  - `s + l2`
  - `s * 3`

- del operator

  - `del arr[i]`

- in operator

  - `elem in Collection`

- Bitwise Operators

  - `&, |, ^, ~`
  - `<<, >>`

- Tenary Operators

  - `true_expression if condition_express else false_expression`

- Arithmetic Operators

  - `+, -`
  - `*, /, //, %, **`

- Comparison Operators

  - `==, !=`
  - `>, >=, <, <=`

- Identity Operators

  - `is`
  - `is not`

- Condition/Logical Operators

  - `not, and, or`

- Argument Destructure Operators

  - `func(*args)`
  - `func(**kwargs)`

- Comma Operator

  - `a, b, c`

### FP and Functions

#### Functions

- Introduction

  - function decorator
  - function declaration
    - function docstring
      - `func.__doc__`
    - function anotation
      - `func.__anotations__`
    - arguments
      - `args`
      - `args = default_value`
      - `*args`
      - `**kwargs`
      - default args
      - keyword args
      - argurments destructing
        - `func(*sequences)`
        - `func(**dicts)`
    - return value
      - return `None` by default
  - inner function
  - lambda function

- Practices

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

- Functors

  - Decorator
    - wrap a function into decorator, simplify interface design and lower the exposure surface.
    - `@decorator`
  - Generator
    - generate an iterable like object
    - `(expr for iter in interable)`
  - Iterator
    - traverse a collection with simple iterator protocal.
    - `iter.next()`
  - Filter
    - `filter()`
  - Mapper
    - `map()`
  - Reducer
    - `functools.reduce()`
  - Invoker/Caller/Applier
    - `apply()`

- FP Patterns

  - lambda
  - closure
  - recursion
  - curryinng

- Practices

  ```python
  import reduce from functools
  import * from itertools

  # functors
  map(func, iterable)
  filter(func, iterable)
  reduce(func, iterable, initializer)
  zip(iterable1, iterable2)

  #iterator
  iterator = chain(iterable1, iterable2)
  iterator = count(start, step)
  iterator = cycle(iterable)
  iterator = ifilter(func, iterable)
  iterator = imap(func, iterable)
  iterator = islice(iterable, start, stop, step)
  iterable = izip(iterable1, iterable2, ...iterables)

  # generator comprehension
  gen = (i**4 for i in range(100))
  next(gen)
  ```

- FP principles

  - memoization

    ```python
    # dict subclass functionization
    class memoiFunc(dict):
      def __init__(func):
        self.__caller = func

      def __missing__(self, key):
        return self.__caller(key)

    d = memoiFunc(print)
    d[1,2,3,4]
    ```

### OOP and Classes

#### Classes

- Class and Object

  - Class/Object Type declaration
  - Constructor
  - Attributes
    - attributes loopup
      - instance -> class -> parents classes
    - get attributes of class
      - `dir(Obj)`
  - Methods
    - instance method
    - class method
      - `@classmethod` decorator
      - with implicity `cls` argument
      - can update class/object status
    - static method
      - `@staticmethod` decorator
      - can not update class/object status
      - pure utility function
    - setter/getter/deleter
      - `@property`
  - Object/Instance
  - Operator Override
    - `+ : __add__()`
    - `print(obj) : __repr__()`
    - `in : __contains__()`
    - `== : __eq__()`
    - `!= : __ne__()`
    - `[index] : __getitem__(index)`
    - `[start:end]: __getslice__(start, end)`
    - `(args): __call__(args)`
    - `len(obj) : __len__()`

- OOP

  - Inheritance
    - Inheritance Chain
      - linearization of C
    - Multiple Inheritance
      - Method Resolution Order
        - `L[C(B1 ... BN)] = C + merge(L[B1] ... L[BN], B1 ... BN)`
        - `L[object] = object`
        - took the first non-tailed class append to C's linearization list
    - inheritance principles
      - inherit
      - override/overload
      - extend
      - provide
        - implement abstract method defined by parents class
  - Encapsulation
  - Polymophism
    - Method Overwriten
  - Isolation
  - Abstract Base classes
    - abc module
      - decorators
        - `@abc.abstractclassmethod`
        - `@abc.abstractstaticmethod`
        - `@abc.abstractproperty`
        - `@abc.abstractmethod`

- Python Object Model

  - Object in Python
    - Identity
    - Type
    - Value
  - Memory Reference Model
    - object assigned by reference
    - reference count reduce to 0, then object will be destroied by GC.
    - reference count increment
      - create new object and assigned
      - assigned to other identifier
      - passed to a function as argument
      - referenced by container object as an element.
    - reference count decrement
      - local reference out of scope
      - `del` operator explicitly destroy alias
      - alias reassigned to different object
      - object removed from container by container's operation
      - container was destroied
    - pass by reference
      - assignment is alias, no copy
        - `objx = objy # objx is objy; objx == objy`
      - shallow copy increase reference count for elements
        - `objx = shallow_copy(objy) # objx is not objy; objx == objy`
      - deep copy create new object for each level of objects
        - `objx = deep_copy(objy) # objx is not objy; objx == objy`
  - Categories
    - stroage model
      - literal object
        - numbers, str
      - container object
        - list, tuple, dict, set
    - update model
      - mutable
      - immutable
    - access model
      - direct access
      - sequence
      - hashing

- Practices

  ```python
  # Object declarition
  class Shape(object):
    def __init__(self):
      pass

    @classmethod
    def BuildShape(cls, name):
      return cls(name)

    @staticmethod
    def PI():
      return math.pi

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

  #ABC
  from abc import ABC, ABCMeta

  class MyABC(ABC):
      pass

  class MyABC(metaclass=ABCMeta):
    pass

  ```

---

#### Built-in Classess

##### Exception

- Exception Hierarchy

  - Customer Exception
    - `raise MyException` statement will invoke constructor, then `MyException.__str__()`
  - BaseException -> Exception
  - [Ref](https://docs.python.org/3/library/exceptions.html)

- Exception
  - SyntaxError
  - NameError
  - ValueError
  - TypeError
  - ArithmeticError
    - ZeroDivisionError
    - OverflowError
    - FloatPointError
  - IndexError
  - KeyError
  - IOError
  - OSError
  - AttributeError
  - AssertionError
  - UnboundLocalError
  - StopIteration

---

##### File IO

- Introduction

  - file is a contiguous sequence of bytes
  - standard files
    - stdin
      - `input()`
      - `sys.stdin`
    - stdout
      - `print()`
      - `sys.stdout()`
    - stderr
      - `sys.stderr`
  - file/IO objects
    - `fo = open("path/to/file", "MODE")`
    - check built-in [io module](#io)

- Practices

  ```python
  # get file/io object
  fo = open("./data/test.txt", "r+w")
  fo.read()
  fo.readline()
  fo.readlines()
  fo.write(string)
  fo.writelines(string_list)
  fo.seek()
  fo.tell()
  fo.flush()
  fo.close()

  with open("file.txt", "+") as fo:
    for line in fo:
      print(line, end="")
  print("done")

  ```

---

### Expressions

- assignment expression

  - `a = 1`
  - `a = b = 1`
  - `a = 1, b = 2`
  - `a, b, c = 1, 2, 3`
  - `a, b, c = 1, 2, 3`
  - list, tuple destructing
    - `a, b = [1, 3]`
  - `+=, -=...`

- generator expression

  - `(expr for iter in interable)`

- yield expression
  - yield
  - yield
  - yield from

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

- decorator statement
- `@decorator`

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

#### Context Blocking

- with-as

```python
  # file open and close
  with open("file.txt", "+") as fh:
    for line in fh:
      print(line)
  print("done")

  # class __enter__(), __exit__()
  class MyClass():
    def __init__(self):
      pass

    def __enter__(self):
      print("enter 'with' block.")
      print("do some init work.")

    def __exit__(self, type, value, traceback):
      print("exit 'with' block.")
      print("do some cleanup work.")

    def showinfo()
      print("hello MyClass.")

  with MyClass() as myclass:
    myclass.showinfo()
  print("done")

```

---

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

## Builtin Moudles and Packages

### Importing/Exporting

- import module from path: `. ; PYTHONPATH`
- import statment excution module codes only once
- import statements
  - `import MODULE`
  - `import MODULE as NEW_MODUEL_NAME`
  - `from MODULE import NAMES`
  - `from MODULE import NAME as NEW_NAME`
  - `from MODULE import *`
- exclude codes for import excution
  - `if __name__ == "__main__":`
  - `excluded_module_block`
- show module namespace
  - `dir(MODULE)`
- program entry point
  - `__name__ == "__main__"`

---

### Package

- namespace packages

  - using `__init__.py` in package root directory
  - export minimal interface in `__init__.py` to reduce exposure surface
  - using `__main__.py` as programme entry point

---

### Math

- Moduels

  - numbers
  - decimal
    - accounting applications
  - fractions
    - rational number arithmetic
  - math
    - real/rational/integer number arithmetic
  - cmath
    - complex number arithmetic
  - random
  - statistics

- Practices

  ```python
  import numbers
  """
    numbers module defines numeric abstract base classes.
    numbers.Complex, numbers.Real, numbers.Rational, numbers.Integral
    all abstract classes can't be instantiated.
  """

  from decimal import *
  """
    decimal module provides precisely rounded float numbers.
    and arithmetic operations carries the precision.
  """
  # Context Object
  getcontext()
  setcontext()

  # Decimal Object
  d = Decimal(value="0", context=None)

  from fractions import Fraction
  """
    fractions module provides rational number arithmetic.
  """
  # Fraction Object
  r = Fraction(16, -10)
  r.numerator
  r.denominator

  import math
  math.ceil()
  math.floor()
  math.pi
  math.e
  math.nan
  math.inf

  ```

- Ref
  - [General Decimal Arithmetic Specification](http://speleotrove.com/decimal/decarith.html)

---

### Data Processing and Persistance

- pickle
  - `pickle.dump(data, filehandler)`
  - `data = pickle.load(filehandler)`
    - load meaning full object, the class of object must defined before load().
- json
  - `json.dump(data, filehandler, indent=2, sepeators=(',', ':'))`
  - `data = json.load(filehandler)`
    - load meaning full object, the class of object must defined before load().
- yaml
  - `pip install pyyaml`
  - `yaml.dump(data, filehander)`
  - `data = yaml.load(filehandler)`
    - load meaning full object, the class of object must defined before load().

---

### Python Language Services

- keyword
  - `keyword.kwlist`
- pdb
  - `pdb.set_trace()`
    - `n for next, s for step in`
- logging
  - `logging.basicConfig(level=logging.INFO)`
  - `logging.debug(DEBUG_MSG)`
  - `logging.info(INFO_MSG)`
  - `logging.warning(WARNING_MSG)`
  - [Ref](https://docs.python.org/3/library/logging.html)
- timeit
  - `timeit.timeit(STATEMENT, SETUP_CODE, number=REPEAT_TIMES)`
- pytest
  - `pip install pytest`
  - testing script
    - `touch test_MYSCRIPT.py`
    - editing test cases for `MYSCRIPT`
  - testing cases
    - `import MYSCRIPT`
    - `def test_MYSCRITP_FUNC1():`
    - `assert assert_statements`
  - run test
    - in CLI, run `py.test`

---

### FP

- itertools
- functools
- operator

---

### OOP

- abc

---

### Algorithms and Data Structure

- bisect

  - `index = bisect.bisect_left(arr, searchvalue, start, end)`
  - `index = bisect.bisect_right(arr, searchvalue, start, end)`
  - `bisect.insort_left(arr, insertvalue, start, end)`
  - `bisect.insort_right(arr, insertvalue, start, end)`

- collections

  - `ChainMap`
  - `namedtuple`
  - `Deque`

- heapq
  - `heapify(list)`
  - `heappush(list, value)`
  - `value = heappop()`

---

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

### Misc Modules

- Host/OS/System

  - OS
  - FS
  - Concurent Computing
    - concurrent
    - threading
    - subprocess
    - multiprocessing
    - contextlib
      - `@contextlib.contextmanager`
  - CLI
    - argparse
    - cmd

- IOs

  - asyncio
    - `@asyncio.coroutine`

- Documentation

  - doctest

---

---

## Design Patterns

### Metaprogramming

---

### Metaclass

---

---

## Best Practice

### Install and Initialize

#### Set clear() CMD for CLI

- `import os; clear = lambda: os.system('clear'); clear();`

### Testing

- Doctest

---

---

## Misc

### Learning Resources

- [Python Website](https://www.python.org/)
- [Python Docs](https://docs.python.org/3.7/)
- [Python Language Ref](https://docs.python.org/3/reference/index.html)
- [Python Standard Libs](https://docs.python.org/3/library/index.html)
