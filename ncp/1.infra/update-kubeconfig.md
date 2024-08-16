### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 

## Table of Contents

# <div id='1'/> 1. 문서 개요

Ncloud Kubernetes Service 사용 준비

클라우드 환경 준비 사항

# <div id='1'/> 인프라 

- VPC
- Subnet 
- Load Balancer Subnet
- NAT Gateway

# <div id='1'/> 솔루션 

- Argo-CD
- fluentd
- grafana
- kube-prometheus-stack
- loki-distributed
- tempo
- istio
- 파이프라인 구성 

# <div id='1'/> 도메인 
- 신청
# <div id='1'/> 인증서 
- 신청 

- 네이버 클라우드 플랫폼 콘솔에서 Services > Database > Cloud DB for PostgreSQL 


### <div id='2'/> 1.1 목적
      
본 문서는 Infra 구성 및 운영 관리를 위해 작성 하였습니다. 

# <div id='3'/> 2. 사용자 생성 

Naver Cloud Platfrom 에 접속해 사용자 계정 생성에서 부터 설정 부분에 대해 상세 가이드 작성 하였습니다. 

# <div id='3'/> 2.1 사용자 계정 생성 

- Services > Sub Account 

![2-1-1]

- 사용자 계정 신청 


![2-1-2]

- 콘솔 접근 ( 접근 가능 IP대역 조회/변경 )
- API Gateway 접근 ( 접근 가능 Source 조회/변경 )
- Access Key 사용 일수 
- 정책 
    - NCP_FINANCE_MANAGER
    - NCP_ADMINISTRATOR

![2-1-3]

- 그룹 
- Access Key 
    - Access Key Id 
    - Secret Key 
    
![2-1-4]


# <div id='3'/> 3. 클라우드 운영 환경 구성  

Naver Cloud Platfrom 에 접속해 운영 가능 환경 구성 부분에 대해 상세 가이드 작성 하였습니다. 

# <div id='3'/> 3.1 VPC  생성 

- VPC 생성 
![3-1-6]

- VPC > 서브넷 생성 
![3-1-7]

- VPC > NAT Gateway 구성 
![3-1-13]


- VPC > Network ACL 구성 
![3-1-8]

- VPC > Route Table Private > Subnet 구성 
![3-1-9]

- VPC > Route Table Private > NATGW 구성 
    - NATGW: NAT Gateway로, Prviate Subnet에서 인터넷 Outbound 통신이 필요할 때 생성하는 관문

![3-1-10]

- VPC > Route Table Public > Subnet 구성 
![3-1-11]

- VPC > Route Table Public > Internet Gateway 구성 
    - IGW: Internet Gateway로, 인터넷 통신을 위한 관문. 공인 Route Table에서만 표시되며 임의 생성 및 삭제 불가

![3-1-12]


### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 