#!/bin/bash
docker build -t usermanager . && docker run -p 49160:8080 -d usermanager && cd /UserDatabase &&  $ docker run --name some-mongo -d mongo 