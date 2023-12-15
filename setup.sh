#!/bin/bash

# Run Docker build command
docker -H localhost:5566 build -t mynginx .

# Check if build succeeded (exit code 0 indicates success)
if [ $? -eq 0 ]; then
    # Run the Docker container if build succeeded
    docker -H localhost:5566 run -d -p 80:80 mynginx
else
    echo "Docker build failed. Aborting."
fi
