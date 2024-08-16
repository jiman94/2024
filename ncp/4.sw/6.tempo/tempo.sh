#! /bin/bash


# kubectl config current-context

# kubectl create ns tempo

helm upgrade --install -f tempo-values.yaml tempo grafana/tempo-distributed -n tempo 