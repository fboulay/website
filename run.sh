#!/bin/bash -x
# used to  execute the website in a docker container. The exposed port 42042

docker run -d -p 127.0.0.1:42042:9778 -v $(pwd):/www fboulay/website_docpad
