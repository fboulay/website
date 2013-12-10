#!/bin/bash -x
# used to  execute the website in a docker container. The exposed port 42042

#docker run -p 42042:9778 -w www -v `pwd`:/www:ro fboulay/website_docpad
docker run -p 127.0.0.1:42042:9778 -v `pwd`:/www fboulay/website_docpad
