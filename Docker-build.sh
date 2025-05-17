#!/bin/bash
set -e

# Stop and remove previous container if it exists
if [ "$(docker ps -aq -f name=react)" ]; then
    echo "Stopping and removing existing container..."
    docker stop react || true
    docker rm react || true
fi

# Remove previous image if it exists
if docker images | grep -q react; then
    echo "Removing existing image..."
    docker rmi react:v1 || true
fi

# Build the new image
echo "Building new Docker image..."
docker build -t react:v1 .

# Run the container
echo "Running new Docker container..."
docker run -d -p 9004:80 --name react react:v1