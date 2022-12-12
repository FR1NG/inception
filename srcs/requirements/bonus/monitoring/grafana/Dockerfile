FROM debian:buster


RUN apt update && apt install -y apt-transport-https  && apt install curl -y\
&& apt install -y software-properties-common wget \
&& wget -q -O /usr/share/keyrings/grafana.key https://apt.grafana.com/gpg.key \
&& echo "deb [signed-by=/usr/share/keyrings/grafana.key] https://apt.grafana.com stable main" | tee -a /etc/apt/sources.list.d/grafana.list \
&& apt update \
&& apt install grafana -y

COPY ./conf/grafana.ini /usr/share/grafana/conf/defaults.ini
COPY ./tools/provisioning/ /usr/share/grafana/conf/provisioning/
COPY ./tools/dashboards/ /var/lib/grafana/dashboards/

CMD ["grafana-server", "-homepath", "/usr/share/grafana"]