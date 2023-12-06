FROM debian:bullseye

RUN apt-get -y update && apt-get -y install wget

RUN apt-get -y install php7.3 \
	php-fpm \
	php-mysql
#	mariadb-client

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www