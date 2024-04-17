```java 
import org.apache.kafka.clients.producer.*;
import org.apache.kafka.clients.consumer.*;
import java.util.Properties;

public class KafkaMessageGateway {

    // Kafka 프로듀서를 생성하는 메서드
    public static Producer<String, String> createProducer() {
        Properties props = new Properties();
        props.put("bootstrap.servers", "localhost:9092");
        props.put("key.serializer", "org.apache.kafka.common.serialization.StringSerializer");
        props.put("value.serializer", "org.apache.kafka.common.serialization.StringSerializer");
        return new KafkaProducer<>(props);
    }

    // Kafka 컨슈머를 생성하는 메서드
    public static Consumer<String, String> createConsumer() {
        Properties props = new Properties();
        props.put("bootstrap.servers", "localhost:9092");
        props.put("group.id", "test-group");
        props.put("key.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
        props.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
        return new KafkaConsumer<>(props);
    }

    public static void main(String[] args) {
        // Kafka 프로듀서 생성
        Producer<String, String> producer = createProducer();
        // Kafka 컨슈머 생성
        Consumer<String, String> consumer = createConsumer();

        // 토픽 이름 설정
        String topic = "test-topic";

        // 메시지 생성
        ProducerRecord<String, String> record = new ProducerRecord<>(topic, "key", "Hello, Kafka!");

        // 메시지 전송
        producer.send(record, (metadata, exception) -> {
            if (exception == null) {
                System.out.println("메시지가 성공적으로 전송되었습니다.");
            } else {
                System.err.println("메시지 전송 중 오류 발생: " + exception.getMessage());
            }
        });

        // 컨슈머 구독
        consumer.subscribe(java.util.Collections.singletonList(topic));

        // 메시지 소비
        ConsumerRecords<String, String> records = consumer.poll(java.time.Duration.ofMillis(100));
        for (ConsumerRecord<String, String> consumerRecord : records) {
            System.out.printf("파티션 %d로부터 메시지를 받았습니다: %s%n", consumerRecord.partition(), consumerRecord.value());
        }

        // Kafka 프로듀서 및 컨슈머 종료
        producer.close();
        consumer.close();
    }
}

```
