# Use the official Golang image as the base image
FROM golang:latest

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy the pre-built binary into the container
COPY hello-world .

# Command to run the executable
CMD ["./hello-world"] 
