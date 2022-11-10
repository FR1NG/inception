#!/bin/sh

service mysql start 

mysqladmin -u root password ${DB_ROOT_PASSWORD}
mysql -u root --password=${DB_ROOT_PASSWORD} << EOF
    CREATE USER ${DB_USER} IDENTIFIED BY ${DB_PASSWORD};
    CREATE database ${DB_NAME};
    GRANT ALL PRIVILEGES ON wpdbname.* TO ${DB_USER};
    FLUSH PRIVILEGES;
EOF
$@