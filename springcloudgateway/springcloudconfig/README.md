## poc Config File

---

**Server URI 형식**
```
/{application}/{profile}[/{label}]
````

---

**Client 설정**

config server 정보는 bootstrap.yaml 에 설정합니다.
```
spring:
  cloud:
    config:
      name: api 
      uri: http://{domain}:{port}
```
- *name* 는 application name 입니다.

- *profile* 은 실행시 jvm 옵션으로 설정합니다. *-Dspring.profiles.active=dev*

- 하나의 profile 에 multi property 파일이 존재하면 *name* 속성에 ',' 를 구분하여 설정합니다.
```
name: api,api-multi
```

---

**profile 정의**

- __dev__: 개발자 Local

- __stg__: 개발환경

- __prod__: 운영환경
