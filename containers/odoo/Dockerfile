FROM odoo:11
LABEL maintainer="Abel Greenwald"

EXPOSE 8069 8071
USER root

RUN apt-get update && \
    apt-get -y install unattended-upgrades apt-listchanges

COPY ./files/odoo.conf /etc/odoo/odoo.conf
COPY ./files/listchanges.conf /etc/apt/listchanges.conf
