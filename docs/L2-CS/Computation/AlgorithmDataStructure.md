---
id: AlgorithmDataStructure
title: Algorithm and Data Structure
sidebar_label: Algorithm and Data Structure
---

## Introduction

### Perspective

- When we're talking about algorithm, the implicit contexts includes computing system and store system are based on as-is computer architecture, IC based 0-1 logic.
- Data structure also is a implicit context for algorithm.
- Algorithm should include these contexts, because algorithms' invention and implementation rely on these context.
- Algorithm narration usually don't include implicit contexts, for simplicity and consistancy reason.

### Computing Complexity

- Time Complexity
  - Big-O Notation
    - constants don't matter
    - smaller terms don't matter
    - arithmetic operations are constant
    - assignment is constant
    - accessing element in indexable object is constant
- Space Complexity
  - Auxiliary Space Complexity
    - inputs space don't count
    - primitives are considered as constant space

### Algorithm Design Principles

- Divide and Conquer
- Recursion

  - Recursion Helper

    ```javascript
    function outer(){
        ...
        function helper(){
            helper_body;
        }
        ...
        helper();
        ...
    }
    ```

### Algorithm Patterns

- Elements Frequency Counter, Mapping, and Compare

  - scenario: orderless array equality checking.
    - complexity: O(n)

- Multi Pointer

  - scenario: ordered array, find a 0 sum elements pair.
    - two pointers traverse towards each other.
    - complexity: O(n)
  - scenario: ordered array, count unique elements.
    - two pointers travel in one direction, one records unique value, the other traverse the array.
    - complexity: O(n)

- Sliding Window

  - scenarios:
    - a string, find longest sequential unique substring.
    - an array, find largest sum of fixed length sequential elements
    - sliding window slides with traverse pointer, updates value, records target and etc.
    - complexity: O(n)

---

---

## Algorithms

### Search Algorithms

- Linear Search

  - PseudoCode
    - linearSearch: (data set A, target)
      - traverse A, compare each elem A[index] with target,
      - return index if match.
      - return -1 is traverse A ends.
  - Complexity
    - O(n)

- Binary Search

  - Prerequisite
    - data set A must sorted.
  - PseudoCode
    - binarySearch: (sorted data set A, target value)
      - init left pointer to A's start index, right pointer to A's end index, pivot = (left+right)/2
      - while left <= right && target != A[pivot]
        - if target < A[pivot]
          - [left, right] = [left, pivot-1]
        - else target > A[pivot]
          - [left, right] = [pivot + 1, right]
        - pivot = (left+right)/2
      - return target === A[pivot] ? pivot : -1
  - Complexity
    - O(log(n))

---

### Sort Algorithms

- Indicator
  - stableness
  - in-place
  - performance

#### Bubble Sort

- for each pass, compare each adjacent elements pair, swap if the pair out of order
- PseudoCode

  - bubbleSort: (an data set A, order indecator: ASC, DES )
    - init swaped flag with ture, end index with A's last index
    - while: swaped && end > 0
      - swaped = false
      - for: pivot = 0; pivot < end; pivot ++
        - if: Ascending && A[pivot] > A[pivot + 1]
          - swap(A[pivot], A[pivot + 1])
          - swaped = true
        - if: Desending && A[pivot] < A[pivot + 1]
          - swap(A[pivot], A[pivot + 1])
          - swaped = true
      - end--;
    - return A

- Complexity
  - O(n^2)
  - best case: O(n)

#### Selection Sort

- for each pass, the min/max element found and swap to the right position.
- PseudoCode

  - selectionSort: (an data set A, order indecator: ASC, DES )
    - init start index with 0, min pivot index with 0
    - while: start < A.length
      - for: i = start + 1; i < A.length; i++
        - if: A[i] < A[pivot] && Ascending
          - pivot = i
        - if: A[i] > A[pivot] && Desending
          - pivot = i
      - if: pivot !== start
        - swap(A[start], A[pivot])
      - start++
      - pivot = start
    - return A

- Complexity
  - O(n^2)
  - best case: O(n^2)

#### Insersion Sort

