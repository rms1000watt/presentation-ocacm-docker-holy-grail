#!/usr/bin/env bash

docker run -p 5678:5678 hashicorp/http-echo -text="hello world"
