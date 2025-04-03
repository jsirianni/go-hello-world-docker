#!/bin/bash

set -e

minikube delete
minikube start
minikube addons enable ingress || minikube addons enable ingress

docker tag go-hello-world:latest bmedora/go-hello-world:latest
docker push bmedora/go-hello-world:latest

kubectl apply -f deployment.yaml

minikube tunnel
