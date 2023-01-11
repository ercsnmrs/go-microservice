# go-microservice

## Packages
- Chi Router, CORS, & Middleware

## Commands required to build and tag then push to docker hub
- docker build -f xxxx-service.dockerfile -t username/xxxx-service:1.0.0 .
- docker push username/xxxx-service:1.0.0 "Needs to login using docker login"

## Docker Swarm
- docker swarm init
- get token by docker swarm join-token worker OR docker swarm join-token manager
- docker stack deploy -c swarm.yml "name of the swarm"