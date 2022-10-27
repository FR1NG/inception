FROM debian:buster

# setting working directory
WORKDIR /data/www/html

# copy the config file 
COPY conf/wp-config.php /data/www/html/

# installing php and fpm
RUN apt update && apt install -y php7.3 \
&& apt install php7.3-fpm -y \
&& apt install php-mysql -y \
&& apt install curl -y \
&& curl https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/bin/wp-cli \
&& chmod +x /usr/bin/wp-cli \
&& wp-cli core download --allow-root 
# && wp-cli install --allow-root

COPY tests/index.html /data/www/html/

# runing fpm service
RUN service php7.3-fpm start

# runing fpm as root process
CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize"]
