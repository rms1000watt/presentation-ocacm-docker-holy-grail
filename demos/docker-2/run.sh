#!/usr/bin/env bash

GOOS=linux go build -o hello-world
docker build -t hello-world-server .
docker run -p 8080:8080 hello-world-server
