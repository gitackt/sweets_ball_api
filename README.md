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

## Initial 
```
docker-compose run app rake db:create
docker-compose run app rake db:migrate
```

## Structure
- app   (Ruby on Rails) → Application API Server
- db    (MySQL)         → Database for users and assets
