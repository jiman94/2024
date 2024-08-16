#! /bin/bash


# kubectl config current-context

# kubectl create ns argo-cd

# helm upgrade --install --version 6.29.2 -f grafana-value.yaml grafana grafana/grafana -n dev-ops

helm upgrade --install -f argo-values.yaml argo-cd argo/argo-cd -n argo-cd
