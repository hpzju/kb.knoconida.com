---
id: Nodejs
title: Nodejs
sidebar_label: Nodejs
---

# Node.js: As an asynchronous event driven JavaScript runtime, designed to build scalable network applications

## Overview

### Online Resources

- [Node.js Documentation](https://nodejs.org/en/docs/guides/)
- [W3School Node.js Tutorial](https://www.w3schools.com/nodejs/)

---

## Application

### Features

- single-threaded
- non-blocking asynchronous processing
- event-driven
- Real-time web application with Socket.io

### Applicable Scenarios

- suited for applications where each incoming request requires very few CPU cycles
- suited for real-time web applications, such as chat rooms, collaboration tools, online games
  -suited for "Long polling" scenarios

---

## Architecture

### Building Blocks

#### npm: Node Package Manager

> `npm install PACKAGE`

### Structures

#### Reference Model

- System View
  > ![Alt](/img/Nodejs-Architecture-01.png "Nodejs Architecture")
- Event View
  > ![Alt](/img/Nodejs-Architecture-02.png "Nodejs Architecture")

### Domain Tech

---

## Best Practice

### Install and Initialize

#### Linux install and upgrade

```bash
sudo apt install nodejs npm
node -v
npm -v
sudo npm cache clean -f
sudo npm install -g n
sudo n latest | x.x.x
sudo ln -sf /usr/local/n/[VERSION]/node/<version>/bin/node /usr/bin/node
node -v
npm -v
```

#### Linux/Windows Initialize

- DevOps Env

  ```bash
  cd PROJECT_ROOT
  npm init
  npm install PACKAGES --save
  node SCRIPT.js
  ```

- HelloWorld Node Env

  ```javascript
  var http = require("http");
  http
    .createServer(function(req, res) {
      res.writeHead(200, { "Content-Type": "text/plain" });
      res.end("Hello World\n");
    })
    .listen(8080, "localhost");
  console.log("Server running at http://localhost:8080");
  ```

- HelloWorld Express Env

  ```javascript
  const express = require("express"),
  const app = express();
  app.get("/", function(req, res) {
  res.send("Hello World");
  });
  app.get("*", function(req, res) {
  res.send("Page Not Found", 404);
  });
  app.listen(8080);
  console.log("Express server started on port 8080");
  ```

- HelloWorld MongoDB Env

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

### Security

---

```

```
