#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok
export PYTHONUNBUFFERED=1

echo "Going to create the Custom Resource Definition"
echo "kubectl apply -f crd.yaml"
echo "Hit enter"
read
kubectl apply -f crd.yaml

echo
echo "Going to create the Custom Resource"
echo "kubectl apply -f cr.yaml"
echo "Hit enter"
read
kubectl apply -f cr.yaml

echo
echo "Get the resource"
echo "kubectl get kopfexample -o yaml"
echo "Hit enter"
read
kubectl get kopfexample -o yaml

