### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 

## Table of Contents

# <div id='1'/> 1. 문서 개요

Jenkins 사용 가이드 

### <div id='2'/> 1.1. 목적
      
본 문서는 Jenkins 를 사용해 소스코드 품질을 점검을 위해 작성 하였습니다. 

# <div id='3'/> 2. Jenkins

# <div id='3'/> 2.1 Jenkins Values 파일 작성 

- Jenkins-values.yaml 파일 작성 

```yaml


```


# <div id='3'/> 2.2 jenkins 설치 

- jenkins 설치 가이드 


# <div id='3'/> 2.2 jenkins 설정  

- Bitbucket  Repository 설정 

![2-1-1]

- Jenkins Jacoco Plugin 설치 
  - CheckStyle, FindBugs, PMD 와 

- Build Steps 

![2-1-2]


- 빌드 후 조치
  - Record JaCoCo coverage report

```s
${workspace}

clean check jacocoTestReport

```

![2-1-3]

- Jenkins Warnings Plugin 설치 
  - Record compiler warnings and static analysis results
    - PMD Tool
  
```s 
**/pmd/main.xml
```



![2-1-4]

  - spotbugs Tool 

```s
**/spotbugs/main.xml
```



![2-1-5]

# <div id='3'/> 3. jenkins Agent 

- jenkins Agent 동작 로그 확인 

```yaml 




### [Index](./README.md) > [ Naver Cloud Infra User Guide](../README.md) 