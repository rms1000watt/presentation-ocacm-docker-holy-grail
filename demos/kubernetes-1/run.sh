#!/usr/bin/env bash

helm repo add rms1000watt https://rms1000watt.github.io/helm-charts
helm install rms1000watt/monochart -f values.yml
# helm ls -q | xargs helm delete
