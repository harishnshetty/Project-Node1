#!/bin/bash
set -e

# Stop and remove previous container if it exists
if [ "$(docker ps -aq -f name=react)" ]; then
    echo "Stopping and removing existing container..."
    docker stop react || true
    docker rm react || true
fi

# Remove previous image if it exists
if docker images | grep -q hello; then
    echo "Removing existing image..."
    docker rmi hello:v1 || true
fi

# Build the new image
echo "Building new Docker image..."
docker build -t hello:v1 .

# Run the container
echo "Running new Docker container..."
docker run -d -p 9003:8080 --name hello hello:v1