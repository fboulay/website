# docpad_ubuntu 
#
# VERSION       1.1
# Tested with Docker 0.7

# use the ubuntu base image provided by dotCloud
FROM ubuntu:13.10
MAINTAINER Florian Boulay florian.boulay@gmail.com

# Update base packages
RUN cat /etc/apt/sources.list
#RUN echo "deb http://archive.ubuntu.com/ubuntu trusty universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y

# Install needed packages to run docpad (Git, nodejs and npm)
RUN apt-get install -y software-properties-common
#RUN add-apt-repository ppa:chris-lea/node.js
RUN add-apt-repository ppa:git-core/ppa
RUN apt-get update
RUN apt-get install -y nodejs=0.10* npm git #libfreetype6 libfontconfig1
RUN ln -s /usr/bin/nodejs /usr/local/bin/node

# Install Grunt
RUN npm install -g grunt-cli

# Install Docpad
RUN npm install -g docpad
#RUN apt-get install -y libfreetype6 fontconfig
RUN apt-get install -y libfontconfig1 fontconfig libfontconfig1-dev libfreetype6-dev net-tools
RUN echo "{\n  subscribed: false\n  subscribeTryAgain: false\n  tos: true\n  identified: true\n}" > ~/.docpad.cson


WORKDIR /www
CMD ["/www/node_modules/docpad/bin/docpad", "run", "--env", "production"]
EXPOSE 9778