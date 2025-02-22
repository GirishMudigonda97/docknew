# Use official OpenJDK runtime as base image
FROM openjdk:21-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy built JAR file from target directory to container
COPY target/*.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
