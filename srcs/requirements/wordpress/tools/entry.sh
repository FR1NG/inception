#!/bin/sh

wp core config --allow-root --dbhost="$MYSQL_HOST" --dbname=wpdb --dbuser=hchakoub --dbpass=password
wp core install --allow-root --title=inception --admin_user=wpadm --admin_password=password --admin_email=email@email.com --url=10.11.43.62 --skip-email 

$@