# kurento 

docker pull kurento/kurento-media-server:7.0.0

docker run -d --name kurento --network host \
    kurento/kurento-media-server:7.0.0

## Kurento 솔루션 구동 명령어
* Kurento는 다양한 명령어를 통해 실행 및 제어할 수 있습니다. 주요 Kurento 솔루션 구동 명령어는 다음과 같습니다.

#### 1. Kurento Media Server 시작 및 종료
```sh 
kurento-media-server -c config.json: 지정된 설정 파일을 사용하여 Kurento Media Server를 시작합니다.
kurento-media-server -stop: Kurento Media Server를 종료합니다.
kurento-media-server -restart: Kurento Media Server를 다시 시작합니다.
```

#### 2. KMS 관리
```sh 
kurento-media-server-admin list_applications: 실행 중인 모든 응용 프로그램 목록을 표시합니다.
kurento-media-server-admin get_app_info app_id: 특정 응용 프로그램 정보를 표시합니다.
kurento-media-server-admin stop_application app_id: 특정 응용 프로그램을 종료합니다.
```

#### 3. Media Elements 제어

```sh 

kurento-media-elements -c config.json: 지정된 설정 파일을 사용하여 Media Elements를 시작합니다.
kurento-media-elements -stop: Media Elements를 종료합니다.
kurento-media-elements -restart: Media Elements를 다시 시작합니다.
```

#### 4. Media Element 관리

```sh 
kurento-media-elements-admin list_elements: 실행 중인 모든 Media Elements 목록을 표시합니다.
kurento-media-elements-admin get_element_info element_id: 특정 Media Element 정보를 표시합니다.
kurento-media-elements-admin stop_element element_id: 특정 Media Element를 종료합니다.
```

#### 5. 기타 명령어

```sh 
kurento-media-server -help: Kurento Media Server 명령어 도움말을 표시합니다.
kurento-media-elements -help: Media Elements 명령어 도움말을 표시합니다.
```
* 도움이 되는 자료:

```sh 
Kurento Documentation: [유효하지 않은 URL 삭제됨]
Kurento Community Forum: [유효하지 않은 URL 삭제됨]
```


* 다음은 Kurento 솔루션을 구동하는 데 사용할 수 있는 몇 가지 예제 명령어입니다.

#### 기본 Kurento Media Server 실행:
```sh 
kurento-media-server -c myconfig.json
```

#### 실행 중인 모든 응용 프로그램 목록:
```sh 
kurento-media-server-admin list_applications
```

#### 특정 응용 프로그램 정보:
```sh 
kurento-media-server-admin get_app_info 1234
```
#### Media Elements 실행:
```sh 
kurento-media-elements -c myconfig.json
```
#### 실행 중인 모든 Media Elements 목록:
```sh 
kurento-media-elements-admin list_elements
```

#### 특정 Media Element 정보:
```sh 
kurento-media-elements-admin get_element_info abcdef
Kurento 실행 명령어를 사용하여 Kurento 솔루션을 원하는 대로 실행하고 제어할 수 있습니다.
```
