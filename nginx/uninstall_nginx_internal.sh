#!/bin/bash

NAMESPACE=nginx-internal

helm -n ${NAMESPACE} delete nginx-internal

kubectl delete ns ${NAMESPACE}
