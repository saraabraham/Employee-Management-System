# Use a base image with Java 17 (or your preferred version)
FROM amazoncorretto:17-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build stage
COPY target/*.jar app.jar

# Expose the port your Spring Boot app runs on (usually 8080)
EXPOSE 8080

# Command to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]