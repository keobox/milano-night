#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok

echo "Creating a fake deployment with a replicaset of 10 pods"
echo "Hit a key..."
read

kubectl apply -f pods.yaml
sleep 1
kubectl get pods
