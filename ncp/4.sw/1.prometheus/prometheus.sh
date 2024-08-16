#! /bin/bash

# kubectl create namespace prometheus

# helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
# helm repo update

helm upgrade --install -f kube-prometheus-stack-values.yaml kube-prometheus-stack prometheus-community/kube-prometheus-stack -n prometheus

#### install guide
# https://github.com/prometheus-community/helm-charts/blob/main/charts/kube-prometheus-stack/README.md


