# docpad_ubuntu 
#
# VERSION     1.2
# Tested with Docker 1.6

FROM node:6.5
MAINTAINER Florian Boulay <florian.boulay@gmail.com>

# Install DocPad globally.
RUN npm install -g docpad

# DocPad authentication
RUN echo "{\n  subscribed: false\n  subscribeTryAgain: false\n  tos: true\n  identified: true\n}" > ~/.docpad.cson

WORKDIR /app
ADD . /app
RUN npm install

ENTRYPOINT ["docpad", "run", "--env", "production"]
EXPOSE 9778