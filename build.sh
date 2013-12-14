#!/bin/bash -x
# Used once to create the docker image that can run docpad

docker build -rm -t fboulay/website_docpad .
