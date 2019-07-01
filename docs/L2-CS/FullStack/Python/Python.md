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
- PEP20
  - beautiful is better than ugly
  - explicit is better than implicit
  - simple is better than complex
  - complex is better than complicated
  - readability counts

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
  - Linux SysAdmin

### Python Interpreter Implementation

- Python
  - PyPy
- C
  - CPython, the default interpreter
- Java
  - Jython
- .NET
  - IronPython

### Data Model

### Execution Model

---

---

## Python Language Basic

<!-- ### Building Blocks -->

### Variables, Namespace and Scope

- Variables Identifier

  - `/[a-zA-Z_][a-zA-Z0-9_]*/`
  - keywords
    - `import keyword; print(keyword.kwlist)`

- Variable Declaration

  - Python has no varaible decalaration
  - Variables were created when new identifier was assigned
  - `id()` identifies variables
  - `A is B` tests two varaibles' equality of identity.

- Namespace

  - a collection of names, maintains identifier and it's value mapping relation.
  - list namespace variables
    - `dir(NAME_SPACE)`
  - namespace created within:
    - built-in namespace
    - moudle global namespace
    - function local namespace
    - class local namespace
      - `Class.__dict__`
    - instance local namespace

- Scope

  - an execution context, determins which namespaces and identifiers are available in current context.
  - LEGB rule
    - names find by local -> enclosing -> Global -> Built-in order.
  - built-in scope
  - global scope
    - `globals()`
  - nonlocal/enclosing scope
    - innner funnction
      - `nonlocal variable_list`
  - local scope
    - `locals()`
    - `UnboundLocalError`
      - within local scope, try to assign value to a name in global namespace
    - global variable reference statement
      - `global variable_list`
  - list current scope names
    - `dir()`

---

### Types

#### Types Introduction

- Reference

  - refer by reference

- Mutability

  - mutable
  - imutable

- type() function

  - return Type Object
    - `NoneType`
    - `bool`
    - `int, float, complex, decimal.Decimal, fractions.Fraction`
    - `str, bytes, bytearray`
    - `list, tuple`
    - `set, frozenset`
    - `dict`
    - `function, generator, range`
    - `type`
    - `__main__.MyObject`
    - `module`

- type conversion/coercion

  - explicit type constructor conversion
  - no implicit type coercion, except boolean expression

- type hint

  - `def addnum(a: int, b: int) -> int:`

- duck type
  - type was determined at runtime.

---

#### None

- `None`
- `type(None)` returns `NoneType`

#### Boolean

- Introduction

  - immutable type
  - refer elements by value
    - reference by counter implicitly
  - Falsey values
    - `0, 0.0, 0j, None, "", [], (), {}`
  - logical operators
    - `not, and, or`

- Practices

  ```python
    """ boolean literal """
    b = True
    b = False

    """ boolean explicit/implicit constructor """
    b = bool(value)
  ```

---

#### Numbers

- Introduction

  - immutable type
  - refer by value
    - very small interger reference by counter
  - categories
    - `int, float, complex, fractions.Fraction, decimal.Decima`
  - arithmetic operators
    - `+, -, *, /, //, %, **`
  - comparison operators
    - `>, >=, <, <=, ==, !=`
  - functions
    - `math, cmath module functions`

- Practices

  ```python
    """int"""
    # int literal
    i = 1

    # int explicit/implicit constructor constructor
    i = int(val)

    """float"""
    # float literal
    f = 1.0

    # float explicit/implicit constructor constructor
    f = float(val)

    """complex"""
    # complex literal
    c = 1+0J
    c = 5J

    # complex explicit/implicit constructor constructor
    c = complex(val)
    c = complex('1+2J') # no space required
    c = complex(re, im)

    """Fraction"""
    import * from fractions
    # Fraction literal

    # Fraction explicit/implicit constructor constructor
    """
      class fractions.Fraction(numerator=0, denominator=1)
      class fractions.Fraction(other_fraction)
      class fractions.Fraction(float)
      class fractions.Fraction(decimal)
      class fractions.Fraction(string)
    """

    r = Fraction()
    r = Fraction(16, 3)
    r = Fraction(2.25)
    r = Fraction(Decimal('1.1'))
    r = Fraction('3/7')

    # Fraction Class methods/properties
    r.numerator
    r.denominator

    """Decima"""
    import * from decimal
    getcontext().prec = 12

    # Decima literal

    # Decima explicit/implicit constructor constructor
    """
      class decimal.Decimal(value="0", context=None)
      value can be an integer, string, tuple, float, or another Decimal object
      tuple: a sign (0 for positive or 1 for negative), a tuple of digits, and an integer exponent
    """
    d = Decima(3)
    d = Decima('3.14')
    d = Decima(3.14)
    d = Decima((0, (3, 1, 4), -2))
    d = Decima(Decimal('3.14'))

  ```

