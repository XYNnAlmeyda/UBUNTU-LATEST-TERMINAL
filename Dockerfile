# Use the latest Ubuntu image
FROM ubuntu:latest

# Install curl
RUN apt-get update && apt-get install -y curl

# Run the provided command
RUN curl -sSf https://sshx.io/get | sh -s run

# Expose the port (replace 80 with the actual port you need)
EXPOSE 80

# Set the default command to keep the container running
CMD ["tail", "-f", "/dev/null"]
