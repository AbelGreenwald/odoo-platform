FROM haproxy:1.8
LABEL maintainer="Abel Greenwald"

EXPOSE 8080 9000

RUN mkdir /var/lib/haproxy
RUN mkdir /run/haproxy

COPY files/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
