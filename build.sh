#!/bin/bash

GOOS=linux go build -o hello-world main.go 

docker build -t go-hello-world:latest .

docker run -it go-hello-world:latest