- for each pass, the pivot element was inserted into the rigth postion of the sorted part of array.
- PseudoCode

  - insertSort: (an data set A, order indecator: ASC, DES )
    - init sorted index with 0, insertion postion pivot index with sorted + 1
    - while: pivot < A.length
      - init: pivotElem = A[pivot], insertPostion = sorted
      - while: insertPostion >= 0 && ( (Ascending && A[insertPostion] > pivotElem) || ( Descending && A[insertPostion] < pivotValue ))
        - A[insertPostion + 1] = A[insertPostion];
        - insertPostion--;
      - if: insertPostion != sorted
        - arr[insertPostion + 1] = pivotValue;
      - sorted++
      - pivot = sorted+1
    - return A

- Complexity
  - O(n^2)
  - best case: O(n)

#### Merge Sort

- Intruduction

  - atomic array with 0 or 1 element is sorted by nature.
  - Divide:
    - splite A into 2 almost equal two half: A1, A2
    - if sub A: A1, A2 are not sorted, Divide them into two half.
    - recursively splite until sub arrays are 0 or 1 element.
  - Conquor:
    - merge the last splited two atomic array with order
    - merge the ordered sub array into larger ordered array
    - recursively merge until no sub arrays.

- PseudoCode

  - mergeSort: (an data set A, order indecator: ASC, DES )

    - if: A.length <= 1, return A
    - set: middle = A.length/2
    - set: leftA = mergeSort(A.slice(0,middle), order)
    - set: rightA = mergeSort(A.slice(middle), order)
    - return mergeHelper(leftA, rightA, order)

  - mergeHelper: (ordered data set: A, ordered data set: B, order indicator: ASC, DES)
    - init arr = [], pivotA = 0, pivotB = 0
    - while: (pivotA < A.length && pivotB < B.length)
      - if: (Ascending && arr1[pivotA] <= arr2[pivotB]) || (!Ascending && arr1[pivotA] >= arr2[pivotB])
        - arr.push(A[pivotA]);
        - pivotA++;
      - else:
        - arr.push(B[pivotB]);
        - pivotB++;
    - while: (pivotA < A.length)
      - arr.push(A[pivotA]);
      - pivotA++;
    - while: (pivotB < B.length)
      - arr.push(B[pivotB]);
      - pivotB++;
    - return arr

- Complexity
  - mergeHelper
    - O(m+n)
  - mergeSort
    - O(nlog(n))
      $$T[n] = 2 T[\frac{n}{2}] + n + 1$$
      $$T[n] = 2^{k} T[\frac{n}{2^{k}}] + 2^{k} \frac{n}{2^{k}}+ \cdots + n + \sum_{n=1}^{k} 1, where \: k = {1,\cdots, log_{2}(n) }$$
      $$T[n] = O(nlog(n))$$

#### Quick Sort

- Introduction

  - atomic array with 0 or 1 element is sorted by nature
  - Divide
    - poviting the selected element into it's right sorted position by means of:
      - the left side of elements are < (Ascending order) selected element
      - the right side of elements are > (Ascending order) selected element
    - sorting the left side elements
    - sorting the right side elements
  - Conquor
    - return array

- PseudoCode

  - quickSort: (an data set A, order indecator: ASC, DES, start position, end position )

    - if: start < end
      - set: pivot = pivoting(A, order, start, end)
      - quickSort(A, order, start, pivot -1 )
      - quickSort(A, order, pivot + 1, end )
    - return arr

  - pivoting: (an data set A, order indecator: ASC, DES, start position, end position)
    - init: pivot = start, pivotElem = A[pivot]
    - for: (i = start + 1; i <= end; i++)
      - if: (Ascending && A[i] < pivotElem ) || (!Ascending && A[i] > pivotElem)
        - pivot++;
        - swap(A[pivot], A[i])
      - else:
        - continue;
    - swap(A[pivot], A[start])
    - return pivot

- Complexity
  - pivoting
    - O(n)
  - quickSort
    - O(nlog(n))
      $$T[n] = T[n_{1}] + T[n_{2}] + n + 1$$
      $$T[n] = T[n_{1\cdots 1_{k}}]+ \cdots + T[n_{2\cdots 2_{k}}] + k*n+ \sum_{n=1}^{k} 1, where \: k = {1, 2, \cdots, upto(n) }$$
    - best case:
      - O(nlog(n))
    - worst case:
      - O(n^2)

