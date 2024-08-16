#! /bin/bash


# kubectl config current-context

# kubectl create ns fluentd

# kubectl get event --all-namespaces


# helm upgrade --install --version 6.29.2 -f grafana-value.yaml grafana grafana/grafana -n dev-ops

helm upgrade --install -f fluentd-values.yaml fluentd bitnami/fluentd -n fluentd


# helm install -f fluentd-values.yaml fluentd bitnami/fluentd -n fluentd


# helm uninstall -n fluentd fluentd

