---
id: Nodejs
title: Nodejs an asynchronous event driven JavaScript runtime, designed to build scalable network applications
sidebar_label: Nodejs
---

## Overview

---

## Application

### Features

- single-threaded
- non-blocking asynchronous processing
- event-driven
- Real-time web application with Socket.io

### Applicable Scenarios

- suited for applications where each incoming request requires very few CPU cycles.
- suited for real-time web applications, such as chat rooms, collaboration tools, online games.
  -suited for "Long polling" scenarios.
- IO intensive.

---

## Architecture

<!-- ### Structures -->

### Reference Model

- System View
  > ![Alt](/img/Nodejs-Architecture-01.png "Nodejs Architecture")
- Event View
  > ![Alt](/img/Nodejs-Architecture-02.png "Nodejs Architecture")

<!-- ### Domain Tech -->

### Modules

#### Module Namespace

- Module warpping function:
  - `(function( exports, require, module, __filename, __dirname) {})`

- module.exports
  - `module.exports = MODUEL_NAME`
- Module Path
  - module file/folder
    - `MODULE = require('./PATH_TO_MODULE')`
  - node-modules dir/nested
    - `MoDULE = require('MODULE_NAME')`

#### npm: [Node Package Manager](https://docs.npmjs.com/)

- `npm init`
- `npm install PACKAGE`
- `npm install --production PACKAGE`
- `npm install --save PACKAGE`
- `npm install -g PACKAGE`
- package.json
  - `PackageName`: Major.Minor.Patch
  - `"~PackageName"`: Major.Minor.x
  - `"^PackageName"`: Major.x.x
- `npm cache clean --force`
- `npm ls`
- `npm view PACKAGE`
- `npm search PACKAGE`
- `npm update`
- `npm uninstall PACKAGE`
- `npm adduser`
- `npm publish`
- `npm audit fix --force`
  
#### Module Lists

- events
- readline
- os
- fs
- path
- zlib
- http
- zlib

### Packages

- express
- socket.io

---

## Best Practice

### Linux install and upgrade

```bash
sudo apt install nodejs npm
node -v
npm -v
sudo npm cache clean -f
sudo npm install -g n
sudo n latest | x.x.x
sudo n
node -v
npm -v
```

### Linux/Windows Initialize

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

### Dockerizing Nodejs Apps

- Dockerfile

```Dockerfile
FROM node:12-slim

# Create app directory
WORKDIR /app/MYAPP/src

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
```

- docker-compose.yml
  
```yaml
version: "3"

services:
  MYAPP:
    build: .
    container_name: MYAPP
    ports:
      - 8080:8080
      - 35729:35729
    volumes:
      - .:/app/MYAPP/src
    working_dir: /app/MYAPP/src
    restart: always
```

- makefile
  
```makefile
.PHONY : help

APP = MYAPP

help :
  @echo "help commands:"
  @echo "  make start: docker-compose up"
  @echo "  make stop: docker-compose stop"
  @echo "  make restart: docker-compose restart"
  @echo "  make down: docker-compose down"
  @echo "  make remove: docker-compose down"


start :
  @echo "create and run $(APP)"
  sudo docker-compose up -d
  @echo "done......"
  @echo

stop :
  @echo "stop $(APP)"
  sudo docker-compose stop
  @echo "done......"
  @echo

restart :
  @echo "restart $(APP)"
  sudo docker-compose restart
  @echo "done......"
  @echo

down :
  @echo "stop and remove $(APP)"
  sudo docker-compose down
  @echo "done......"
  @echo

remove :
  @echo "remvoe $(APP)"
  sudo docker-compose down
  sudo docker image rm $(APP)
  @echo "done....."
  @echo
```

### Management

### Security

---

## Misc

### Online Resources

- [Node.js Documentation](https://nodejs.org/en/docs/guides/)
- [W3School Node.js Tutorial](https://www.w3schools.com/nodejs/)
