#!/bin/bash -x
# Used to deploy a new version of the website to the docker container
set -e

git fetch origin master
git reset --hard origin/master
DOCKER_CONTAINER=$(docker ps | grep website_docpad | awk '{print $1}')
docker stop $DOCKER_CONTAINER
./build.sh
./run.sh
