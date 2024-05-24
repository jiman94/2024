## Local Development Guide

## Build on local

```sh 
./gradlew clean build
```

```sh 
./gradlew clean build -x test
```


```sh
./gradlew wrapper --gradle-version=8.7 --distribution-type=bin
```

```sh
./gradlew bootRun --args='--spring.profiles.active=local'
``` 