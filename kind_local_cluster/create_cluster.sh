#!/bin/bash

## Verify if Cluster Name is passed
if [ -z "$1" ]
then
 echo "Cluster Name is needed!"
 exit 1
fi

CLUSTER_NAME=$1

cat <<EOF | kind create cluster -n ${CLUSTER_NAME} --config=-
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
  kubeadmConfigPatches:
  - |
    kind: InitConfiguration
    nodeRegistration:
      kubeletExtraArgs:
        node-labels: "ingress-ready=true"
  extraPortMappings:
  - containerPort: 80
    hostPort: 80
    protocol: TCP
  - containerPort: 443
    hostPort: 443
    protocol: TCP
EOF

echo "\nTo connect to cluster, use: kubectl cluster-info --context $1\n"

# Install Nginx Controller
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml

# Wait Nginx Controller to be up
kubectl wait --namespace ingress-nginx \
  --for=condition=ready pod \
  --selector=app.kubernetes.io/component=controller \
  --timeout=90s
