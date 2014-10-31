FROM phusion/baseimage:latest
MAINTAINER Mark Stillwell <mark@stillwell.me>

RUN mkdir -p /etc/my_init.d
COPY scripts/setkey.sh  /etc/my_init.d/10-setkey
RUN chmod 755 /etc/my_init.d/10-setkey
