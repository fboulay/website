<!-- TITLE/ -->

# Source code of my [website](http://blog.boulay.eu)

<!-- /TITLE -->

This website is using static files that are generated using [DocPad](http://docpad.org).


## Install

### Install *using* Docker (Easy way)

#### 1\. Install Docker

See this [page](http://docs.docker.io/en/latest/installation/). The installation depends on the OS.

Note : to be able to use docker without being root, you should add your user to the _docker_ group.

#### 2\. Create the Docker image

```bash
./build.sh
```

#### 3\. Run the website in the Docker container

```bash
./run.sh
```

Go to http://localhost:42042 to browse the website.


### Install *without* Docker (Hard way)

#### 1\. Install NVM

Node Version Manager allow to install Node.js without being root.

```bash
# Ubuntu & Debian commands
$ apt-get install curl build-essential openssl libssl-dev git python
$ curl https://raw.github.com/creationix/nvm/master/install.sh | sh
```

This install script add a line to your *.profile* or *.bash_profile* file. Source this file or restart your terminal.

#### 2\. Install Node.js and NPM

Docpad needs Node.js in version 0.10.

```bash
# Install Node.js 0.10
$ nvm install v0.10

# Set the default version of Node.js
$ nvm use 0.10
```

#### 3\. Install Git

```bash
$ apt-get install git
```

#### 4\. Install Docpad

```bash
$ npm install -g docpad
```

#### 5\. Run the website

```bash
# In the source directory
$ docpad run
```

Then go to http://localhost:9778 to browse the website.

<!-- LICENSE/ -->

## License

Licensed under the incredibly [permissive](http://en.wikipedia.org/wiki/Permissive_free_software_licence) [MIT license](http://creativecommons.org/licenses/MIT/)

Copyright &copy 2013 Florian Boulay;

<!-- /LICENSE -->

