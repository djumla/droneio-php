FROM ubuntu:trusty
MAINTAINER David Jardin <d.jardin@djumla.de>

RUN apt-get update
RUN apt-get -y install curl
RUN curl --silent --location https://deb.nodesource.com/setup_4.x | bash -
RUN apt-get -y install nodejs