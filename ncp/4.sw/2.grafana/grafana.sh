#! /bin/bash

# kubectl config current-context

# kubectl create ns grafana

helm upgrade --install -f grafana-values.yaml grafana grafana/grafana -n grafana

# helm uninstall  grafana  -n grafana
