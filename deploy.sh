#!/bin/bash -x
# Used to deploy a new version of the website to the docker container

git pull origin master
git reset --hard origin/master
