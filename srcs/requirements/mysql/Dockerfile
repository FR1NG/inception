FROM debian:buster

ARG DB_NAME DB_USER DB_PASSWORD DB_ROOT_PASSWORD

ENV DB_USER=${DB_USER}
ENV DB_PASSWORD=${DB_PASSWORD}
ENV DB_ROOT_PASSWORD=${DB_ROOT_PASSWORD}
ENV DB_NAME=${DB_NAME}


ADD ./tools/init.sh /usr/bin/init

RUN apt update && apt install mariadb-server -y  \
&& chmod +x /usr/bin/init \ 
&& init

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

CMD [ "mysqld" ]