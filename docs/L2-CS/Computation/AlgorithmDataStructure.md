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
    - asymptotic behavior
    - constants don't matter
    - smaller terms don't matter
    - arithmetic operations are constant
    - assignment is constant
    - accessing element in indexable object is constant

- Space Complexity

  - Auxiliary Space Complexity
    - inputs space don't count
    - primitives are considered as constant space

- Boundary:

  - Upper Bound: worst case
  - Lower Bound: best case
  - Average

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

### Random Generator Algorithm

- Introduction

  - Categories
    - PRNG: pseudorandom number generator
    - CRNG: Cryptographic random number generator
    - TRNG: true random number generator

- LCG_RNG

  - linear congruential generator

  - PseudoCode:
    $$ X_{n+1} = (A*X_{n} + B)\  \% \  M$$

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

- for each pass, compare each adjacent elements pair, swap if the pair out of order, repeate until no swap, or n pass finished.
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

- data set A divided into sorted subarray, and unsorted subarray.
- each pass, select the min/max element found in the unsorted subarray, and swap to the end of sorted subarray.
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

- data set A divided into sorted subarray, and unsorted subarray.
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

> $$T[n] = 2 T[\frac{n}{2}] + n + 1$$
> $$T[n] = 2^{k} T[\frac{n}{2^{k}}] + 2^{k} \frac{n}{2^{k}}+ \cdots + n + \sum_{n=1}^{k} 1, where \: k = {1,\cdots, log_{2}(n) }$$
> $$T[n] = O(nlog(n))$$

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
    - best case:
      - O(nlog(n))
    - worst case:
      - O(n^2)

> $$T[n] = T[n_{1}] + T[n_{2}] + n + 1$$
> $$T[n] = T[n_{1\cdots 1_{k}}]+ \cdots + T[n_{2\cdots 2_{k}}] + k*n+ \sum_{n=1}^{k} 1, where \: k = {1, 2, \cdots, upto(n) }$$

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

#### Heap Sort

- Introduction

  - heap sort relies on heap data structure
  - in-place sort
  - unstable

- PseudoCode

  - heapSort:(an heap data structure A )
  - init: lastIndex = A.size
  - while: lastIndex > 0
    - swap: A[lastIndex], A[0]
    - lastIndex--
    - A.size--
    - A.sinkDown(0)
  - return A

- Complexity
  - O(nlog(n))

---

---

### Graph Algorithms

#### Shortest Path First

- Introduction

> $$P = \big\\{ \: Path(v_{1}, v_{2}) \: | \: v_{1}, \  v_{2} \in G(V, E)\big\\}$$ > $$ Weighted(\ p_{shortest} \ ) = Min\ (\big\\{\ Weighted(\ p_{i} \ ), \: | \: p_{i} \in P \:\big\\} \ ) $$

- multiple pathes may exist.

##### Dijstra Algorithm

- Introduction
  - can hanle positive weight function only.
  - construct a shortest path tree, all nodes can get shortest path from one to another using the tree
- Psuedo Code

  - DijstraSP: (graph G, start vertex V0)

    - init: Heap = new MinBinaryHeap with Node(vertex, distances to V0), Predecessor = {}, Distance = {}
    - for: v in G
      - Distance[v] = 0
      - Predecessor[v] = null
    - Heap.insert(Node(V0, 0)), Distance[V0] = 0

    - while: Heap is not empty

      - minNode = Heap.extractMin()
      - for: vertex in minNode.vertex's neighbor
        - newDistance = minNode.distance2V0 + Distance(minNode, vertex)
        - if: newDistance < Distance[vertex]
          - Predecessor[vertex] = minNode
          - Distance[vertex] = newDistance
          - Heap.update(Node(vertex, newDistance))

    - return Distance, Predecessor

- Complexity
  - O(|V|log(|V|)+|E|)

##### Bellman-Ford Algorithm

- Introduction:

  - can hanle negtive weight function also.
  - negative cycle
    - A-B-C-A, 1,-10,5; each cycle, weight decrese 4.

- PseudoCode

  - BellmanFordSP: (graph G, start vertex V0)

- Complexity
  - O(|V| \* |E|)

##### Floyd-Warshall Algorithm

#### Spanning Tree

- Introduction