---

#### Text Sequence string

- Introduction

  - unicode string type: `str`
  - immutable
  - nicode code points array data structure

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
    s = "C:\\number\\nums

    # string explicit/implicit constructor
    """
      class str(object='')
      class str(object=b'', encoding='utf-8', errors='strict')
      return object.__str__(), if no __str__() method, then str() falls back to returning repr(object)
      if encoding specified, object must be a bytes object.
    """
    s = str(s1)
    s = str(b"bytes literal", encoding='utf-8')

    # string Class methods/properties
    # formatting
    """formatting pattern: /:[<|>][/d]*[b|o|x]/"""
    "{0} placeholder {1}".format(var1, var2)
    "{name} is {age} years old".format(age = 10, name = "Jane")
    "position tag: {0} and {1}, named tag: {name}".format(2, 5, name = "Jane")
    "{:<{len}} align left with width {len}".format("string", len=10)
    "{:>{len}} align right with width {len}".format("string", len=10)
    "{:>{len}b} binary align right with width {len}".format(32, len=10)
    "{:>{len}o} binary align right with width {len}".format(32, len=10)
    "{:>{len}x} hex align right with width {len}".format(32, len=10)

    # indexing/slicing
    newS = s[index]
    newS = s[-1]
    newS = s[start:end:step]
    newS = s[:end]
    newS = s[start:]

    # string manipulation
    index = str.find(substr, startPos)
    bool = str.startwith(substr, start, end)
    bool = str.endwith(substr, start, end)

    newS = str.strip(charColl)
    newS = str.lstrip(charColl)
    newS = str.rstrip(charColl)
    newS = str.center(width)
    newS = str.ljust()
    newS = str.rjust()

    newS = str.replace(targetsubstr,replacersubstr)
    newS = str.split(splitCharCol)
    strTuple = str.partition(partstr)
    newS = strlist.join(jointChar)

    newS = str.capitalize()
    newS = str.lower()
    newS = str.upper()
    newS = str.title()
    newS = str.swapcase()

    # char manipulation
    bool = str.isalpha()
    bool = str.isalnum()
    bool = str.isdigit()
    bool = str.islower()
    bool = str.isnumeric()
    bool = str.istitle()
    bool = str.isspace()
    str.index(substr)
    number = str.count(substr)

    # transform to bytes
    b = str.encode("utf-8")

    # external str manipulation function/operator
    len(s)
    s = "s1" + " " + "s2"
    s = "repeate"*2
    char in s
    for char in s:
  ```

---

#### Binary Sequence bytes and bytearray

- Introduction

  - ascii string type: `bytes, bytearray`
    - value range: [0, 255]
  - immutable
    - `bytes`
  - mutable
    - `bytearray`
  - ascii code points array data structure

- Practices

  ```python
    # bytes literal
    s = b"bytes literal"
    s = b'bytes literal'
    s = b''' bytes literal with
            (indented)multiple lines'''
    s = b""" bytes literal with
    (no indentation)multiple lines"""
    s = rb"C:\number\nums"
    s = b"C:\\number\\nums

    # bytes explicit/implicit constructor
    """
      class bytes([source[, encoding[, errors]]]
      A zero-filled bytes object of a specified length: bytes(10)
      From an iterable of integers: bytes(range(20))
      Copying existing binary data via the buffer protocol: bytes(obj)
    """
    b = bytes(10)
    b = bytes(range(20))
    b = bytes(obj)

    # bytearray explicit/implicit constructor
    """
      class bytearray([source[, encoding[, errors]]]
      A zero-filled bytes object of a specified length: bytes(10)
      From an iterable of integers: bytes(range(20))
      Copying existing binary data via the buffer protocol: bytes(obj)
    """
    ba = bytearray()
    ba = bytearray(10)
    ba = bytearray(range(20))
    ba = bytearray(obj)

    # bytes and bytearray Class methods/properties
    # similar to str object
    # https://docs.python.org/3/library/stdtypes.html#bytes

    # transform to str
    str = b.decode("utf-8")

    # external str manipulation function/operator
    len(b)
    b = b"s1" + b" " + b"s2"
    b = b"repeate"*2
    char in b
    for char in b:
  ```

---

#### List

- Introduction

  - mutable type
  - array data structure
  - `==` compares contents of lists

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
    li.pop()
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
    item in li
    max(li)
    min(li)
    sorted(li)
    for item in li:
      do_staff_with_item

    # destructuring/unpacking
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
    item in t
    max(t)
    min(t)
    for item in t:
      do_staff_with_item

    # destructuring/unpacking
    a, b, c = (1, 3, 4)
    a, *rest = (1, 3, 4)
    a, b = b, a

  ```

