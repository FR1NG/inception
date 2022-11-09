FROM debian:buster

ARG DB_NAME DB_USER DB_PASSWORD DB_ROOT_PASSWORD

ENV DB_USER=${DB_USER}
ENV DB_PASSWORD=${DB_PASSWORD}
ENV DB_ROOT_PASSWORD=${DB_ROOT_PASSWORD}
ENV DB_NAME=${DB_NAME}


RUN apt update && apt install mariadb-server -y  

ADD ./tools/init.sh /usr/bin/init

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

RUN chmod +x /usr/bin/init

EXPOSE 3306

ENTRYPOINT [ "init" ]

CMD [ "mysqld" ]