> $$ST = \big\\{ \  \hat{G}(V,\hat{E}) \  | \  \forall \  p_{1}, p_{2} \in V, \ \exists \ Path(p_{1}, p_{2}) \ \subset \ \hat{E}; \  \hat{G} \subset G(V, E) \big\\}$$

- Applications:
  - Optimize path.
  - Graph Cycle detection
  - K-mean Clustering.

##### Minimun Spanning Tree

- Introduction

> $$ST = \big\\{ \  \hat{G}(V,\hat{E}) \  | \  \forall \  p_{1}, p_{2} \in V, \ \exists \ Path(p_{1}, p_{2}) \ \subset \ \hat{E}; \  \hat{G} \subset G(V, E) \big\\}$$ > $$ Weighted(\ MST \ ) = Min\ ( \big\\{ \  Weighted(\ st \ ), \  | \  st \in ST \ \big\\} \ ) $$

- PseudoCode

  - KruskalMST: (weighted Graph G(V,E))

    - `sorting E by weight, get min weighted edge, check it's in MST or not, until it's empty`

    - define: DisjointSet S, E's Priority Queue Q with weight priority, MST = []
    - init:
      - for v in V, put v in S;
      - for e in E, put e in Q
    - while: Q is not empty
      - minE = Q.pop()
      - u, v = minE.vertices
      - if: S.find(u) != S.find(v)
        - MST.push(minE)
        - S.merge(u, v)
    - return MST

  - PrimsMST: (weighted Graph G(V,E), any starter vertex V0)

    - `starting by random vertex, walking alone adjacency edges, buildup visited edges, sorted by weight, put the min edge in MST, repeate walking with new vertex;`

    - define: E's Priority Queue Q with weight priority, MST = [], unVisitedList = [V]
    - init:
      - put V0's Edges in Q
      - visitedList.push(V0)
    - while: unVisitedList is not empty

      - minE = Q.pop()
      - u, v = minE.vertices
      - unVisitedList.remove(v)
      - MST.push(minE)
      - for: e in v's edges
        - if: e.vertices has unvisited vertex
          - Q.push(e)

    - return MST

- Complexity
  - KruskalMST
    - O(|E|log(|E|) + |E|log(|V|)),
    - max( O(|E|log(|E|)), O(|E|log(|V|)) )
  - PrimsMST
    - min(O(|E|log(|E|)), O(|E|log(|V|)))
    - when Edges are dense, PrimsMST is much faster than KrushalMST.

#### Graph Traverse

##### Breadth First Search

- Application:

- PseudoCode

  - traverseBFS: (start vertex V)

    - init: visitedVertices = [], data = []
    - visitQueue.enQueue(V),visitedVertices.push(V)
    - while: visitQueue is not empty:

      - visitor = visitQueue.deQueue()
      - data.push(visitor.data)
      - for: child in visitor Adjacency
        - if: child not in visitedVertices
          - visitedVertices.push(child)
          - visitQueue.enQueue(child)

    - return arr;

- Complexity
  - O(|V|+|E|)
  - Space Complexity
    - O(|V|), Queue length should larger than tree root of V's leaves (breadth)

##### Depth First Search

- Application

  - Detecting Cycles
  - Maze routing

- PseudoCode

  - traverseDFS: (start vertex V)

    - init: visitedVertices = [], data = []
    - visitedVertices.push(V)
    - visitStack.push(V)
    - while: visitStack is not empty:

      - visitor = visitStack.pop()
      - data.push(visitor.data)
      - for: child in visitor Adjacency
        - if: child not in visitedVertices
          - visitedVertices.push(child)
          - visitStack.push(child)

    - return arr;

  - traverseDFS: (start vertex V, visitedVertices = [], data = [])

    - visitedVertices.push(V)
    - data.push(V.data)
    - for: child in V Adjacency
      - if: child not in visitedVertices
        - traverseDFS(child, visitedVertices, data)

- Complexity
  - O(|V|+|E|)
  - Space Complexity
    - O(log(|V|)), Stack length should larger than tree root of V's height(depth)

#### Maxflow

## Data Structure

### Array

- Introduction

  - contains length properties
  - each elements are indexable directly.
  - same elements type
  - pros
    - const indexing, O(1)
  - cons
    - deletion and insertion are expensive, O(n)

