FROM haproxy:2.1-alpine
LABEL maintainer="Abel Greenwald"

EXPOSE 8080 9000

RUN mkdir /var/lib/haproxy
RUN mkdir /run/haproxy

COPY ./files/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
