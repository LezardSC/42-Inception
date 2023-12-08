FROM debian:bullseye

RUN apt-get -y update && \
	apt-get install -y mariadb-server

# HEALTHCHECK --start-period=5m \
# 	CMD mariadb -e 'SELECT @@datadir;' || exit 1

COPY conf/50-server.cnf \
	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY conf/mariadb.sh /

RUN chmod 777 /mariadb.sh

EXPOSE 3306

CMD ["bash", "/mariadb.sh"]