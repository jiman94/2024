### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 

## Table of Contents

# <div id='1'/> 1. 문서 개요

opentelemetry 사용 가이드 

Grafana Loki(로그용 Prometheus)
Grafana Tempo(분산 추적)

### <div id='2'/> 1.1. 목적
      
본 문서는 opentelemetry 를 사용해 모니터링 관리를 위해 작성 하였습니다. 

# <div id='3'/> 2. opentelemetry

# <div id='3'/> 2.1 opentelemetry Values 파일 작성 

- opentelemetry-operator-values 파일 작성 



# <div id='3'/> 2.2 opentelemetry 설치 

- opentelemetry 설치 가이드 

```sh

helm upgrade --install -f opentelemetry-operator-values.yaml opentelemetry-operator opentelemetry-helm/opentelemetry-operator -n opentelemetry-operator

```


### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 