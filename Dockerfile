FROM phusion/baseimage:latest
MAINTAINER Mark Stillwell <mark@stillwell.me>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install cloud-init && \
    rm -rf /var/lib/apt/lists/* /var/cache/apt/*

RUN mkdir -p /etc/my_init.d && \
    touch /etc/growroot-disabled && \
    echo '#!/bin/sh\n/usr/bin/cloud-init init' > \
        /etc/my_init.d/10-cloud-init && \
    chmod 755 /etc/my_init.d/10-cloud-init
