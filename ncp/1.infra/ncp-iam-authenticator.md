
## Table of Contents

# <div id='1'/> 1. 문서 개요

네이버 클라우드 환경에서 Ncloud Kubernetes Service 구성 


# <div id='3'/> 3.2 Ncloud Kubernetes Service  생성 

![3-1-1]

```sh 

curl -o ncp-iam-authenticator -L https://github.com/NaverCloudPlatform/ncp-iam-authenticator/releases/latest/download/ncp-iam-authenticator_darwin_amd64

```

# <div id='3'/> 3.3 ncp-iam-authenticator 설치

```sh 
chmod +x ./ncp-iam-authenticator

cp ./ncp-iam-authenticator ~/bin

ncp-iam-authenticator help

```


# <div id='3'/> 3.4 kubectl 설치 

```sh 

curl -LO "https://dl.k8s.io/release/v1.27.9/bin/darwin/amd64/kubectl"

```

# <div id='3'/> 3.5 클라우드 접근 설정  


```sh 
vi ~/.ncloud/configure
[DEFAULT]
ncloud_access_key_id = 생략 
ncloud_secret_access_key = 생략 
ncloud_api_url = https://ncloud.apigw.gov-ntruss.com
```


# <div id='3'/> 3.6 update-kubeconfig

```sh 
ncp-iam-authenticator update-kubeconfig --region KR --clusterUuid 

/Users/mz03-jmryu/.kube/config

```

# <div id='3'/> 3.7 kube 네이스페이스 확인 

```sh 
kubectl get namespaces
```
