FROM openjdk:17-jdk-slim

WORKDIR /app

ARG JAR_FILE=target/config-server-0.0.1.jar
COPY ${JAR_FILE} config-server.jar

EXPOSE 8888

ENTRYPOINT ["java", "-jar", "config-server.jar"]