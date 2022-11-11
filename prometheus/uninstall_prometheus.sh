#!/bin/bash

# Define namespace
NAMESPACE=monitoring
CHART_NAME=prometheus

# Uninstall Prometheus Helm Chart
helm -n $NAMESPACE delete ${CHART_NAME}
