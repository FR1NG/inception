#!/bin/bash

USEREXIST=$(awk -F: '{ print $1}' /etc/passwd | grep hchakoub | wc -l)


if [ $USEREXIST -eq 0 ] ; then

    useradd -m -p ${FTP_PASSWORD}  ${FTP_USER}
    echo -e "${FTP_PASSWORD}\n${FTP_PASSWORD}" | passwd  ${FTP_USER}
    echo -e "${FTP_ROOT_PASSWORD}\n${FTP_ROOT_PASSWORD}" | passwd  root
    echo ${FTP_USER} >> /etc/vsftpd.userlist
fi
$@