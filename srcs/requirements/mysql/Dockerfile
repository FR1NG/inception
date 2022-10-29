FROM debian:buster

COPY ./tools /tools

RUN apt update && apt install mariadb-server -y  && /tools/init.sh

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

EXPOSE 3306

CMD [ "mysqld" ]