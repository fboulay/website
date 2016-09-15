# docpad_ubuntu 
#
# VERSION     1.1
# Tested with Docker 1.12

FROM docpad/docpad
MAINTAINER Florian Boulay <florian.boulay@gmail.com>

WORKDIR /app
ADD . /app
RUN npm install

ENTRYPOINT ["docpad", "run", "--env", "production"]
EXPOSE 9778