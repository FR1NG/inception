#!/bin/sh

# wp core is-installed --allow-root
# if [ $? -eq 1 ]; then
    wp core download --allow-root
    wp core config --allow-root --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD}
    wp core install --allow-root --title=${WP_TITLE} --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=${WP_ADMIN_EMAIL} --url=${WP_URL} --skip-email 

    # creating autor user
    wp user create ${WP_USER} ${WP_USER_EMAIL} --role=author --user_pass=${WP_USER_PASSWORD} --allow-root

    #installing and enabling redis plugin
    wp plugin install redis-cache --allow-root
    wp config set WP_REDIS_HOST redis --allow-root
    # wp config set WP_REDIS_PASSWORD RedisPassword --allow-root
    wp plugin activate redis-cache --allow-root
    wp redis enable --allow-root
# fi
$@