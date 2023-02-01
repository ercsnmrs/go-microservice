# go-microservice

## Packages
- Chi Router, CORS, & Middleware

## Commands required to build and tag then push to docker hub
- docker build -f xxxx-service.dockerfile -t username/xxxx-service:1.0.0 .
- docker push username/xxxx-service:1.0.0 [ Needs to login using docker login" ]

## Docker Swarm
- docker login
- docker swarm init
- get token by docker swarm join-token worker OR docker swarm join-token manager
- docker stack deploy -c swarm.yml [ name of the swarm ]
- docker service scale [ name of service ] = [ instances ]
- to kill -> docker service scale [ name of service ] = 0
- to remove -> docker stack rm [ name of stack ] 
- to remove swarm -> docker swarm leave --force
- sudo vi /etc/hosts

### How to update image on DS
- change version version using docker build -f xxxx-service.dockerfile -t username/xxxx-service:1.0.1 .
- then push
- have 2 instances running
- docker service update --image [ username/xxxx-service:1.0 .1 ] [ service name ] 