#!/usr/bin/env bash

minikube delete
minikube start
minikube addons enable ingress

docker push bmedora/go-hello-world:latest

# wait for ingress-nginx to be ready
kubectl -n ingress-nginx rollout status deploy/ingress-nginx-controller
