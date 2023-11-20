#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok

./nodes.sh delete 991 1000
