## Container Registry 가이드 

#### <div id='1'/> 1. 문서 개요
 
Bitbuckert CI Pipeline 가이드 

#### <div id='2'/> 2. Container Registry 

- 개발계 컨테이너 이미지 저장소 생성 

![2-1-1]

- 개발계 컨테이너 이미지 저장소 Bitbucket 레파지토리 별 


#### <div id='2'/> 2. Container Registry 

docker run -it bellsoft/liberica-openjre-alpine-musl:17.0.12-10




```sh 

docker run -it bellsoft/liberica-openjre-alpine-musl:17.0.12-10


apk add --no-cache fontconfig ttf-dejavu



/ # cat /etc/*rel*
3.20.2
NAME="Alpine Linux"
ID=alpine
VERSION_ID=3.20.2
PRETTY_NAME="Alpine Linux v3.20"
HOME_URL="https://alpinelinux.org/"
BUG_REPORT_URL="https://gitlab.alpinelinux.org/alpine/aports/-/issues"


# which java
/usr/lib/jvm/jre-17.0.12-bellsoft-x86_64/bin/java

# java -version
openjdk version "17.0.12" 2024-07-16 LTS
OpenJDK Runtime Environment (build 17.0.12+10-LTS)
OpenJDK 64-Bit Server VM (build 17.0.12+10-LTS, mixed mode)

```


```sh
docker login -u CONTAINER_REGISTRY_ACCESS -p CONTAINER_REGISTRY_ACCESS https://dev-container-registry.ncr.gov-ntruss.com

docker tag bellsoft/liberica-openjre-alpine-musl:17.0.12-10 dev-container-registry.ncr.gov-ntruss.com/openjre17:0814

docker push dev-container-registry.ncr.gov-ntruss.com/openjre17:0814

docker run -it dev-container-registry.ncr.gov-ntruss.com/openjre17:0814

```



![2-1-2]


[2-1-1]:./images/container-registry.png
[2-1-2]:./images/container-registry-all.png



