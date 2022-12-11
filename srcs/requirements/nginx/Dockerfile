FROM debian:buster

ADD ./tools/ /tools/nginx/

# installing 
RUN apt update && apt install nginx -y \
&& apt install openssl -y \
&& apt install vim -y \
&& openssl req -x509 -nodes -days 36500 -newkey rsa:2048 -subj "/C=MA/L=benguerir/O=1337/CN=hchakoub.42.fr" -keyout /etc/ssl/private/hchakoub.42.fr.key  -out /etc/ssl/certs/hchakoub.42.fr.crt

ADD conf/domains/ /etc/nginx/sites-available/
ADD conf/nginx.conf /etc/nginx/nginx.conf

ADD ./tools/entry.sh /usr/bin/entry

RUN chmod +x /usr/bin/entry

ENTRYPOINT [ "entry" ]

CMD ["nginx"]

