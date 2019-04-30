---
id: MySQL
title: MySQL a relation database system
sidebar_label: MySQL
---

## Overview

### Online Resources

- [MySQL Website](https://www.mongodb.com)
- [MySQL Documentation](https://docs.mongodb.com/)

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

### Domain Tech

#### CRUD

- Create
- Read
- Update
  - findAndModify()
- Delete

#### Query

#### Aggregate and pipeline

#### Indexing

- Show Index
  - `db.sparseTest.getIndexes()`

#### Sharding

- `use test`
- `sh.enableSharding('test')`
- `sh.status()`

#### Replication

#### Clustering

- `rs.status()`
- `rs.stepDown()`

#### GridFS

- TODO

#### Business Continuity

---

## Best Practice

### Install and Initialize

### Drivers

### Management

#### OS Shell CMD

- login
  - `mongo -u admin -p admin admin`

- status
  - `mongostat`
  - `mongotop 10`

#### Show Info

- db
  - `show dbs`
  - `db.stats(1024)`
  - `db.serverStatus()`
- collection
  - `use DATABASE; show collections`
  - `db.postalCodes.stats(1024)`

#### renaming collection

- `db.sloppyNamedCollection.renameCollection('neatNamedCollection')`
- `db.sloppyNamedCollection.renameCollection('neatNamedCollection', true)`
- `db.runCommand({ renameCollection: "test.sloppyNamedCollection ", to: " newDatabase.neatNamedCollection", dropTarget: true })`

#### logging

- `db.getProfilingLevel()`
- `db.setProfilingLevel(1, 50)`
- `db.system.profile.find().pretty()`

### Security

#### [user admin](https://docs.mongodb.com/manual/reference/method/db.createUser/)

- `use admin`
- `db.createUser({ user:'admin', pwd:'admin', customData:{desc:'The admin user for admin db'}, roles:['readWrite', 'dbAdmin', 'clusterAdmin']})`
- `use test`
- `db.createUser({ user:'read_user', pwd:'read_user', customData:{desc:'The read only user for test database'}, roles:['read']})`
- `db.createUser({ user:'write_user', pwd:'write_user', customData:{desc:'The read write user for test database'}, roles:['readWrite']})`
- `db.auth('read_user', 'read_user')`
- `db.logout()`
- `db.auth({user:'write_user', pwd:'write_user'})`
  
---
