#!/bin/sh

mkdir -p /logs/nginx
touch /logs/nginx/nginx-access.log

chown -R www-data:www-data /data

exec $@