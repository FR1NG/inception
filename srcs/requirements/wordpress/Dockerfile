FROM debian:buster

# setting working directory
WORKDIR /www/html

# installing php and fpm
RUN apt update && apt install -y php7.3 \
&& apt install php7.3-fpm -y \
&& apt install wget \
&& wget https://wordpress.org/latest.tar.gz \
&& tar -zxf latest.tar.gz \
&& mv wordpress/* . \
&& rm -rf wordpress latest.tar.gz \
&& chown -R www-data:www-data * \
&& chmod -R 755 *


# runing fpm service
RUN service php7.3-fpm start

# runing fpm as root process
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
