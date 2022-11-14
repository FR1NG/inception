FROM debian:buster

ADD ./tools/node_exporter.service /etc/systemd/system/node_exporter.service
ADD ./tools/install.sh /usr/bin/install
RUN chmod +x /usr/bin/install && install

ENTRYPOINT ["node_exporter"]