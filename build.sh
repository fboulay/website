#!/bin/bash -x
# Used once to create the docker image that can run docpad
set -e

docker build --rm -t blog .
