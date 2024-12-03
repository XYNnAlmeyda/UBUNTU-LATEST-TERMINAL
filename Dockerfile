# Use the latest Ubuntu image
FROM ubuntu:latest

# Install curl
RUN apt-get update && apt-get install -y curl

# Run the provided command
RUN curl -sSf https://sshx.io/get | sh -s run

# Get port from environment variable for Render compatibility
ENV PORT=10000

# Expose the dynamic port
EXPOSE $PORT

# Set the default command to run sshx with the specified port
CMD sshx run -p $PORT 
