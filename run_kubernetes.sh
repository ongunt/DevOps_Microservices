#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=onguntuna/microservice
# Step 2
# Run the Docker Hub container with kubernetes
docker login

kubectl run microservice\
    --image=$dockerpath\
    --port=80 --labels app=microservice


# Step 3:
# List kubernetes pods
sleep 120s
kubectl get pods
# Step 4:
# Forward the container port to a host

sleep 60s
kubectl get pods
kubectl port-forward microservice 8000:80
