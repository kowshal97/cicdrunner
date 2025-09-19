FROM eclipse-temurin:11-jre-alpine

WORKDIR /app

# copy the jar that Gradle actually built (whatever its name is)
COPY build/libs/*.jar /app/app.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","/app/app.jar"]
