#!/bin/bash -x
# used to  execute the website in a docker container. The exposed port 9778
set -e

docker run -d -p 9778:9778 -v "$(pwd):/app:rw" --name running_blog fboulay/website_docpad:1.3
