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

- [Normalized Design](https://en.wikipedia.org/wiki/Database_normalization)
  - 1NF:
    - single value for each Field(Column, Attribute)
      - vilation of 1NF: put mobile phone and home phone into phone field
  - 2NF:
    - 1NF compliance
    - **every non-prime attribute** of the relation is dependent on **the whole of every candidate key**.
  - 3NF:
    - 2NF compliance
    - no non-prime attribute depends on other non-prime attributes. All the non-prime attributes must depend on the primary key only
- Schema-based design
- Row-based store

### Applicable Scenarios

---

## Architecture

### Data Model

### System Model

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
- (SELECT_SUBQUERY)

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

- INNER JOIN, FULL OUTER JOIN, LEFT OUT JOIN, RIGHT OUT JOIN
  - Diagram of JOINS: ![Alt](/img/MySQL-Join-01.jpg "JOIN diagram")
- Self-Join

#### [UNION](https://dev.mysql.com/doc/refman/8.0/en/union.html)

- ```SQL
  SELECT ...
  UNION [ALL | DISTINCT] SELECT ...
  [UNION [ALL | DISTINCT] SELECT ...]
  ```

### Indexing

### Replication

### Clustering

### Business Continuity

---

## Management

## Best Practice

### Install and Config

### Drivers

#### [MySQL Connector/Python](https://dev.mysql.com/doc/connector-python/en/)

- `pip install mysql-connector-python`

- python driver template

  ```python
  import mysql.connector
  from mysql.connector import Error

  config = {
      'user': 'user',
      'password': 'password@MYSQL',
      'host': '127.0.0.1',
      'database': 'world',
      'raise_on_warnings': True
  }

  try:
      connection = mysql.connector.connect(**config)

      if connection.is_connected():
          db_Info = connection.get_server_info()
          print("Connected to MySQL database... MySQL Server version on ", db_Info)

          cursor = connection.cursor()
          cursor.execute("select database();")
          record = cursor.fetchone()
          print("Your connected to - ", record)

  except Error as e:
      print("Error while connecting to MySQL: ", e)

  finally:
      # closing database connection.
      if(connection.is_connected()):
          cursor.close()
          connection.close()
          print("MySQL connection is closed")
  ```

### User Admin

### Backup and Restore

#### Restore Schema

### Mornitoring

---
