FROM ubuntu:trusty
MAINTAINER David Jardin <d.jardin@djumla.de>

RUN apt-get update
RUN apt-get install -y software-properties-common git wget curl nodejs npm ntp
RUN apt-get install --reinstall ca-certificates
RUN locale-gen en_US.UTF-8
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php -y
RUN apt-get update

RUN apt-get install -y php5.6 php-pear php-memcache

RUN cd /tmp && \
    php -r "readfile('https://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer

RUN npm install -g bower
RUN npm install -g gulp