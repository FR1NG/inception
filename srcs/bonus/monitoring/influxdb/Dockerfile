FROM debian:buster

COPY ./tools/init.sh /usr/bin/init_image

RUN chmod +x /usr/bin/init_image && init_image

CMD [ "tail", "-f", "/dev/null" ]