---

#### Set/Frozenset

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

    # set class methods/properties
    s.add(elem)
    s.update(iterable)
    elem = s.pop()
    s.discard(elem)
    s.remove(elem) # KeyError if elem doesn't exist.

    # set operation
    s.clear()
    newS = s1.union(s2)
    newS = s1 | s2
    newS = s1.intersection(s2)
    newS = s1 & s2
    newS = s1.difference(s2)
    newS = s1 - s2
    newS = s1.symmetric_difference(s2)
    newS = s1 ^ s2
    newS = s1.union(s2) - s1.intersection(s2)

    bool = elem in s1
    bool = elem not in s1
    bool = s.issubset(s1)
    bool = s.issuperset(s1)

    # external functions/operators
    len(s)
    max(s)
    min(s)
    sum(s)
    sorted(s)
    for elem in S:
      do_stuff

    # frozenset
    fs = frozenset(s)

  ```

---

#### Dictionary

- Introduction

  - mutable type
  - orderless
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
  del d[key]
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

### Function and FP

#### Functions

- Introduction

  - function decorator
  - function declaration
    - function docstring
      - `func.__doc__`
    - function anotation
      - `func.__anotations__`
    - function name
      - `func.__name__`
    - arguments
      - `args`
      - `args = default_value`
      - `*args`
      - `**kwargs`
      - default args
        - args with default value
        - default arg evaluate only once when `def` func first run
        - when use mutable default value, cautious about each function call
        - use immutable default value is recommanded.
      - keyword args
      - argurments destructing
        - `func(*sequences)`
        - `func(**dicts)`
    - return value
      - return `None` by default
  - nested function and closure
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

#### Function Programming

- Functors

  - Decorator
    - wrap a function into decorator, simplify interface design and lower the exposure surface.
    - `@decorator`
  - Generator
    - generate an iterable like object
      - `(expr for iter in interable)`
    - ranger
      - a number generator
      - `range(start, stop, step)`
    - custome generator object interfaces
      - `generator.__next__()`
      - `generator.send(value)`
      - `generator.throw(*EXCEPTION)`
      - `generator.close()`
  - Iterator
    - traverse a collection with simple iterator protocal.
    - two categories of iterator objects
      - a sequence iterator, works with an arbitrary sequence supporting the `__getitem__()` method.
      - a callable object and a sentinel value, calling the callable for each item in the sequence, and ending the iteration when the sentinel value is returned
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

    ```python
    # lambda anounymous function
    lambda arglist: func_body_expression
    namedlambda = lambda arglist: func_body_expression
    ```

  - closure
  - recursion
  - curryinng
  - higher order function

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

  # Generator wrapper function
  def gernerator_wrapper(sequence)
    for item in sequence:
      yield item

  # Generator comprehension
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

---

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
  - `format(), input(), print(data, sep=' ', end='\n')`
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

---

### Class and OOP

#### Classes

- Class and Object

  - Class/Object Type declaration
  - Class Docstrings
    - `cls.__doc__`
  - Constructor
    - `__new__(cls, args, *args, **kwargs)`
    - `__init__(self, args, *args, **kwargs)`
  - Destroctor
    - `__del__(self)`
  - Attributes
    - Class Attributes
    - Instance Attributes
    - attributes loopup
      - instance -> class -> parents classes
    - get attributes of class
      - `dir(Obj)`
  - Methods
    - method docstrings
      - `cls.method.__doc__`
    - instance method
    - class method
      - `@classmethod` decorator
      - with implicity `cls` argument
      - can update class/object status
    - static method
      - `@staticmethod` decorator
      - can not update class/object status
      - pure utility function
    - getter/setter/deleter/docstring
      - `myprop = property(fget=None, fset=None, fdel=None, doc=None)`
      - `@property`
      - `@myprop.setter`
      - `@myprop.deleter`
      - accessing using getter/setter
        - `print(obj.myporp)`
        - `obj.myprop = VALUE`
  - Slots
  - Object/Instance
  - Operator Override
    - `+ : __add__()`
    - `print(obj) : __repr__(), __str__()`
    - `in : __contains__()`
    - `== : __eq__()`
    - `!= : __ne__()`
    - `[index] : __getitem__(index)`
    - `[start:end]: __getslice__(start, end)`
    - `(args): __call__(args)`
    - `len(obj) : __len__()`

- Metaclasses

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
    - Abstract Base classes
      - abc module
        - decorators
          - `@abc.abstractclassmethod`
          - `@abc.abstractstaticmethod`
          - `@abc.abstractproperty`
          - `@abc.abstractmethod`
  - Encapsulation
  - Polymophism
    - Method Overwriten
  - Isolation
  - Composition

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
  #Object Declaration
  class MyObject(PARENT1, PARENT2, PATENT3, ...):
    """MyObject Class Docstring"""
    def __init__(self, arg, *args, **kwargs):
      constructor_body_block

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
    - FileNotFoundError
  - OSError
  - AttributeError
  - AssertionError
  - UnboundLocalError
  - StopIteration

---

##### File IO

- Introduction

  - file is a contiguous sequence of bytes
    - EOL
  - standard files
    - stdin
      - `input()`
      - `sys.stdin`
    - stdout
      - `print()`
      - `sys.stdout()`
    - stderr
      - `sys.stderr`
  - text/binary IO objects
    - `fo = open("path/to/file", "MODE")`
    - check built-in [io module](#io)

- Practices

  ```python
  # get file/io object
  fo = open("./data/test.txt", "r+w")

  #file object methods/properties
  fo.name
  fo.mode
  fo.closed
  fo.encoding
  fo.newlines

  fo.fileno()
  fo.read(size)
  linetext = fo.readline()
  filetext = fo.readlines()
  fo.write(string)
  fo.writelines(string_list)
  fo.seek(offset, start)
  fo.next()
  fo.tell()
  fo.truncate(size)
  fo.flush()
  fo.close()

  with open("file.txt", "+") as fo:
    for line in fo:
      print(line, end="")
  print("done")

  # external module/functions
  import os
  os.rename(oldfilename, newfilename)
  os.remove(filename)

  ```

---

### Operators

- Grouping Operators

  - `(group)`

- Indexing/Accessing Operator

  - `__getitem__(), __setitem__(), and __delitem__()`
  - `sequence[index]`
  - `collect[member]`

- Slice Operator

  - `__getslice__(), __setslice__() and __delslice__()`
  - `sequence[start:end:step]`

- String/List Concatenation Operator

  - `__concat__()`
  - `s + s2`

- String/List Repeatition Operator

  - `__mul__()`
  - `s * 3`

- del Operator

  - `del arr[i]`

- in, not in Membership Operator

  - `elem in COLLECTION`
  - `elem not in COLLECTION`

- Bitwise Operators

  - `&, |, ^, ~`
  - `<<, >>`

- Tenary Operator

  - `true_expression if condition_express else false_expression`

- Arithmetic Operators

  - `+, -`
  - `*, /, //, %, **`

