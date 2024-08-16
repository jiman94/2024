
## telemetry 가이드 

#### <div id='1'/> 1. 문서 개요
 
telemetry 가이드 

- OpenTelemetry Collector를 pod로 띄우고
- Spring Boot 3.x 기반의 application에서 agent를 사용하지 않고 application 내에서 trace 정보를 export 하며
- OpenTelemetry Collector가 receive 한 내용을 tempo로 export 한 후
- Grafana에서 tempo의 trace를 확인하려고 한다.


#### <div id='2'/> 2. telemetry 구성 

- fluentd Pod 로그 

![2-1-1]

- loki 로그 

http://loki-distributed-gateway.loki.svc

![2-1-2]

![2-1-3]


[2-1-1]:./images/fluentd.png
[2-1-2]:./images/loki.png
[2-1-3]:./images/loki2.png



