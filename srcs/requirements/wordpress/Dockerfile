FROM debian:buster

# setting working directory
WORKDIR /data/www/html

# copy tools
COPY ./tools /data/

# installing depes
RUN apt update \
&& apt install -y php7.3 \
&& apt install php7.3-fpm -y \
&& apt install php-mysql -y \
&& apt install mariadb-client -y \
&& chown -R www-data:www-data . \
&& apt install curl -y \
&& apt install htop -y\
&& curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/bin/wp \
&& chmod +x /usr/bin/wp \
&& wp core download --allow-root 

# copy configuration of fpm
COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

COPY ./tools/ /data/tools/

RUN service php7.3-fpm start

EXPOSE 9000

ENTRYPOINT [ "/data/tools/entry.sh" ]

# runing fpm as root process
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
