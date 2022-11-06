FROM debian:buster

RUN apt update && apt install vsftpd -y

ADD ./conf/vsftpd.conf /etc/vsftpd.conf


CMD [ "vsftpd" ]
# CMD [ "tail", "-f", "/dev/null" ]