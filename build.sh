#!/bin/bash

set -e

GOOS=linux go build -o hello-world main.go 

docker build -t go-hello-world:latest .

docker run -it -p 8080:8080 go-hello-world:latest
