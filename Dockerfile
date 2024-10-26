FROM openjdk:17-jdk-slim

WORKDIR /app

COPY spring_app_sak.jar app.jar

EXPOSE 8081

ENTRYPOINT ["java", "-jar", "app.jar"]
