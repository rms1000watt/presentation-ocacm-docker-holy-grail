#!/usr/bin/env bash

helm ls -q | xargs helm delete
