FROM mgcrea/supervisord-build:latest
MAINTAINER Olivier Louvignes <olivier@mgcrea.io>

# Install base packages
RUN apt-get update \
 && apt-get install -y nano vim software-properties-common python-yaml python-jinja2 python-apt git iputils-ping curl rsync \
 && rm -rf /var/lib/apt/lists/*
