#!/bin/sh

wp core config --allow-root --dbhost="$MYSQL_HOST" --dbname=wpdb --dbuser=hchakoub --dbpass=password
wp core install --allow-root --title=inception --admin_user=wpadm --admin_password=password --admin_email=email@email.com --url=10.12.177.178 --skip-email 

#installing and enabling redis plugin
wp plugin install redis-cache --allow-root
wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PASSWORD RedisPassword --allow-root
wp plugin activate redis-cache --allow-root
wp redis enable --allow-root

$@