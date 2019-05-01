---
id: MongoDB
title: MongoDB a document database with the scalability and flexibility
sidebar_label: MongoDB
---

## Overview

### Learning Resources

- [MongoDB Website](https://www.mongodb.com)
- [MongoDB Documentation](https://docs.mongodb.com/)
- [MongoDB in Action](https://www.google.com)

---

## Application

### Features

- Document data model
  - Denomalization
  - Aggregation
- Schema-less design
- Ad hoc Query
  - Key-Value database lack of this
- [Indexing](#indexing)
  - B-Tree based algorithm
  - Primary Key is system built-in
  - Secondary keys can support business cases query
- [Sharding](#sharding)
- [Replication](#replication)
  - replica sets accross mulitple servers
  - 1 Primary + 1 or more Secondary
- Speed and Durability
  - user configurable writeconcern
  - fire-and-forget mode
  - atomic mode
- Scalling
  - scale-out using sharding
- JSON-friendly database

### Applicable Scenarios

- Web Application
- Agile DevOps
- Analytics and Logging
- Caching with Query
- Variable Schema

---

## Architecture

### Building Blocks

#### Data Model

- Feilds
- Values
- Documents
- Collections
- Databases
  - namespace and physical group of collections and their indexes

#### System Model

- Core Server
  - mongod
    - standalone
    - replica set
  - mongos
    - sharding/replica router
- Java Shell
  - mongo
- [Database Drivers](#drivers)
  - Python, Javascript, Java, C, C++...
- System Tools
  - mongodump/mongorestore
  - bsondump
  - mongoexport/mongoimport
  - mongostat/mongotop
  - mongofiles

### Structures

### Domain Tech

#### CRUD

- Create
  - [db.createCollection(name, options)](https://docs.mongodb.com/manual/reference/method/db.createCollection/index.html)
    - capped collection
    - TTL collection
  - [db.collection.insert()](https://docs.mongodb.com/manual/reference/method/db.collection.insert/)
  - `db.users.insert([{"userame": "jone2"},{userame: "jane"}])`
  - [db.collection.save()](https://docs.mongodb.com/manual/reference/method/db.collection.save/)
- Read
- Update
  - [db.collection.renameCollections()](https://docs.mongodb.com/manual/reference/method/db.collection.renameCollection/)
  - [db.collection.update()](https://docs.mongodb.com/manual/reference/method/db.collection.update/)
- Delete
  - `use DATABASE`
  - `db.dropDatabase()`
  - `db.COLLECTION.drop()`
  - [db.collection.remove()](https://docs.mongodb.com/manual/reference/method/db.collection.remove/)
    - `db.COLLECTION.remove({})`
  - [db.collecction.deleteOne()](https://docs.mongodb.com/manual/reference/method/db.collection.deleteOne/)
  - [db.collecction.deleteMany()](https://docs.mongodb.com/manual/reference/method/db.collection.deleteMany/)

#### Query

- [db.collection.findOne()](https://docs.mongodb.com/manual/reference/method/db.collection.findOne/index.html)
- [db.collection.find()](https://docs.mongodb.com/manual/reference/method/db.collection.find/)
  - `db.postalCodes.find({}, {_id:0, city:1, state:1, pincode:1}).skip(90). limit(10)`
  - `db.postalCodes.find({state:'Gujarat'},{_id:0, city:1, state:1, pincode:1}).sort({city:1}).limit(10)`
- logical operator
  - $and, $or, $xor, $not
    - `{ $and: [ { <expression1> }, { <expression2> } , ... , { <expressionN> } ] }`
    - `{ field: { $not: { <operator-expression> } } }`
- comparison operator
  - $lt, $gt, $lte, $gte, \$ne, $in, $nin
    - `{field: {$gt: value} }`
    - `{ field: { $in: [<value1>, <value2>, ... <valueN> ] } }`
- element operator
  - $exist,
    - `{ field: { $exists: <boolean> } }`
  - $type
    - `{ field: { $type: <BSON type> } }`
    - [BSON Types](https://docs.mongodb.com/manual/reference/operator/query/type/#document-type-available-types)
- evaluation operator
  - $regex
    - `{ <field>: { $regex: /pattern/, $options: '<options>' } }`
    - `{ <field>: { $regex: 'pattern', $options: '<options>' } }`
    - `{ <field>: { $regex: /pattern/<options> } }`
  - $expr
  - $jsonSchema
  - $mod
  - $text
  - $where
- array operator
  - $all
  - $size
  - $elemMatch
- bitwise operator
  - bitsAllClear, bitsAllSet, bitsAnyClear, bitsAnySet
- geospatial
- sort, skip, limit
  
#### Aggregate and pipeline

#### [Indexing](https://docs.mongodb.com/manual/reference/method/db.collection.createIndex/)

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

#### Install on Win/Linux

- Please refer to [MongoDB Documentation Site](https://docs.mongodb.com/manual/administration/install-community/)

#### [docker](https://hub.docker.com/_/mongo?tab=description)

- `docker image pull mongo`
- `docker container run --name myMongoDB -p 27017:27017 -v mongodb_data:/data/db -e MONGO_INITDB_ROOT_USERNAME=mongoadmin -e MONGO_INITDB_ROOT_PASSWORD=secret -d mongo`
- `docker exec -it myMongoDB bash`

#### docker-compose

- `sudo docker-compose up -d`
- `sudo docker-compose down`
- docker-compose.yml

  ```yaml
  # Use root/example as user/password credentials
  version: "3.5"

  services:
    mongo:
      image: mongo
      container_name: myMongoDB
      restart: always
      ports:
        - 27017:27017
      volumes:
        - mongodb_data:/data/db
      environment:
        MONGO_INITDB_ROOT_USERNAME: root
        MONGO_INITDB_ROOT_PASSWORD: example

  volumes: mongodb_data:
  ```

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

- login

  - `mongo --host HOST -u admin -p admin --authenticationDatabase admin DATABASE`

- status
  - `mongostat`
  - `mongotop 10`

#### Show Info

- db
  - `show dbs`
  - `db.stats(1024)`
  - `db.serverStatus()`
  - `use DATABASE`
  - `db`
- collection
  - `use DATABASE`
  - `show collections`
  - `db.postalCodes.stats(1024)`
- execution
  - [cursor.explain()](https://docs.mongodb.com/manual/reference/method/cursor.explain/index.html)
  - [db.runCommand()](https://docs.mongodb.com/manual/reference/method/db.runCommand/#db.runCommand)

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
