#!/usr/bin/env bash

docker pull hello-world
docker pull rms1000watt/dummy-golang-project

cd docker-2
GOOS=linux go build -o hello-world
docker build -t hello-world-server .
cd ..
