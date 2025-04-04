#!/bin/bash

set -e

kubectl apply -f deployment.yaml

minikube tunnel
