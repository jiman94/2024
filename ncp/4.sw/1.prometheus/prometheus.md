### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 

## Table of Contents

# <div id='1'/> 1. 문서 개요

prometheus 사용 가이드 


### <div id='2'/> 1.1. 목적
      
본 문서는 prometheus 를 사용해 모니터링 관리를 위해 작성 하였습니다. 

# <div id='3'/> 2. opentelemetry

# <div id='3'/> 2.1 opentelemetry Values 파일 작성 

- kube-prometheus-stack-values.yaml  파일 작성 

```yaml


```


# <div id='3'/> 2.2 prometheus 설치 

- prometheus 설치 가이드 

```sh

helm upgrade --install -f kube-prometheus-stack-values.yaml kube-prometheus-stack prometheus-community/kube-prometheus-stack -n prometheus


```


### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 