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

### Query

#### [SELECT](https://dev.mysql.com/doc/refman/8.0/en/select.html)

- ```SQL
  SELECT      col_express, col2_express...
  FROM        table_name
  WHERE       condition_express
  ORDER BY    col_order_express, col2_order_express
  LIMIT       lines_num;
  ```

#### col_express

- wildcard \* for all column.
- `COUNT(*)` for count matched rows.
- `DISTINCT( col1 )` for count unique matched rows.
- `COUNT(DISTINCT col1)`

#### condition_express

- =, !=, >, >=, <, <=
- AND, OR, NOT
- BETWEEN, NOT BETWEEN

#### col_order_expresss

- `col ASC/DESC`
- ASC is default

### Join

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
