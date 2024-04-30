#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok

kubectl delete deployment fake-pod
kubectl delete node kwok-node-0
