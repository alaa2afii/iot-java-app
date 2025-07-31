# Use Java 17 base image (Debian-based, more compatible)
FROM eclipse-temurin:17-jdk

# Set working directory inside the container
WORKDIR /app

# Copy the jar file from local build into the container
COPY target/iot-java-app-0.0.1-SNAPSHOT.jar app.jar

# Run the application
CMD ["java", "-jar", "app.jar"]
