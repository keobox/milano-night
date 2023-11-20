#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok

./nodes.sh delete 1 20
