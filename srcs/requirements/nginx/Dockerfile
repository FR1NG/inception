FROM debian:buster

# installing 
RUN apt update && apt install nginx -y 

COPY conf/default /etc/nginx/sites-available

COPY ./tools/ /tools/nginx/

# RUN echo "daemon off;" >> /etc/nginx/conf.d/nginx.conf

ENTRYPOINT [ "/tools/nginx/init.sh" ]

# CMD ["nginx", "-g", "daemon off;"]