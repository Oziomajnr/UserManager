[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# User Manager

This repository contains a simple demo API built with NodeJS.
The API is used to manage users in a MongoDB database.

### Development
This application was developed using [ExpressJS](http://expressjs.com/). MongoDB was used for persisting data with [Mongoose](https://mongoosejs.com/) as [ORM](https://en.wikipedia.org/wiki/Object-relational_mapping).


### Docker Setup
To run this application on docker follow these steps
* Create a `.env` file in your root directory. Variables such as DB_URL (which must be a mongoDB URL) and PORT are defined in the .env file
```
PORT=3000
DB_URL='mongodb://john:doe@localhost:27017/databaseName'
```
and it is essential you create this file before running the application. This file has been added to git ignore so it is not available from this repo and has to be created manually.
* Make sure you have Docker installed and running on your machine, follow the guide https://docs.docker.com/engine/installation/  on how to install  and Run Docker.
Note: Docker has to be running with Admin privilege.
* Run the script startup.sh which would install the images for the node.js application and the Mongo Db database.
* Run the command ``` docker ps ``` to know the ports that the mongo db application is running on, then replace the mongo db url  in .env file with the new url.
* Run the command  ```docker restart [ContainerId] ``` to restart the node container. you can get the container id of the node container from the list of containers after running the ```docker ps``` command.

###### Running with docker Toolbox
* If your machine does not meet the minimun requirement to run docker natively, then you can use the docker toolbox but then you would not be able to run the script startup.sh. 
* To install the Docker toolbox, follow the instructions from https://docs.docker.com/toolbox/overview/.
* After installing and starting the docker toolbox, run the individual commands from startup.sh in the toolbox command prompt.
Note: running startup.sh would not work, as it requires docker to be installed natively on the machine.

###### Database
* The application relies on the existence of a User database running on MONGO DB with a collecttion named ```user```
the structure of the data in the userdatabase is as follows.
{
  "_id": "59071791b0lkscm2325794",
  "name": "John Doe",
  "email": "john.doe@gmail.com",
  "password": "johndoe",
}

### Installation
* Start up your terminal (or Command Prompt on Windows OS).
* Ensure that you've `node` installed on your PC.
* Clone the repository by entering the command `git clone https://github.com/andela-bolajide/UserManager` in the terminal.
* Navigate to the project folder using `cd UserManager` on your terminal (or command prompt)
* After cloning, install the application's dependencies with the command `npm install`.
* Create a `.env` file in your root directory as described in `.env.sample` file. Variables such as DB_URL (which must be a mongoDB URL) and PORT are defined in the .env file and it is essential you create this file before running the application.
```
PORT=3000
DB_URL='mongodb://john:doe@localhost:27017/databaseName'
```
* After this, you can then start the server with the command: `npm start`.


### Testing
To ensure that your installation is successful you'll need to run tests.
The command: `npm test` makes this possible. It isn't functional right now, but once it's done you'll be notified via the README.

### API Documentation
The API only has one endpoint which is the `/users` endpoint for saving users to the database. The endpoint works with the HTTP verbs: `POST`, `GET`, `PUT`, `DELETE`.

###### POST HTTP Request
-   `POST` /users
-   INPUT:
```x-form-url-encoded
name: John Doe
email: john.doe@gmail.com
password: johndoe
```

###### HTTP Response

-   HTTP Status: `201: created`
-   JSON data
```json
{
  "_id": "59071791b0lkscm2325794",
  "name": "John Doe",
  "email": "john.doe@gmail.com",
  "password": "johndoe",
  "__v": 0
}
```

###### GET HTTP Response
-   `GET` /users

```json
[
    {
        "_id": "59071791b0lkscm2325794",
        "name": "John Doe",
        "email": "john.doe@gmail.com",
        "password": "johndoe",
        "__v": 0
    }
]
```

###### GET HTTP Response
-   `GET` /users/:id

```json
{
    "_id": "59071791b0lkscm2325794",
    "name": "John Doe",
    "email": "john.doe@gmail.com",
    "password": "johndoe",
    "__v": 0
}
```

###### DELETE HTTP Response
-   `DELETE` /users/:id

```json
User John Doe was deleted
```

###### POST HTTP Request
-   `PUT` /users/:id
-   INPUT:
```x-form-url-encoded
name: Jane Doe
email: jane.doe@gmail.com
password: janedoe
```

###### HTTP Response

-   HTTP Status: `200: OK`
-   JSON data
```json
{
  "_id": "59071791b0lkscm2325794",
  "name": "Jane Doe",
  "email": "jane.doe@gmail.com",
  "password": "janedoe",
  "__v": 0
}
```



### Author
**Olajide Bolaji 'Nuel** - Software Developer at Andela