- APIs

  ```javascript
  class Array {
    constructor() {
      this.container = [];
      this.size = 0;
    }

    push(val) {}
    pop(){}
    insert(val, index)
    remove(index)
  }
  ```

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
  - recursion functions can be rewrite with stack into an iterative function

- APIs

  ```javascript
  class Stack {
    constructor() {
      this.singleLinkedList;
    }

    pop() {}
    peek() {}
    push(val) {}
    getSize() {}
    isEmpty() {}
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
    peek() {}
    getSize() {}
    isEmpty() {}
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
    peek() {}
    getSize() {}
    isEmpty() {}
  }
  ```

---

### Hash Table

- Introduction

  - Application: Map, Dictionary, Association
  - key-value data structure
    - load factor: N/M
    - dynamic resizing
  - key space
    - size N
  - value bucket
    - size M
  - hash function
    - Hash function maps key into a fixed value, which can indexing bucket
      - fast
      - deterministic
      - uniform distribution keys
    - Hash collision
      - seperate chaining
      - linear probing
      - quadratic probing
      - rehashing

- APIs

  - HashTable

    ```javascript
    class HashTable {
      constructor() {
        this.size = 0;
        this.keys = [];
        this.values = [];
      }

      get(key) {}
      set(key, value) {}

      delete(key) {}
      clear() {}

      keys() {}
      values() {}
      entries() {}
      forEach() {}

      //helper method
      hashFunction(key) {}
    }
    ```

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
  - ddge
  - path
  - height

#### Binary Tree

- Introduction
  - each node has most 2 children
- APIs

##### Binary Heap: [Check Heap Section](#Binary-Heap)

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

      get value() {}
      set value(val) {}
      get leftChild() {}
      set leftChild(node) {}
      get rightChild() {}
      set rightChild(node) {}
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
      insert(value) {}
      remove(value) {}
      find(value) {}
      getMinValue() {}
      getMaxValue() {}

      traverseBFS() {}
      traversePreOrderDFS() {}
      traverseInOrderDFS() {}
      traversePostOrderDFS() {}
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

##### Balanced BST: AVL Tree

- Introduction

  - AVL tree
    - a BST, auto balanced
    - for any node, the height difference of two children is at most 1.
    - leaf's height 0
    - null child's height -1
    - unbalance situation:
      - left-left heavy
        - node rotate to right as right child: rotate2Right(node)
      - left-right heavy
        - node's left child rotate to rotate2left(node.leftChild)
        - transform into left-left heavy, go with rotate2Right(node)
      - right-right heavy
        - node rotate to left as left child: rotate2left(node)
      - right-left heavy
        - node's right child rotate to rotate2Right(node.rightChild)
        - transform into right-right heavy, go with rotate2left(node)
    - rotation:
      - node rotate2Right
        - node's left child becomes root
        - new root takes node as it's right child
        - node takes new root's right child as it's left child
      - node rotate2Left
        - node's right child becomes root
        - new root takes node as it's left child
        - node takes new root's left child as it's right child

- APIs

  - Node

    ```javascript
    class Node {
      constructor(val) {
        this.data = val;
        this.height = 0;
        this.lChild = null;
        this.rChild = null;
      }

      get value() {}
      set value(val) {}
      get leftChild() {}
      set leftChild(node) {}
      get rightChild() {}
      set rightChild(node) {}
    }
    ```

  - AVLTree

    ```javascript
    class AVLTree {
      constructor() {
        this.rootNode = null;
        this.size = 0;
      }
      insert(value) {}
      remove(value) {}
      find(value) {}
      getMinValue() {}
      getMaxValue() {}

      traverseBFS() {}
      traversePreOrderDFS() {}
      traverseInOrderDFS() {}
      traversePostOrderDFS() {}

      //helper method
      rebalance(node) {}
      checkBalance(node) {}

      removeNode(node) {}
      calcHeight(node) {}

      rotate2Left(node) {}
      rotate2Right(node) {}
    }
    ```

##### Balanced BST: Red-Black Tree

