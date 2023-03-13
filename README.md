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
- docker pull ercsnmrs/micro-caddy-production:1.0.1 
- docker service update --image [ username/xxxx-service:1.0.1 ] [ service name ] 

### Linode Linux Notes
- add user -> adduser [ username ]
- make user have sudo privileges -> usermod -aG sudo [ username ]
- create firewall -> ufw allow ssh | ufw allow http | ufw allow https | ufw allow 2377/tcp | ufw allow 7946/tcp | ufw allow 7946/udp | ufw allow 4789/udp | ufw allow 8025/tcp
- ufw allow ssh
- sudo hostnamectl set-hostname node-1
- docker swarm init --advertise-addr [ ip ] then copy swarm token to node 2
- sudo mkdir swarm | sudo chown evm:evm swarm/
-  vi swarm.yml
- sudo usermod -aG docker evm
- gluster and SSHFS is one way to share assets over volumes/nodes

### K8s
- Currently the container is locally exponse to expose it we can use node-port or load balancer or Ingress (like caddy in swarm file)
- Ingress is like a webserver called NGINX that will handle request from outside then send to which resource
- minikube addons enable ingress
- Scaling K8s, we can go to minikube and edit resource (find replicas to 2)
- we can configure k8s to scale depending on the traffic we are getting
