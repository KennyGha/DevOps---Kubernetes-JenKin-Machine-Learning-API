#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
#docker login
#sudo docker login
#export DOCKER_PASSWORD=12qwaszxX!Asl

#export DOCKER_USER=kttyperdevops

#export PORT=8000

dockerpath=kttyperdevops/devops:sklearnapp
docker login --username=kttyperdevops


#kubectl get deployments
# Step 2
# Run the Docker Hub container with kubernetes

#kubectl run sklearnapp --generator=run-pod/v1   --image=$dockerpath  --port=80  --labels app=sklearnapp

#echo '13'
kubectl run sklearnapp --image=dockerpath --port=80


# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl expose deployment sklearnapp --type="NodePort" --port 80sudo dock
kubectl port-forward sklearnapp 8000:80
#kubectl expose deployment/sklearnapp --type="NodePort" --port 5000
