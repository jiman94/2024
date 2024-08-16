#! /bin/bash

# helm upgrade --install --version 6.29.2 -f grafana-value.yaml grafana grafana/grafana -n dev-ops

helm upgrade --install -f jenkins-values.yaml jenkins jenkinsci/jenkins -n jenkins

# helm uninstall -n jenkins jenkins
