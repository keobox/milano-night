#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok

echo "Creating a fake node"
echo "Hit a key..."
read

kubectl apply -f node.yaml
sleep 1
kubectl get nodes -o wide