#### Radix Sort

- Introduction

  - radix sort is non-comparative integer sorting algorithm
  - most significant digit (MSD) implementation
    - number sorting
  - least significant digit (LSD) implementation
    - lexicographically string sorting

- PseudoCode

  - radixSort:(an data set A )
  - init: round = getMaxDigits(A)
  - for: let i = 1; i <= round; i++
    - init bucket with bucket[digit] = [], digit from 0 ot 9;
    - traverse A, put each elem into getDigitAt(elem,i)' bucket array.
    - update A with bucket[0...9] in order concatenation.
  - return A

- Complexity
  - set: k = getMaxDigits(A):
    - O(n k)
  - due to computer data storage and access model, radix sort is slower than quickSort or mergeSort
  - radix sort requires more storage and memory operatioin, which is very time consuming.

---

---

---

## Data Structure

### Array

- Introduction

  - contains length properties
  - each elements are indexable directly.
  - pros
    - const indexing
  - cons
    - deletion and insertion are expensive.

- APIs

### Sinle Linked List

- Introduction

  - contains head, tail, length properties
  - each node have a pointer, points to the next node or null, if it's tail.
  - pros
    - const head, tail insertion
    - const head, tail deletion
  - cons
    - indexing requires traverse the whole list.

- APIs

  - Node

    ```javascript
    class Node {
      constructor(val) {
        this.data;
        this.rLink;
      }
      get value() {}
      set value(val) {}
      get next() {}
      set next(node) {}
      push(val) {}
    }
    ```

  - SingleLinkedList

    ```javascript
    class SingleLinkedList {
      constructor() {
        this.head;
        this.tail;
        this.length;
      }
      push(value) {}
      pop() {}
      unshift(value) {}
      shift() {}
      get(index) {}
      set(index, val) {}
      insert(index, val) {}
      remove(index) {}
      reverse() {}
      traverse(mapper = e => e) {}

      //helping methods
      travelTo(index) {}
      indexChecking(index) {}
    }
    ```

---

### Double Linked List

- Introduction

  - contains head, tail, length properties
  - each node have two pointers, points to the next node and previous node.
  - pros
    - const head, tail insertion
    - const head, tail deletion
  - cons
    - indexing requires traverse the whole list.

- APIs

  - Node

    ```javascript
    class Node {
      constructor(val) {
        this.data;
        this.lLink;
        this.rLink;
      }

      get value() {}
      set value(val) {}
      get next() {}
      set next(node) {}
      get prev() {}
      set prev(node) {}
    }
    ```

  - DoubleLinkedList

  ```javascript
  class DoubleLinkedList {
    constructor() {
      this.head;
      this.tail;
      this.length;
    }
    push(value) {}
    pop() {}
    unshift(value) {}
    shift() {}
    get(index) {}
    set(index, val) {}
    insert(index, val) {}
    remove(index) {}
    traverse(mapper = e => e, reverse = false) {}

    //helping methods
    travelTo(index) {}
    indexChecking(index) {}
  }
  ```

---

### Stack

- Introduction

  - LIFO, FILO data structure

- APIs

  ```javascript
  class Stack {
    constructor() {
      this.singleLinkedList;
    }

    pop() {}
    push(val) {}
  }
  ```

---

### Queue

- Introduction

  - LILO, FIFO data structure

- APIs

  ```javascript
  class Queue {
    constructor() {
      this.singleLinkedList;
    }

    deQueue() {}
    enQueue(val) {}
  }
  ```

#### Priority Queue

- Introduction

  - each node assciate with a priority
  - higher priority get dequeue quicker
  - binary heap implementation is a better choice.

- APIs

  ```javascript
  class PriorityQueue extends MaxBinaryHeap {
    constructor() {}

    deQueue() {}
    enQueue(val) {}
  }
  ```

---

### Hash Table

- Introduction

  - Hash function map key into a fixed value
    - fast
    - deterministic
  - Hash collision
    - seperate chaining
    - linear probing

- APIs

---

### Trees

- Introduction

  - a root-leafs relationship data structure.

- Terms

  - single root
  - child
  - parent
  - siblings
  - leaf
  - Edge
  - Path

- APIs

#### Binary Tree

- Introduction
  - each node has most 2 children
