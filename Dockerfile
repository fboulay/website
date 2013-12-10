# docpad_ubuntu 
#
# VERSION       1.0
# Tested with Docker 0.6 and 0.7

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
RUN apt-get install -y npm nodejs git

# install docpad and run it
#RUN npm install -g npm
RUN npm install -g docpad
#RUN git clone git://github.com/axyz/zurb-foundation.docpad.git
#RUN git clone https://github.com/balupton/website.git balupton
#RUN cd balupton && npm install
#RUN cd balupton && docpad generate --env static
#ADD . /www/

#USER www-data

WORKDIR /www
#ENTRYPOINT ["/www/node_modules/docpad/bin/docpad-server"]
CMD ["/www/node_modules/docpad/bin/docpad-server"]
EXPOSE 9778



#CMD ["/bin/bash"]

