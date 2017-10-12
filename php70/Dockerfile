FROM debian:stretch
MAINTAINER David Jardin <d.jardin@djumla.de>

RUN apt-get update
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y software-properties-common git wget nodejs ntp php7.0 php-pear php7.0-mysql php7.0-dev php7.0-mcrypt php7.0-gd php7.0-curl php7.0-memcache php7.0-sqlite php7.0-intl php7.0-zip php7.0-xml php7.0-mbstring php7.0-bcmath php7.0-soap

RUN cd /tmp && \
    php -r "readfile('https://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer

RUN npm install -g bower
RUN npm install -g gulp