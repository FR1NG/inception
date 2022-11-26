FROM debian:buster

RUN apt update && apt install mariadb-server -y 

COPY ./tools/init.sh /usr/bin/init

RUN chmod +x /usr/bin/init

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

RUN chown mysql:root /var/log/mysql

EXPOSE 3306

# ENTRYPOINT [ "init" ]

CMD [ "mysqld" ]