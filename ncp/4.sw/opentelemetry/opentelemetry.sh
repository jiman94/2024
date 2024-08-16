#! /bin/bash


# kubectl config current-context

# kubectl create ns opentelemetry-operator

helm upgrade --install -f opentelemetry-operator-values.yaml opentelemetry-operator opentelemetry-helm/opentelemetry-operator -n opentelemetry-operator

helm repo add open-telemetry https://open-telemetry.github.io/opentelemetry-helm-charts

helm repo update

helm upgrade -i opentelemetry-operator open-telemetry/opentelemetry-operator
