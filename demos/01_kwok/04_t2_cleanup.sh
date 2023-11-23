#!/bin/sh

export KUBECONFIG=~/.ssh/config.kwok

kubectl delete deployment fake-pod
kubectl delete node kwok-node-0
