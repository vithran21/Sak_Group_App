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
### To create network
```bash
docker network create my-network
```

### To Build Docker Image
```bash
docker build -t sakt .
```
 
### To Run mysql container
```bash
docker run --name mysql-container \
  --network my-network \
  -e MYSQL_ROOT_PASSWORD=1234 \
  -p 3306:3306 \
  -d mysql:latest
```

### To run app container
```bash
docker run --name group \
  --network my-network \
  -p 8081:8081 \
  -d sak
```

---
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
---
