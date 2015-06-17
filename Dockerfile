FROM ubuntu:trusty
MAINTAINER David Jardin <d.jardin@djumla.de>

RUN apt-get update
RUN apt-get install -y python-software-properties git wget curl
RUN add-apt-repository ppa:ondrej/php5-5.6 -y
RUN apt-get update

RUN apt-get install -y php5 php5-cli php-pear php5-mysql php5-dev php5-mcrypt php5-gd php5-curl php5-memcache php5-sqlite

RUN sed -i -e "s/^max_execution_time\s*=.*/max_execution_time = 200/" \
-e "s/^post_max_size\s*=.*/post_max_size = 10G/" \
-e "s/^upload_max_filesize\s*=.*/upload_max_filesize = 10G\nupload_max_size = 10G/" \
-e "s/^memory_limit\s*=.*/memory_limit = 256M/" /etc/php5/fpm/php.ini

RUN cd /tmp && \
    php -r "readfile('https://getcomposer.org/installer');" | php && \
    mv composer.phar /usr/local/bin/composer