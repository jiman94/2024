## poc Config Server

---

**소프트웨어 구성**

1. openJDK 1.8
2. Spring Boot 2.1.6 RELEASE
3. Tomcat 9 (Spring Boot Embed)
4. Spring Cloud 2.1.2 (Spring Boot Embed)
5. Gradle 5.4.1

---

**빌드**

gradlew 가 존재하는 디렉토리에서 아래 명령어를 실행합니다.
```
gradle build
```

---

**실행**

빌드시 jar 파일이 생성되는 *build/libs/* 위치에서 아래 명령어를 실행합니다.
```
java {JVM option} -jar poc-config.jar 
```
JVM option
```
-Dspring.cloud.config.server.git.uri={git repository URI}
-Dspring.cloud.config.server.git.default-label={git repository branch}
-Dspring.cloud.config.server.git.username: {git 계정}
-Dspring.cloud.config.server.git.password: {git 계정 비밀번호}
```
기본적으로 모든 설정은 develop 로 적용되어 있습니다.

---

**Server URI 형식**

직접 호출시 사용되는 url 형식 입니다.
```
http://{domain}:{port}/{application}/{profile}[/{label}]
````
- __application__: 각 프로젝트에서 bootstrap.yaml 의 spring.cloud.config.name 입니다.
- __profile__: yaml 파일의 서버별(dev, stg, prod) profile 명 입니다.
- __label__: git repository 의 branch 명 입니다.

---

**Client 설정**

각 프로젝트에서 bootstrap.yaml 에 설정하는 config server 정보입니다.
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
