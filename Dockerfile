# docpad_ubuntu 
#
# VERSION       1.0
# Tested with Docker 0.7

# use the ubuntu base image provided by dotCloud
FROM ubuntu
MAINTAINER Florian Boulay florian.boulay@gmail.com

# Update base packages
RUN cat /etc/apt/sources.list
RUN echo "deb http://archive.ubuntu.com/ubuntu precise universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Install needed packages to run docpad (Git, nodejs and npm)
RUN apt-get install -y python-software-properties
RUN add-apt-repository ppa:richarvey/nodejs 
RUN add-apt-repository ppa:git-core/ppa
RUN apt-get update
RUN apt-get install -y npm nodejs=0.10.21* git

# install docpad and run it
RUN npm install docpad
ADD .docpad.cson /

WORKDIR /www
CMD ["/www/node_modules/docpad/bin/docpad", "run", "--env", "production"]
EXPOSE 9778