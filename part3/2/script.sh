#!/bin/bash

DOCKER_USERNAME=$1
DOCKER_PASSWORD=$2

git clone https://github.com/juancasz/docker-hy.github.io
docker build -t juancaszz/devopswithdocker-exercise-3-2 docker-hy.github.io
docker login --username $DOCKER_USERNAME --password $DOCKER_PASSWORD
docker push juancaszz/devopswithdocker-exercise-3-2