#!/bin/bash -x
# used to  execute the website in a docker container. The exposed port 9778
set -e

docker run -d -p 9778:9778 --name running_blog blog
