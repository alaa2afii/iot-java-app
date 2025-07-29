# IoT Java App

A minimal Spring Boot application for IoT SRE Assessment.

## Features
- `/hello` endpoint returns a greeting
- Spring Boot 3
- Maven project
- Supports Docker & CI/CD

## Run locally
```bash
mvn spring-boot:run
```

Access at: `http://localhost:8080/hello`

## Package
```bash
mvn clean package
```

## Docker Build (Optional)
```Dockerfile
FROM openjdk:17-alpine
COPY target/iot-java-app*.jar app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
```
```bash
docker build -t iot-java-app .
docker run -p 8080:8080 iot-java-app
```
