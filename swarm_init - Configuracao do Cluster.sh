#!/bin/bash

# Inicializa o Docker Swarm
docker swarm init

# Configurações do cluster
docker node update --label-add db=true $(docker node ls -q)
docker node update --label-add app=true $(docker node ls -q | tail -n +2)

# Deploy dos serviços
docker stack deploy -c docker-compose.yml microsservicos

# Verifica o status
docker service ls
docker node ps