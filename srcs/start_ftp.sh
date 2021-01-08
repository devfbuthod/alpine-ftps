#!/bin/sh

adduser -D "admin"
echo "admin:admin" | chpasswd

exec /usr/sbin/vsftpd -opasv_min_port=21000 -opasv_max_port=21010 -opasv_address="192.168.99.103" /etc/vsftpd/vsftpd.conf