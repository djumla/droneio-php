FROM ubuntu:trusty
MAINTAINER David Jardin <d.jardin@djumla.de>

RUN apt-get update
RUN apt-get install -y software-properties-common git wget curl nodejs npm ntp
RUN apt-get install --reinstall ca-certificates
RUN locale-gen en_US.UTF-8
RUN LC_ALL=en_US.UTF-8 add-apt-repository ppa:ondrej/php -y
RUN apt-get update

RUN apt-get install -y php5.6 php-pear php5.6-mysql php5.6-dev php5.6-mcrypt php5.6-gd php5.6-curl php5.6-memcache php5.6-sqlite php5.6-intl php5.6-zip php5.6-xml php5.6-mbstring php5.6-bcmath php5.6-soap

RUN update-alternatives --set php /usr/bin/php5.6

RUN cd /tmp && \
    php -r "readfile('https://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer

RUN npm install -g bower
RUN npm install -g gulp