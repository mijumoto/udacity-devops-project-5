#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build -t ml_housing_image .

# Step 2: 
docker ps

# Step 3: 
docker run -p 8080:80 --name ml_housing_app -it ml_housing_image