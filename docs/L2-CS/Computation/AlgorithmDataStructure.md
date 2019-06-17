---
id: Algorithm and Data Structure
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

- Prerequisite
  - g
- PseudoCode

- Complexity

#### Radix Sort

- Prerequisite
  - g
- PseudoCode

- Complexity

---

---

---

## Misc

### Online Resources

- [google](https://www.google.com)
