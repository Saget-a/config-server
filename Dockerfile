FROM openjdk:17-jdk-slim

ARG JAR_FILE=target/config-server-0.0.1-SNAPSHOT
COPY ${JAR_FILE} app.jar

EXPOSE 8888

# Команда запуску
ENTRYPOINT ["java", "-jar", "app.jar"]