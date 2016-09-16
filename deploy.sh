#!/bin/bash -x
# Used to deploy a new version of the website to the docker container

docker stop running_blog
./build.sh
./run.sh
