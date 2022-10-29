#!/bin/sh

service mysql start
mysql -u root < "/tools/init_query.sql"
# tobe viewd later
# echo "bind-address = wordpress" >> etc/mysql/mariadb.conf.d/50-server.cnf