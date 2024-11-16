FROM openjdk:17-jdk-slim
# Set working directory
WORKDIR /app
# Copy the application JAR
COPY ./target/*.jar app.jar
# Set environment variables
ENV SPRING_DATASOURCE_URL=jdbc:mysql://database-1.cvmc042w6kup.ap-south-1.rds.amazonaws.com:3306/myapplication?createDatabaseIfNotExist=true
ENV SPRING_DATASOURCE_USERNAME=admin
ENV SPRING_DATASOURCE_PASSWORD=Admin1234
# Expose port
EXPOSE 8081
# Start the application
ENTRYPOINT ["java", "-jar", "app.jar"]
