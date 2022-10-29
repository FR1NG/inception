FROM debian:buster

# installing 
RUN apt update && apt install nginx -y 

COPY conf/default /etc/nginx/sites-available

# # this line only for test
# COPY test/ /data/www/html
RUN mkdir -p /data/logs
RUN touch /data/logs/nginx-access.log
CMD ["nginx", "-g", "daemon off;"]