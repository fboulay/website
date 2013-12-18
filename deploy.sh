#!/bin/bash -x
# Used to deploy a new version of the website to the docker container

git reset --hard origin/master
git pull origin master
