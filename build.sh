#!/bin/bash

set -e

export CGO_ENABLED=0 
export GOOS=linux

# Build Go binary
go build -o hello-world main.go 

# Build Docker image
docker build -t bmedora/go-hello-world:latest .

# Run container
docker run -it -p 8080:8080 bmedora/go-hello-world:latest
