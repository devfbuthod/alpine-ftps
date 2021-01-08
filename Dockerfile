FROM alpine:latest
MAINTAINER Fabien Buthod-Garcon

RUN apk add vsftpd openrc

COPY srcs/start_vsftpd.sh /bin/start_vsftpd.sh
COPY srcs/vsftpd.conf /etc/vsftpd/vsftpd.conf
RUN rc-update add vsftpd default

EXPOSE 21

ENTRYPOINT ["/bin/start_vsftpd.sh"]