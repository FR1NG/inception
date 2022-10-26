FROM debian:buster

COPY ./tools /tools
RUN apt update && apt install mariadb-server -y  && /tools/init.sh

CMD [ "mysqld_safe" ]