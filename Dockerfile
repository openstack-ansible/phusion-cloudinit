FROM phusion/baseimage:latest
MAINTAINER Mark Stillwell <mark@stillwell.me>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install cloud-init && \
    rm -rf /var/lib/apt/lists* /var/cache/apt/*

