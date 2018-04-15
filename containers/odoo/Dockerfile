FROM odoo:11
LABEL maintainer="Abel Greenwald"

EXPOSE 8069 8071

USER root

COPY ./files/odoo.conf /etc/odoo/odoo.conf

COPY ./files/listchanges.conf /etc/apt/listchanges.conf

RUN apt-get update > /dev/null

RUN apt-get -y install unattended-upgrades apt-listchanges

ADD data mnt/odoo/data/
ADD extra-addons mnt/odoo/extra-addons
ADD addons mnt/odoo/addons
