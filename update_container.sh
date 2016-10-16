#!/bin/sh

# Stop the current container
docker stop aroundapp

# Remove the current container
docker rm aroundapp

# Build a new image
docker build -t aroundapp:v1 .

# Remove all untagged images
# Eventually the previous image
if [[ $(docker images | grep "^<none>" | awk '{print $3}') ]]; then
  echo "Deleting the previous image..."
  echo $(docker images | grep "^<none>" | awk '{print $3}')
  docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
fi

# Run a new container out of the updated image just created
docker run -d --name aroundapp -p 8081:5000 aroundapp:v1 python aroundapp/run.py