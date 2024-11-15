FROM openjdk:17
EXPOSE 8090
COPY "target/Clase13_APIGateway-0.0.1-SNAPSHOT.jar" /tmp
WORKDIR /tmp
ENTRYPOINT ["java","-jar","Clase13_APIGateway-0.0.1-SNAPSHOT.jar","--eureka.client.service-url.defaultZone=http://eureka-server:8761/eureka"]