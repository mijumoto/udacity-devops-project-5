#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 0:
# This is your Docker ID/path
dockerpath=mijumoto/udacity
deploymentName=ml-housing-app

if [ $1 == 'create' ]
then
    # Step 1
    kubectl create deployment $deploymentName --image=$dockerpath

    # Step 2
    kubectl get pods --output=wide

    # Step 3
    kubectl expose deployment/$deploymentName --type="NodePort" --port=8080 --target-port=80
    sleep 30
    kubectl port-forward service/$deploymentName 8080
elif [ $1 == 'cleanup' ]
then
    kubectl delete svc $deploymentName
    kubectl delete deployment $deploymentName
    minikube delete
else
  echo "No command was provided."
fi




# Cleanup
# kubectl delete svc $deploymentName
# kubectl delete deployment $deploymentName