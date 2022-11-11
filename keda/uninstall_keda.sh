#!/bin/bash

NAMESPACE=keda

helm -n ${NAMESPACE} delete keda

kubectl delete ns ${NAMESPACE}
