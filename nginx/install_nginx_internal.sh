#!/bin/bash

# Source Code
# https://github.com/kubernetes/ingress-nginx

# Adding and updating Repositories
helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update

# Setting usefull variables
NAMESPACE=nginx-internal

# Create Nginx Namespace
kubectl create ns ${NAMESPACE} || true

# Installing Helm 3 Nginx Ingress Controller
helm upgrade --install nginx-internal \
            --namespace ${NAMESPACE} \
            -f values_internal.yaml \
            ingress-nginx/ingress-nginx
