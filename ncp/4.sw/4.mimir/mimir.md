### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 

## Table of Contents

# <div id='1'/> 1. 문서 개요

mimir 사용 가이드 

Grafana Mimir은 Prometheus의 장기 저장을 위한 오픈 소스, 수평적으로 확장 가능한, 고가용성, 멀티 테넌시 시계열 데이터베이스(TSDB)입니다.
Grafana Loki(로그용 Prometheus)
Grafana Tempo(분산 추적)

### <div id='2'/> 1.1. 목적
      
본 문서는 mimir 를 사용해 로그 관리를 위해 작성 하였습니다. 

# <div id='3'/> 2. mimir

# <div id='3'/> 2.1 mimir Values 파일 작성 

- mimir-values.yaml 파일 작성 

```yaml



```


# <div id='3'/> 2.2 mimir 설치 

- mimir 설치 가이드 

```sh

helm upgrade --install -f mimir-values.yaml mimir-distributed grafana/mimir-distributed -n mimir

```




### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 