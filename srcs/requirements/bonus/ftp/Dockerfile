FROM debian:buster

RUN apt update && apt install vsftpd -y

ADD ./conf/vsftpd.conf /etc/vsftpd.conf
ADD ./tools/entry.sh /usr/bin/entry

RUN chmod +x /usr/bin/entry

RUN mkdir -p /data/www/html

ENTRYPOINT [ "entry" ]

CMD [ "vsftpd" ]
