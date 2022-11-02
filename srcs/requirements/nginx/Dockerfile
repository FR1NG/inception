FROM debian:buster


COPY ./conf/ssl.conf /etc/ssl/config/ssl.conf

COPY ./tools/ /tools/nginx/

# installing 
RUN apt update && apt install nginx -y \
&& apt install openssl -y \
&& apt install vim -y \
&& /tools/nginx/ssl_setup.sh 
# && openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/hchakoub.42.fr.key -out /etc/ssl/certs/hchakoub.42.fr.crt -config /etc/ssl/config/ssl.conf -passin pass:YourStrongPassword

COPY conf/default /etc/nginx/sites-available

ENTRYPOINT [ "/tools/nginx/init.sh" ]

# CMD ["nginx", "-g", "'daemon off;'"]