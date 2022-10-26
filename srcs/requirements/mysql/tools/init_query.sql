-- create user
CREATE USER 'hchakoub'@'localhost' IDENTIFIED BY 'password';

-- create database
CREATE database wpdb;

-- grant privilages for user;
GRANT ALL PRIVILEGES ON wpdb.* TO 'hchakoub'@'localhost';