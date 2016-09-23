#!/bin/bash -x
# Used to deploy a new version of the website to the docker container

if [[ $(docker inspect -f {{.State.Running}} running_blog) == 'true' ]];
then
  docker stop running_blog
fi

./build.sh
./run.sh
