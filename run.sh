#!/bin/bash -x
# used to  execute the website in a docker container. The exposed port 42042

#docker run -p 42042:9778 -w www -v `pwd`:/www:ro fboulay/website_docpad
CUR_DIR=`pwd`

docker run -p 127.0.0.1:42042:9778 -v ${CUR_DIR}:/www fboulay/website_docpad
