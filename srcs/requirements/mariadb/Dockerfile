FROM debian:buster

ARG DB_NAME
ARG DB_USER
ARG DB_PASSWORD
ARG DB_ROOT_PASSWORD

COPY ./tools/init.sh /usr/bin/init

RUN apt update \
&& apt install mariadb-server -y \
&& chmod +x /usr/bin/init \
&& init

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chown mysql:root /var/log/mysql

CMD [ "mysqld" ]