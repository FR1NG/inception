FROM debian:buster

WORKDIR /var/www/html/

RUN apt update && apt install nginx -y
ADD conf/nginx.conf /etc/nginx/nginx.conf

CMD ["nginx"]
