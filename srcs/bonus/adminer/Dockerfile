FROM debian:buster

RUN apt update && apt install adminer -y \
&& apt install php7.3-fpm -y \
&& apt install curl -y \
&& mkdir -p /var/www/adminer/ \
&& curl -L https://www.adminer.org/latest.php -o /var/www/adminer/index.php


ADD conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN service php7.3-fpm start

CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
