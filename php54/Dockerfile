FROM ubuntu:trusty
MAINTAINER David Jardin <d.jardin@djumla.de>

RUN apt-get update
RUN apt-get install -y software-properties-common git wget curl nodejs npm
RUN locale-gen en_US.UTF-8
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php5-oldstable -y
RUN apt-get update

RUN apt-get install -y php5-cli php-pear php5-mysql php5-dev php5-mcrypt php5-gd php5-curl php5-memcache php5-sqlite php5-intl

RUN cd /tmp && \
    php -r "readfile('https://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer

RUN npm install -g bower
RUN npm install -g gulp