- APIs

##### Binary Search Tree

- Introduction

  - a binary tree
  - any node, left subtree's values are less than node value, right subtree's values are greater than node value

- APIs

  - Node

    ```javascript
    class Node {
      constructor(val) {
        this.data = val;
        this.lChild = null;
        this.rChild = null;
      }

      get value() {
        return this.data;
      }

      set value(val) {
        this.data = val;
      }

      get leftChild() {
        return this.lChild;
      }

      set leftChild(node) {
        this.lChild = node;
      }
      get rightChild() {
        return this.rChild;
      }

      set rightChild(node) {
        this.rChild = node;
      }
    }
    ```

  - BST

    ```javascript
    class BST {
      constructor() {
        this.rootNode = null;
        this.size = 0;
        this.depth = 0;
      }
      insert(value) {
        let newNode = new Node(value);
        if (!this.rootNode) {
          this.rootNode = newNode;
          this.depth = 1;
          this.size++;
          return this;
        }

        let direction = 0;
        let depth = 1;
        let sentinel = this.rootNode;
        let walker;

        do {
          walker = sentinel;
          if (value < walker.value) {
            direction = -1;
            sentinel = walker.leftChild;
          } else {
            direction = 1;
            sentinel = walker.rightChild;
          }
          depth++;
        } while (sentinel);

        if (direction < 0) {
          walker.leftChild = newNode;
        } else {
          walker.rightChild = newNode;
        }

        this.size++;
        this.depth = this.depth > depth ? this.depth : depth;
        return this;
      }

      find(value) {
        let walker = this.rootNode;
        while (walker) {
          if (value === walker.value) {
            return true;
          }
          walker = walker.value > value ? walker.leftChild : walker.rightChild;
        }
        return false;
      }

      BFS() {
        let bucket = Array.from({ length: this.depth - 1 }, () => []);
        bucket[0].push(this.rootNode);
        for (let i = 1; i < this.depth; i++) {
          bucket[i] = bucket[i - 1].reduce((accum, node) => {
            if (node.leftChild) {
              accum.push(node.leftChild);
            }
            if (node.rightChild) {
              accum.push(node.rightChild);
            }
            return accum;
          }, []);
        }

        let arr = [].concat(...bucket);
        return arr.map(node => node.value);
      }
      preOrderDFS() {
        let arr = [];
        function traverse(node) {
          if (node) {
            arr.push(node.value);
            traverse(node.leftChild);
            traverse(node.rightChild);
          }
        }
        traverse(this.rootNode);
        return arr;
      }

      inOrderDFS() {
        let arr = [];
        function traverse(node) {
          if (node) {
            traverse(node.leftChild);
            arr.push(node.value);
            traverse(node.rightChild);
          }
        }
        traverse(this.rootNode);
        return arr;
      }

      postOrderDFS() {
        let arr = [];
        function traverse(node) {
          if (node) {
            traverse(node.leftChild);
            traverse(node.rightChild);
            arr.push(node.value);
          }
        }
        traverse(this.rootNode);
        return arr;
      }

      //helper method
      print() {
        console.log(`size: ${this.size}, depth: ${this.depth}`);
        this.printConsole(this.rootNode);
      }
      printConsole(node, depth = 1) {
        if (node) {
          this.printConsole(node.leftChild, depth + 1);
          console.log("    ".repeat(depth - 1), node.value);
          this.printConsole(node.rightChild, depth + 1);
        }
        return;
      }
    }
    ```

##### Balanced BST

- AVL tree
- Red-Black tree

#### Binary Heap

- Introduction

  - a kind of binary tree
  - MaxBinaryHeap:
    - parent nodes values are always greater than children
  - MinBinaryHeap:
    - parent nodes values are always less than children
  - as compack as possible, left children filled first.
  - Priority Queue application

- APIs

---

### Graphs

- Introduction

  - Vertex
  - Edge
  - Cycle/Acycle
  - Weighted/Unweighted
  - Directed/Undirected
  - types
    - DG
    - UDG
    - WG
    - UWG
    - DAG
  
- Terms
  - Adjacency Matrix
    - dense edges
  - Adjacency List
    - sparse edges

- APIs

---

---

## Misc

### Online Resources

- [google](https://www.google.com)
