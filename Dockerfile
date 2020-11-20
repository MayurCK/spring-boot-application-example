FROM openjdk:8-jdk-alpine

ARG JAR_FILE=target/myapp_server-0.0.1-SNAPSHOT.jar

WORKDIR /usr/local/app

COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java","-jar","app.jar"]