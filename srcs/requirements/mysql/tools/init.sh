#!/bin/sh

service mysql start 
mysql -u root  << EOF
    CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';
    CREATE DATABASE IF NOT EXISTS ${DB_NAME};
    GRANT ALL PRIVILEGES ON wpdbname.* TO '${DB_USER}'@'%';
    FLUSH PRIVILEGES;
EOF

service mysql stop

exec $@