#!/bin/bash -x
# used to  execute the website in a docker container. The exposed port 9778

docker run -d -p 9778 fboulay/website_docpad
