# Sweets trader API
This repository is a API server for trading game Sweets trader. 


## Set up
```
docker-compose build
```


## Development
```
docker-compose up -d
```

http://localhost:3000


## Structure
- app   (Ruby on Rails) → Application API Server
- cache (Redis)         → Database for orders
- db    (MySQL)         → Database for users and assets
- job   ()              → Deal bid-ask orders