- Introduction

  - Red-Black tree

    - a BST, each node either black or red
    - black node:
      - all leaves and null nodes are black
      - root is black
    - red node:
      - a node has two black children, null nodes are black.
      - There are no child-parent adjacency red nodes
    - implications
      - every red node has black parent
      - for a given node, every path from the node to node's descendant leaves, has same number of black nodes.
      - new node is red by default
      - the longest path to the leaf is at most twice as long as the shortest.
    - Red-Black near balance:

      - root to leaf path, the number of black nodes, BH(root).
        $$BH(root) >= \frac{h}{2}$$
        $$n >= 2^{BH(root)}-1$$
        $$h <= 2 log_{2}^{n+1}$$

    - insert situation:

      - recolor

    - rotation:
      - node rotate2Right
        - node's left child becomes root
        - new root takes node as it's right child
        - node takes new root's right child as it's left child
      - node rotate2Left
        - node's right child becomes root
        - new root takes node as it's left child
        - node takes new root's left child as it's right child

- APIs

  - Node

    ```javascript
    class Node {
      constructor(val) {
        this.data = val;
        this.height = 0;
        this.lChild = null;
        this.rChild = null;
      }

      get value() {}
      set value(val) {}
      get leftChild() {}
      set leftChild(node) {}
      get rightChild() {}
      set rightChild(node) {}
    }
    ```

  - RedBlackTree

    ```javascript
    class RedBlackTree {
      constructor() {
        this.rootNode = null;
        this.size = 0;
      }

      insert(value) {}
      remove(value) {}
      find(value) {}
      getMinValue() {}
      getMaxValue() {}

      traverseBFS() {}
      traversePreOrderDFS() {}
      traverseInOrderDFS() {}
      traversePostOrderDFS() {}

      //helper method
      rebalance(node) {}
      checkBalance(node) {}

      calcHeight(node) {}

      rotate2Left(node) {}
      rotate2Right(node) {}
    }
    ```

#### Trie

- Introduction

  - an information reTrieval data structure
  - Every node of Trie consists of multiple children

- APIs

##### Ternary Search Tree

- Introduction

  - Every node of 3 children: leftChild, middleChild, rightChild
  - better data retrival performance than hash table.

- APIs

  - Node

    ```javascript
    class Node {
      constructor(char){
        this.char = char
        this.data = {}
        this.lChild = null;
        this.mChild = null;
        this.rChild = null;
      }
      get leftChild() {}
      set leftChild() {}
      get middleChild() {}
      set middleChild() {}
      get rightChild() {}
      set rightChild() {}
      get keyChar() {}
      set keyChar() {}
      get value() {}
      set value() {}
    }
    ```

  - TST

    ```javascript
    class TST {
      constructor() {
        this.rootNode = null;
      }

      set(key, value) {}
      get(key) {}

      //helper method
      setItem(node, key, value, keyCharIndex) {}
      getItem(node, key, value, keyCharIndex) {}
    }
    ```

### Heap

#### Binary Heap

- Introduction

  - a kind of binary tree
  - MaxBinaryHeap:
    - parent nodes values are always greater than children
  - MinBinaryHeap:
    - parent nodes values are always less than children
  - its complete, as compack as possible, left children filled first.
    - parent index: i
    - left Child index: 2i+1
    - right Child index: 2i+2
  - Priority Queue application

- APIs

  - BinaryHeap

    ```javascript
    class MaxBinaryHeap {
      constructor() {
        this.nodesList = [];
        this.size = 0;
      }

      insert(value) {}
      extractMax() {}

      //helper method
      bubbleUp(index) {}
      sinkDown(index) {}
      checkSink(index) {}
    }
    ```

#### Binomial Heap

#### Fibonacci Heap

---

### Set

#### Disjoint Sets

- Introduction

  - Union-Find data structure
  - a tree-like data structure

- APIs

  ```javascript
  class Set {
    constructor() {
      this.data = new Tree();
      this.size = 0;
    }

    union(set) {}
    find() {}

    //helper method
    rank() {}
    pathCompression() {}
  }
  ```

- Complexity:

#### Joint Sets

---

### Graphs

- Introduction

  - G(V, E) models pairwise relationship.
    - Vertex
    - Edge
  - properties
    - Cycle/Acycle
    - Weighted/Unweighted
    - Directed/Undirected
  - types
    - `[A|C][W|UW][D|UD]G`
  - representation
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
