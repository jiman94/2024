#! /bin/bash

# kubectl config current-context

# kubectl create ns mimir

helm upgrade --install -f mimir-values.yaml mimir-distributed grafana/mimir-distributed -n mimir