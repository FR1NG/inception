#!/bin/sh

service mysql start 
mysql -u root --password=root << EOF
    CREATE USER 'dbuser'@'%' IDENTIFIED BY 'dbpassword';
    CREATE database wpdbname;
    GRANT ALL PRIVILEGES ON wpdbname.* TO 'dbuser'@'%';
    ALTER USER 'root'@'localhost' IDENTIFIED BY 'rootpassword';
    FLUSH PRIVILEGES;
EOF
$@