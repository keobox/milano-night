#!/bin/sh

OS=`uname -s`
if [ $OS == "Darwin" ]; then
    podman machine start
fi

podman run --rm -it -p 8080:8080 registry.k8s.io/kwok/cluster:v0.4.0-k8s.v1.28.0
