FROM debian:buster


ADD ./conf/ssl.conf /etc/ssl/config/ssl.conf

ADD ./tools/ /tools/nginx/

# installing 
RUN apt update && apt install nginx -y \
&& apt install openssl -y \
&& apt install vim -y \
&& /tools/nginx/ssl_setup.sh 

ADD conf/default /etc/nginx/sites-available/
ADD conf/nginx.conf /etc/nginx/nginx.conf

ADD ./tools/entry.sh /usr/bin/entry

RUN chmod +x /usr/bin/entry

ENTRYPOINT [ "entry" ]

# CMD ["nginx", "-g", "'daemon off;'"]