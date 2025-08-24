# Use an official OpenJDK runtime as a base image
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the JAR file from the target directory into the container
COPY target/my-app-1.0.jar /usr/src/app/simple-java-app.jar

# Expose the application on port 8080 (if your app is web-based)
EXPOSE 8080

# Command to run the JAR file
CMD ["java", "-jar", "/usr/src/app/simple-java-app.jar"]

