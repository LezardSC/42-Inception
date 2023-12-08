FROM debian:bullseye

# RUN apt-get update && apt-get install -y wget

RUN apt-get install -y php7.3 \
	php-fpm \
	php-mysql

RUN mkdir /var/www/html

COPY wordpress/php-fpm.conf /etc/php/7.4/fpm/pool.d/www.conf

EXPOSE 9000

CMD ["php-fpm"]

#	mariadb-client

# RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz -P /var/www