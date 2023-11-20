#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok
export PYTHONUNBUFFERED=1

kubectl delete -f cr.yaml
kubectl delete -f crd.yaml
