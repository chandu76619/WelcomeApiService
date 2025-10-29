# Use Java 17 base image
FROM eclipse-temurin:17-jdk

# Set working directory inside container
WORKDIR /app

# Copy the JAR file from target folder into container
COPY target/WelcomeApiService-0.0.1-SNAPSHOT.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8082

# Run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
