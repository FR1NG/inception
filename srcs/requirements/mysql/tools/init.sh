#!/bin/sh

service mysql start
mysql -u root < "/tools/init_query.sql"