- Comparison Operators

  - `==, !=`
  - `>, >=, <, <=`

- is, is not Identity Operator

  - `is`
  - `is not`

- Assignment Operator

  - `=`
  - `+=, -=, *=, /=, //=, %=, **=`

- Condition/Logical Operators

  - `not, and, or`

- Arguments Spread Operators

  - `func(*args)`
  - `func(**kwargs)`

- Comma Operator

  - `a, b, c`

---

### Expressions

- assignment expression

  - `a = 1`
  - `a = b = 1`
  - `a = 1, b = 2`
  - `a, b, c = 1, 2, 3`
  - `a, b, c = 1, 2, 3`
  - list, tuple destructuring
    - `a, b = [1, 3]`
  - `+=, -=...`

- condition expression

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

- Global variable reference statement

  - `global variable_list`

- nonlocal variable reference statement

  - `nonlocal variable_list`

- Docstring statement

  - docstring is a string literal that occurs as the first statement in a module, function, class, or method definition.
  - docstring becomes the `__doc__` special attribute of that object

- Decorator statement

  - `@decorator`

- Pass Statement

  - `pass`

- Function Statements

  - function declaration
  - lambda function

- Class Statements

  - class declaration

- Flow Control Statements

  - condition statements
    - if-elif-else
  - context blocking statement
    - with-as
  - loop statements
    - for-in-else
    - while-else
    - break
    - continue
  - exception statements
    - try-except-else-finally
    - raise

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

- import/export

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

