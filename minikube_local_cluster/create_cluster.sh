#!/bin/bash


# minikube addons enable ingress # After the addon is enabled, please run "minikube tunnel" and your ingress resources would be available at "127.0.0.1"

# minikube addons enable metallb

# minikube ip # To get info for your IP range

kubectl apply -f metallb-coinfigmap.yaml && \
kubectl rollout restart deployment controller -n metallb-system && \
kubectl rollout restart daemonset speaker -n metallb-system

sleep 5

kubectl -n metallb-system get pods

# minikube tunnel # To start the Ingress Tunnel
