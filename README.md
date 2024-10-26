# To Run 
## mvn spring-boot:run
---
### DataSource
- username=root
- password=1234
---
### Application admin Login
- username=admin
- password=sakadmin
---
### To Build Docker Image
```bash
docker build -t sakit333/sak_group:latest .
```
### To create network
```bash
docker network create my-network
```
 
### To Run mysql container
```bash
docker run --name mysql-container \
  -e MYSQL_ROOT_PASSWORD=1234 \
  -e MYSQL_DATABASE=mydatabase \
  -p 3306:3306 \
  --network my-network \
  -d mysql:latest
```

### To run app container
```bash
docker run --name grop \
  --network my-network \
  -p 8081:8081 \
  -e SPRING_DATASOURCE_URL=jdbc:mysql://mysql-container:3306/myapplication?createDatabaseIfNotExist=true \
  -e SPRING_DATASOURCE_USERNAME=root \
  -e SPRING_DATASOURCE_PASSWORD=1234 \
  -d sak
```

### To enter inside the container
```bash
docker exec -it mysql-container bash
```
```bash
docker exec -it mysql-container mysql -uroot -p
```

### To Run The Container
```bash
docker-compose up -d
```

### sample application.properties
spring.datasource.url=jdbc:mysql://mysql-container:3306/myapplication?createDatabaseIfNotExist=true
spring.datasource.username=root
spring.datasource.password=1234
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

---
