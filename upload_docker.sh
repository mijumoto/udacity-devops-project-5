#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=mijumoto/udacity

# Step 2:  
docker login --username mijumoto
docker tag ml_housing_image $dockerpath
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push $dockerpath
