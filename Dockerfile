# Use the same Java version as your workflow
FROM eclipse-temurin:11-jre-alpine

WORKDIR /app

# Copy "whatever jar was built" to /app/app.jar
COPY build/libs/*.jar /app/app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