- importlib

  - import statement is syntactic sugar of `importlib.__import__()` function

  ```python
  import importlib
  importlib.reload(MYMODULE)
  ```

- packages namespace

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
    - `random.choice(indexable)`
    - `random.randrange(start, stop, step)`
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

- shelve

  - `with shelve.open('path/to/file') as db:`
  - `do_stuff_with_db_like_a_dict_type`
  - `db.close()`

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

### Web

- webbrowser

  ```python
    import webbrowser as wb
    url = 'http://docs.python.org/'
    wb.open(url)
    wb.open_new(url)
    wb.open_new_tab(url)
  ```

- webbrowser

  ```python
    import urllib
    url = 'http://docs.python.org/'

    # urllib.request
    requestObj = urllib.request.urlopen(url)
    namedtuple = urllib.parse.urlparse(url)
    rp = urllib.robotparser.RobotFileParser(url)
  ```

---

### IO Texting and Streaming

#### re

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

#### io

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

### OS and System Services

#### Date and Time

- time

  ```python
  improt time

  #get time
  timeObj = time.gmtime(0)
  timeObj = tiem.localtime()
  slapsed = time.time()

  time
  monotonic
  perf_counter
  process_time

  time.strftime()

  ```

- datetime

  ```python
  improt datetime

  #get time
  datetime.datetime.today()
  datetime.datetime.now()
  datetime.datetime.utcnow()
  datetime.tzinfo
  datetime.timezone

  ```

- calendar

  ```python
  improt time

  #get time
  timeObj = time.gmtime(0)
  timeObj = tiem.localtime()
  slapsed = time.time()

  ```

- pytz

  - `pip intsll pytz`

  ```python
  improt pytz

  #get time
  country = 'Europe/Moscow'
  tzdisplay = pytz.timezone(country)
  local_time = datetime.datetime.now(tz = tzdisplay)
  utc+time = datetime.datetime.utcnow(tz = tzdisplay)
  ```

- timeit

  ```python
  improt timeit
  """
  timeit.timeit(stmt='pass', setup='pass', timer=<default timer>, number=1000000, globals=None)
  timeit.repeat(stmt='pass', setup='pass', timer=<default timer>, repeat=5, number=1000000, globals=None)
  """
  timeit.timeit('"-".join(str(n) for n in range(100))', number=10000)
  timeit.timeit('char in text', setup='text = "sample string"; char = "g"')
  timeit.timeit(lambda: "-".join(map(str, range(100))), number=10000)

  """
  timeit.Timer(stmt='pass', setup='pass', timer=<timer function>, globals=None)
  """
  timer = timeit.Timer('char in text', setup='text = "sample string"; char = "g"')
  elapsed = tiemr.timeit(number=1000000)
  repeat = timer.repeat(repeat=5, number=1000000)
  ```

#### Concurent Computing

- concurrent
- threading
- subprocess
- multiprocessing
- contextlib
  - `@contextlib.contextmanager`

#### Cli

- argparse
- cmd

---

#### File System

- os

  ```python
  """
  os.walk(top, topdown=True, onerror=None, followlinks=False)
  """
  import os

  os.getcwd()
  os.listdir()
  bool = os.access("path/to/file/dir", os.F_OK|os.R_OK|os.W_OK|os.X_OK)
  dirpath, dirnames, filenames = os.walk(".")
  ```

---

### Misc Modules

- Documentation

  - doctest

---

---

## Design Patterns

### Collection Class

- Python Collection Classes

  - list, range, tuple, set, str, bytes, bytearray, dictionary

- Protocol for Collection

  ```python
  # container
  elem in | not in Coll

  # sized
  len(Coll)

  # iterable
  for elem in iter(Coll)

  # sequence
  elem = Coll[index]
  index = Coll.index(elem)
  Coll.count(elem)
  Coll.reverse()

  #mutable/immutable

  ```

### Metaprogramming

---

### Metaclass

---

---

## Best Practice

### Install and Initialize

- install python

  - install python package
  - config python path if necessary
  - setup virtualenv

- install anaconda

### virtualenv Install and Setup

- `pip install virtualenv`
- `cd MYENV_ROOT`
- `virtualenv MYENV`
  - `virtualenv --python=python3.7.5 MYENV`
- `source MYENV_ROOT/MYENV/bin/activate`
- `which python`
- `deactivate`

### pyinstaller Executable Package Tool

- `pip install pyinstaller`
- `pyinstaller main.py`
- `pyinstaller --onfile main.py`

### inno Setup Install Wizard Tool

- GUI

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
