#!/bin/bash -x
# Used once to create the docker image that can run docpad

docker build -rm -no-cache -t fboulay/website_docpad .
