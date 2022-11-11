#!/bin/bash

## https://github.com/kedacore/charts/tree/main/keda

# Adding Helm Repos
helm repo add kedacore https://kedacore.github.io/charts
helm repo update

# Defining namespace
NAMESPACE=keda

# Create namespace if it not exists
kubectl create ns ${NAMESPACE} || true

# Install Keda Helm Chart
helm upgrade --install keda \
		--namespace ${NAMESPACE} \
		-f values.yaml \
		kedacore/keda
