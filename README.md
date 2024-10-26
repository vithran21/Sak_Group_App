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
### To Run mysql container
```bash
docker run --name mysql-container \
  -e MYSQL_ROOT_PASSWORD=1234 \
  -p 3306:3306 \
  -d mysql:latest
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
---
