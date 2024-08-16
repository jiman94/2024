#! /bin/bash

# kubectl config current-context

# kubectl create ns loki

helm upgrade --install -f loki-values.yaml loki-distributed grafana/loki-distributed -n loki

# helm uninstall -n loki loki-distributed



