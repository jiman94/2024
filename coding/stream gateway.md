
```java 

import java.util.stream.Stream;

public class StreamGateway {

    // 데이터 스트림을 처리하는 메서드
    public static void processStream(Stream<String> stream) {
        // 각 요소를 처리하는 람다 함수를 정의합니다.
        stream.forEach(element -> {
            // 여기에 요소를 처리하는 로직을 작성합니다.
            System.out.println("요소 처리: " + element);
        });
    }

    public static void main(String[] args) {
        // 데이터 스트림을 생성합니다. (예시로 간단히 문자열을 사용합니다.)
        Stream<String> dataStream = Stream.of("데이터1", "데이터2", "데이터3", "데이터4", "데이터5");

        // 데이터 스트림을 처리하는 메서드 호출
        processStream(dataStream);
    }
}


```


```java

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.integration.annotation.MessagingGateway;
import org.springframework.integration.annotation.ServiceActivator;
import org.springframework.integration.channel.DirectChannel;
import org.springframework.integration.config.EnableIntegration;
import org.springframework.messaging.MessageChannel;

@SpringBootApplication
@EnableIntegration
public class StreamGatewayApplication {

    // 메시지를 받는 채널
    @Bean
    public MessageChannel inputChannel() {
        return new DirectChannel();
    }

    // Stream Gateway를 정의하는 어노테이션
    @MessagingGateway(defaultRequestChannel = "inputChannel")
    public interface MyGateway {
        void sendMessage(String message);
    }

    // 받은 메시지를 처리하는 메서드
    @ServiceActivator(inputChannel = "inputChannel")
    public void handleMessage(String message) {
        // 받은 메시지를 처리하는 로직을 여기에 작성합니다.
        System.out.println("받은 메시지: " + message);
    }

    public static void main(String[] args) {
        SpringApplication.run(StreamGatewayApplication.class, args);
    }
}

````



```java

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class StreamGatewayApplication implements CommandLineRunner {

    @Autowired
    private StreamGatewayApplication.MyGateway myGateway;

    public static void main(String[] args) {
        SpringApplication.run(StreamGatewayApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        // 메시지 보내기
        myGateway.sendMessage("안녕하세요, Stream Gateway!");
    }
}
```
