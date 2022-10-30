#!/bin/sh



wp-cli core config --allow-root --dbhost="$MYSQL_HOST" --dbname=wpdb --dbuser=hchakoub --dbpass=password
wp-cli core install --allow-root --title=inception --admin_user=wpadm --admin_password=password --admin_email=email@email.com --url=hchakoub.42.fr --skip-email



exec "$@"
