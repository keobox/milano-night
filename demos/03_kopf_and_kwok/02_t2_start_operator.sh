#!/bin/sh

export KUBECONFIG=~/.kube/config.kwok
export PYTHONUNBUFFERED=1

uv run kopf run node_label_oper.py
