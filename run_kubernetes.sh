#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
#docker login
#sudo docker login




dockerpath=kttyperdevops/devops
#docker login --username=kttyperdevops


#kubectl get deployments
# Step 2
# Run the Docker Hub container with kubernetes
docker login --username=kttyperdevops --password=12qwaszxX!Asl

#kubectl run sklearnapp  --image=$dockerpath:latest


kubectl run sklearnapp --generator=run-pod/v1   --image=$dockerpath:sklearnapp  --port=5000

#echo '13'
#kubectl run deployment.sklearnapp --image=$dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods
