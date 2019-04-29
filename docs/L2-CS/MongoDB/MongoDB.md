---
id: MongoDB
title: MongoDB
sidebar_label: MongoDB
---

# MongoDB: a document database with the scalability and flexibility

## Overview

### Online Resources

- [MongoDB Website](https://www.mongodb.com)
- [MongoDB Documentation](https://docs.mongodb.com/)

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

#### Query

- [db.collection.find()](https://docs.mongodb.com/manual/reference/method/db.collection.find/)
  - `db.postalCodes.find({}, {_id:0, city:1, state:1, pincode:1}).skip(90). limit(10)`
  - `db.postalCodes.find({state:'Gujarat'},{_id:0, city:1, state:1, pincode:1}).sort({city:1}).limit(10)`

#### Aggregate and pipeline:

#### Indexing

- Show Index
  - `db.sparseTest.getIndexes()`
- Foregroud Indexing
  - `db.indexTest.createIndex({value:1})`
- Backgroud Indexing
  - `db.indexTest.createIndex({value:1}, {background:true})`
- Sparse Indexing
  - `db.sparseTest.createIndex({y:1}, {unique:1, sparse:1})`
- hind() forced full scan
  - `db.sparseTest.find({y:{$ne:2}}, {_id:0}). hint({y:1}).limit(15)`
- TTL Indexing
  - `db.ttlTest.createIndex({createDate:1}, {expireAfterSeconds:300})`

#### Sharding

#### Replication

#### Clustering

#### Business Continuity

---

## Best Practice

### Install and Initialize

### Drivers

- Pymongo

  ```python
  import pymongo
  import sys

  # establish a connection to the database
  client = pymongo.MongoClient("mongodb://localhost")

  # get a handle to the school database
  db_school = client.school
  col_grades = db_school.grades

  def find():

      print("find, reporting for duty")

      query = {'type': "exam"}
      selector = {'student_id': 1, '_id': 0, 'score': 1}

      try:
          cursor = col_grades.find(query, selector).skip(30).limit(10)
      except:
          print("Unexpected error:", sys.exc_info()[0])

      sanity = 0
      for doc in cursor:
          print(doc)
          sanity += 1
          if (sanity > 10):
              break

  def main():
      find()

  if __name__ == "__main__":
      main()
  ```

- JavaScript Mongo

  ```javascript
  const MongoClient = require("mongodb").MongoClient;
  const assert = require("assert");

  (async function() {
    // Connection URL
    const url = "mongodb://localhost:27017/learn";
    // Database Name
    const dbName = "learn";
    const client = new MongoClient(url, { useNewUrlParser: true });

    try {
      // Use connect method to connect to the Server
      await client.connect();
      console.log("******Connected successfully to server");

      const db = client.db(dbName);
    } catch (err) {
      console.log(err.stack);
    }

    client.close();
    console.log("******Closed successfully to server");
  })();
  ```

### Management

#### OS Shell CMD

- `mongostat`
- `mongotop 10`

#### Show Info

- `show dbs`
- `db.stats(1024)`
- `use DATABASE; show collections`
- `db.postalCodes.stats(1024)`

#### renaming collection

- `db.sloppyNamedCollection.renameCollection('neatNamedCollection')`
- `db.sloppyNamedCollection.renameCollection('neatNamedCollection', true)`
- `db.runCommand({ renameCollection: "test.sloppyNamedCollection ", to: " newDatabase.neatNamedCollection", dropTarget: true })`

#### renaming collection

- `db.sloppyNamedCollection.renameCollection('neatNamedCollection')`
-

### Security

---
