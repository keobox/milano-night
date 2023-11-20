#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok
export PYTHONUNBUFFERED=1

echo "Going to create the Custom Resource Definition"
echo "Hit a key"
read
kubectl apply -f crd.yaml

echo "Going to create the Custom Resource"
echo "Hit a key"
read
kubectl apply -f cr.yaml

echo "Get the resource"
read
kubectl get kopfexample

