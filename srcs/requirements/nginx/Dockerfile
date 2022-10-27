FROM debian:buster

# installing 
RUN apt update && apt install nginx -y 

COPY conf/default /etc/nginx/sites_available

# # this line only for test
COPY test/ /www/html

CMD ["nginx", "-g", "daemon off;"]