FROM debian:buster


COPY ./bin/cadvisor /usr/bin/cadvisor

RUN chmod +x /usr/bin/cadvisor

CMD [ "cadvisor" ]