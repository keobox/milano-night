#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok

./nodes.sh create 1 20
