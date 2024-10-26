FROM openjdk:17-jdk-slim
WORKDIR /app
COPY ./target/spring_app_sak-0.0.1-SNAPSHOT.jar app.jar
# Set environment variables
ENV SPRING_DATASOURCE_URL=jdbc:mysql://mysql-container:3306/myapplication?createDatabaseIfNotExist=true
ENV SPRING_DATASOURCE_USERNAME=root
ENV SPRING_DATASOURCE_PASSWORD=1234
EXPOSE 8081
CMD ["java", "-jar", "app.jar"]

