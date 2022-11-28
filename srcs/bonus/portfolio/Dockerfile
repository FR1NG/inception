FROM debian:buster

WORKDIR /var/www/html/

RUN apt update && apt install nodejs -y \
&& apt install npm -y \
&& npm init -y \
&& npm install express

COPY ./src .

CMD [ "node", "/var/www/html/index.js" ]

# CMD [ "tail", "-f", "/dev/null" ]