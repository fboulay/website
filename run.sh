#!/bin/bash -x
# used to  execute the website in a docker container. The exposed port 42042

DAEMON=

if [[ $1 == "-d" ]] 
	then DAEMON="-d"
fi

docker run $DAEMON -p 127.0.0.1:42042:9778 -v $(pwd):/www fboulay/website_docpad
