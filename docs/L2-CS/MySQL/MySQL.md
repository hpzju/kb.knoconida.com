---
id: MySQL
title: MySQL a relation database system
sidebar_label: MySQL
---

## Overview

### Online Resources

- [MySQL Documentation](https://dev.mysql.com/doc/refman/8.0/en/)

---

## Application

### Features

- JSON-friendly database
- Schema-less design
- Document based store

### Applicable Scenarios

---

## Architecture

### Building Blocks

### Structures

### CRUD

#### Create

- `CREATE DATABASE mydatabase;`

#### Read

#### Update

#### Delete

- `DROP DATABASE mydatabase;`

### SELECT Query

#### [SELECT](https://dev.mysql.com/doc/refman/8.0/en/select.html)

- ```SQL
  SELECT      col_express, col2_express...
    FROM        table_name
    WHERE       condition_express
    GROUP BY    {col_name | expr | position}
    HAVING      having_express
    ORDER BY    col_order_express, col2_order_express
    LIMIT       lines_num;
  ```

##### col_express

- wildcard \* for all column.
- AS
  - `SELECT col_express AS alias ...`
- `DISTINCT( col1 )` for count unique matched rows.
- aggregation
  - COUNT(), AVG(), MAX(), MIN()
  - `COUNT(DISTINCT col1)`

##### condition_express

- =, !=, >, >=, <, <=
- AND, OR, NOT
- BETWEEN, NOT BETWEEN
  - `value BETWEEN low_bound AND high_bound`
- IN, NOT IN
  - `value IN ( VALUE_SET )`
- LIKE, NOT LIKE
  - %: any sequence of chars
  - \_: any one char
  - `str_val like "%PATTERN%"`
  - case sensitive
  - `LOWER(<key>) LIKE LOWER('%<searchpattern>%')`

##### having_express

- see [link](#conditionexpress)

##### col_order_expresss

- `col ASC/DESC`
- ASC is default

#### [Join](https://dev.mysql.com/doc/refman/8.0/en/join.html)

- ```SQL
  SELECT t1.name, t2.salary
    FROM employee AS t1
    INNER JOIN info AS t2 ON t1.name = t2.name;
  ```

- INNER JOIN
  - $$A\cap B$$
- OUTER JOIN
  - \(A\cup B\)
- SELF_JOIN

### Indexing

### Replication

### Clustering

### Business Continuity

---

## Best Practice

### Install and Config

### Drivers

### User Admin

### Backup and Restore

#### Restore Schema

### Mornitoring

---
