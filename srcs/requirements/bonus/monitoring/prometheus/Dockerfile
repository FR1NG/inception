FROM debian:buster

RUN apt update && apt install wget -y && apt install curl -y

COPY ./tools/install.sh /usr/bin/install
RUN chmod +x /usr/bin/install && install
COPY ./conf/prometheus.yml /etc/prometheus/prometheus.yml

CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml" ]