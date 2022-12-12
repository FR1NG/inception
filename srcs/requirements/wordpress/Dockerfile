FROM debian:buster

# setting working directory
WORKDIR /data/www/html

# installing depes
RUN apt update \
&& apt install -y php7.3 \
&& apt install php7.3-fpm -y \
&& apt install php7.3-mysql -y \
&& apt install mariadb-client -y \
&& chown -R www-data:www-data . \
&& apt install curl -y \
&& apt install htop -y\
&& curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/bin/wp \
&& chmod +x /usr/bin/wp \
&& apt install php7.3-redis -y

# copy configuration of fpm
ADD conf/www.conf /etc/php/7.3/fpm/pool.d/

ADD ./tools/entry.sh /usr/bin/entry

RUN chmod +x /usr/bin/entry

RUN service php7.3-fpm start

ENTRYPOINT [ "entry" ]

# runing fpm as root process
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
